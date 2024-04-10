package Translate;
import Symbol.Symbol;
import Tree.BINOP;
import Tree.CJUMP;
import Temp.Temp;
import Temp.Label;

public class Translate {
  public Frame.Frame frame;
  public Translate(Frame.Frame f) {
    frame = f;
  }
  private Frag frags;
  public void procEntryExit(Level level, Exp body) {
    Frame.Frame myframe = level.frame;
    Tree.Exp bodyExp = body.unEx();
    Tree.Stm bodyStm;
    if (bodyExp != null)
      bodyStm = MOVE(TEMP(myframe.RV()), bodyExp);
    else
      bodyStm = body.unNx();
    ProcFrag frag = new ProcFrag(myframe.procEntryExit1(bodyStm), myframe);
    frag.next = frags;
    frags = frag;
  }
  public Frag getResult() {
    return frags;
  }

  private static Tree.Exp CONST(int value) {
    return new Tree.CONST(value);
  }
  private static Tree.Exp NAME(Label label) {
    return new Tree.NAME(label);
  }
  private static Tree.Exp TEMP(Temp temp) {
    return new Tree.TEMP(temp);
  }
  private static Tree.Exp BINOP(int binop, Tree.Exp left, Tree.Exp right) {
    return new Tree.BINOP(binop, left, right);
  }
  private static Tree.Exp MEM(Tree.Exp exp) {
    return new Tree.MEM(exp);
  }
  private static Tree.Exp CALL(Tree.Exp func, Tree.ExpList args) {
    return new Tree.CALL(func, args);
  }
  private static Tree.Exp ESEQ(Tree.Stm stm, Tree.Exp exp) {
    if (stm == null)
      return exp;
    return new Tree.ESEQ(stm, exp);
  }

  private static Tree.Stm MOVE(Tree.Exp dst, Tree.Exp src) {
    return new Tree.MOVE(dst, src);
  }
  private static Tree.Stm EXP(Tree.Exp exp) {
    return new Tree.UEXP(exp);
  }
  private static Tree.Stm JUMP(Label target) {
    return new Tree.JUMP(target);
  }
  private static
    Tree.Stm CJUMP(int relop, Tree.Exp l, Tree.Exp r, Label t, Label f) {
      return new Tree.CJUMP(relop, l, r, t, f);
    }
  private static Tree.Stm SEQ(Tree.Stm left, Tree.Stm right) {
    if (left == null)
      return right;
    if (right == null)
      return left;
    return new Tree.SEQ(left, right);
  }
  private static Tree.Stm LABEL(Label label) {
    return new Tree.LABEL(label);
  }

  private static Tree.ExpList ExpList(Tree.Exp head, Tree.ExpList tail) {
    return new Tree.ExpList(head, tail);
  }
  private static Tree.ExpList ExpList(Tree.Exp head) {
    return ExpList(head, null);
  }
  private static Tree.ExpList ExpList(ExpList exp) {
    if (exp == null)
      return null;
    return ExpList(exp.head.unEx(), ExpList(exp.tail));
  }

  public Exp Error() {
    return new Ex(CONST(0));
  }

  public Exp SimpleVar(Access access, Level level) {
    Tree.Exp fp = TEMP(level.frame.FP());
    for (Level l = level; l != access.home; l = l.parent)
      fp = l.frame.formals.head.exp(fp);
    return new Ex(access.acc.exp(fp));
  }

  public Exp FieldVar(Exp record, int index) {
    Label bad = frame.badPtr();
    Label ok = new Label();
    Temp r = new Temp();
    index *= frame.wordSize();
    return new Ex
      (ESEQ(SEQ(MOVE(TEMP(r), record.unEx()),
                SEQ(CJUMP(CJUMP.EQ, TEMP(r), CONST(0), bad, ok),
                  LABEL(ok))),
            MEM(BINOP(BINOP.PLUS, TEMP(r), CONST(index)))));
  }

  public Exp SubscriptVar(Exp array, Exp index) {
    Label bad = frame.badSub();
    Label check = new Label();
    Label ok = new Label();
    Temp a = new Temp();
    Temp i = new Temp();
    int size = frame.wordSize();
    return new Ex
      (ESEQ
       (SEQ
        (MOVE(TEMP(a), array.unEx()),
         SEQ(MOVE(TEMP(i), index.unEx()),
           SEQ(CJUMP(CJUMP.LT, TEMP(i), CONST(0), bad, check),
             SEQ(LABEL(check),
               SEQ(CJUMP(CJUMP.GT, TEMP(i),
                   MEM(BINOP(BINOP.PLUS, TEMP(a), CONST(-size))),
                   bad, ok),
                 LABEL(ok)))))),
        MEM(BINOP(BINOP.PLUS, TEMP(a),
            BINOP(BINOP.MUL, TEMP(i), CONST(size))))));
  }

  public Exp NilExp() {
    return new Ex(CONST(0));
  }

  public Exp IntExp(int value) {
    return new Ex(CONST(value));
  }

  private java.util.Hashtable<String, Label> strings = new java.util.Hashtable<String, Label>();
  public Exp StringExp(String lit) {
    String u = lit.intern();
    Label lab = strings.get(u);
    if (lab == null) {
      lab = new Label();
      strings.put(u, lab);
      DataFrag frag = new DataFrag(frame.string(lab, u));
      frag.next = frags;
      frags = frag;
    }
    return new Ex(NAME(lab));
  }

  private Tree.Exp CallExp(Symbol f, ExpList args, Level from) {
    return frame.externalCall(f.toString(), ExpList(args));
  }
  private Tree.Exp CallExp(Level f, ExpList args, Level from) {
    Tree.Exp fp = TEMP(from.frame.FP());
    if (f.parent != from)
      for (Level l = from; l != f.parent; l = l.parent)
        fp = l.frame.formals.head.exp(fp);
    return CALL(NAME(f.frame.name), ExpList(fp, ExpList(args))) ;
  }

  public Exp FunExp(Symbol f, ExpList args, Level from) {
    return new Ex(CallExp(f, args, from));
  }
  public Exp FunExp(Level f, ExpList args, Level from) {
    return new Ex(CallExp(f, args, from));
  }
  public Exp ProcExp(Symbol f, ExpList args, Level from) {
    return new Nx(EXP(CallExp(f, args, from)));
  }
  public Exp ProcExp(Level f, ExpList args, Level from) {
    return new Nx(EXP(CallExp(f, args, from)));
  }

  public Exp OpExp(int op, Exp left, Exp right) {
    switch(op) {
      case Absyn.OpExp.PLUS:
        return new Ex(BINOP(BINOP.PLUS,  left.unEx(), right.unEx()));
      case Absyn.OpExp.MINUS:
        return new Ex(BINOP(BINOP.MINUS, left.unEx(), right.unEx()));
      case Absyn.OpExp.MUL:
        return new Ex(BINOP(BINOP.MUL,   left.unEx(), right.unEx()));
      case Absyn.OpExp.DIV:
        return new Ex(BINOP(BINOP.DIV,   left.unEx(), right.unEx()));
      case Absyn.OpExp.LT:
        return new RelCx(CJUMP.LT, left.unEx(), right.unEx());
      case Absyn.OpExp.LE:
        return new RelCx(CJUMP.LE, left.unEx(), right.unEx());
      case Absyn.OpExp.GT:
        return new RelCx(CJUMP.GT, left.unEx(), right.unEx());
      case Absyn.OpExp.GE:
        return new RelCx(CJUMP.GE, left.unEx(), right.unEx());
      case Absyn.OpExp.EQ:
        return new RelCx(CJUMP.EQ, left.unEx(), right.unEx());
      case Absyn.OpExp.NE:
        return new RelCx(CJUMP.NE, left.unEx(), right.unEx());
      default:
        throw new Error("Translate.OpExp");
    }
  }

  public Exp StrOpExp(int op, Exp left, Exp right) {
    Tree.Exp cmp = frame.externalCall("strcmp",
        ExpList(left.unEx(),
          ExpList(right.unEx())));
    switch(op) {
      case Absyn.OpExp.GT:
        return new RelCx(CJUMP.GT, cmp, CONST(0));
      case Absyn.OpExp.LT:
        return new RelCx(CJUMP.LT, cmp, CONST(0));
      case Absyn.OpExp.GE:
        return new RelCx(CJUMP.GE, cmp, CONST(0));
      case Absyn.OpExp.LE:
        return new RelCx(CJUMP.LE, cmp, CONST(0));
      case Absyn.OpExp.EQ:
        return new RelCx(CJUMP.EQ, cmp, CONST(0));
      case Absyn.OpExp.NE:
        return new RelCx(CJUMP.NE, cmp, CONST(0));
      default:
        throw new Error("Translate.StrOpExp");
    }
  }

  public Exp RecordExp(ExpList init) {
    int size = 0;
    for (ExpList exp = init; exp != null; exp = exp.tail)
      ++size;
    Temp r = new Temp();
    return new Ex
      (ESEQ(SEQ(MOVE(TEMP(r), frame.externalCall("allocRecord",
                                                 ExpList(CONST(size)))),
                initRecord(r, 0, init, frame.wordSize())),
            TEMP(r)));
  }
  private Tree.Stm initRecord(Temp r, int i, ExpList init, int wordSize) {
    if (init == null)
      return null;
    return
      SEQ(MOVE(MEM(BINOP(BINOP.PLUS, TEMP(r), CONST(i))), init.head.unEx()),
          initRecord(r, i + wordSize, init.tail, wordSize));
  }

  public Exp SeqExp(ExpList e) {
    if (e == null)
      return new Nx(null);
    Tree.Stm stm = null;
    for (; e.tail != null; e = e.tail)
      stm = SEQ(stm, e.head.unNx());
    Tree.Exp result = e.head.unEx();
    if (result == null)
      return new Nx(SEQ(stm, e.head.unNx()));
    return new Ex(ESEQ(stm, result));
  }

  public Exp AssignExp(Exp lhs, Exp rhs) {
    return new Nx(MOVE(lhs.unEx(), rhs.unEx()));
  }

  public Exp IfExp(Exp cc, Exp aa, Exp bb) {
    return new IfThenElseExp(cc, aa, bb);
  }

  public Exp WhileExp(Exp test, Exp body, Label done) {
    Label c = new Label();
    Label b = new Label();
    return new Nx(SEQ(SEQ(SEQ(LABEL(c), test.unCx(b, done)),
            SEQ(SEQ(LABEL(b), body.unNx()), JUMP(c))),
          LABEL(done)));
  }

  public Exp ForExp(Access i, Exp lo, Exp hi, Exp body, Label done) {
    Label b = new Label();
    Label inc = new Label();
    Temp limit = new Temp();
    Temp home = i.home.frame.FP();
    return new Nx
      (SEQ
       (SEQ
        (SEQ(SEQ(MOVE(i.acc.exp(TEMP(home)), lo.unEx()),
                 MOVE(TEMP(limit), hi.unEx())),
             CJUMP(CJUMP.LE, i.acc.exp(TEMP(home)), TEMP(limit), b, done)),
         SEQ(SEQ
           (SEQ(LABEL(b), body.unNx()),
            CJUMP(CJUMP.LT, i.acc.exp(TEMP(home)), TEMP(limit), inc, done)),
           SEQ(SEQ(LABEL(inc),
               MOVE(i.acc.exp(TEMP(home)),
                 BINOP(BINOP.PLUS, i.acc.exp(TEMP(home)), CONST(1)))),
             JUMP(b)))),
        LABEL(done)));
  }

  public Exp BreakExp(Label done) {
    return new Nx(JUMP(done));
  }

  public Exp LetExp(ExpList lets, Exp body) {
    Tree.Stm stm = null;
    for (ExpList e = lets; e != null; e = e.tail)
      stm = SEQ(stm, e.head.unNx());
    Tree.Exp result = body.unEx();
    if (result == null)
      return new Nx(SEQ(stm, body.unNx()));
    return new Ex(ESEQ(stm, result));
  }

  public Exp ArrayExp(Exp size, Exp init) {
    return new Ex
      (frame.externalCall("initArray",
                          ExpList(size.unEx(), ExpList(init.unEx()))));
  }

  public Exp VarDec(Access a, Exp init) {
    return new Nx(MOVE(a.acc.exp(TEMP(a.home.frame.FP())), init.unEx()));
  }

  public Exp TypeDec() {
    return new Nx(null);
  }

  public Exp FunctionDec() {
    return new Nx(null);
  }
}
