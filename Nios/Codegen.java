package Nios;
import Temp.Temp;
import Temp.TempList;
import Temp.Label;
import Temp.LabelList;
import java.util.Hashtable;

public class Codegen {
  NiosFrame frame;
  public Codegen(NiosFrame f) {frame = f;}

  private Assem.InstrList ilist = null, last = null;

  private void emit(Assem.Instr inst) {
    if (last != null)
      last = last.tail = new Assem.InstrList(inst, null);
    else {
      if (ilist != null)
        throw new Error("Codegen.emit");
      last = ilist = new Assem.InstrList(inst, null);
    }
  }

  Assem.InstrList codegen(Tree.Stm s) {
    munchStm(s);
    Assem.InstrList l = ilist;
    ilist = last = null;
    return l;
  }

  // make sure constant value and not more than 16 bits
  private static Tree.CONST CONST16(Tree.Exp e) {
    if (e instanceof Tree.CONST) {
      Tree.CONST c = (Tree.CONST)e;
      int value = c.value;
      if (value == (short)value)
        return c;
    }
    return null;
  }

  // commute means that the expression does not
  // have side effects on future expressions (ie. constants)
  private static boolean commute(Tree.BINOP e) {
    Tree.CONST left = CONST16(e.left);
    Tree.CONST right = CONST16(e.right);
    if (left == null)
      return right != null;
    if (right == null) {
      e.left = e.right;
      e.right = left;
    }
    return true;
  }

  static Assem.Instr OPER(String a, TempList d, TempList s, LabelList j) {
    return new Assem.OPER("\t" + a, d, s, j);
  }
  static Assem.Instr OPER(String a, TempList d, TempList s) {
    return new Assem.OPER("\t" + a, d, s);
  }
  static Assem.Instr MOVE(String a, Temp d, Temp s) {
    return new Assem.MOVE("\t" + a, d, s);
  }
  static TempList L(Temp h) {
    return new TempList(h, null);
  }
  static TempList L(Temp h, TempList t) {
    return new TempList(h, t);
  }
  static LabelList L(Label h, LabelList t) {
    return new LabelList(h, t);
  }
  static LabelList L(Label h) {
    return new LabelList(h, null);
  }

  void munchStm(Tree.Stm s) {
    if (s instanceof Tree.MOVE)
      munchStm((Tree.MOVE)s);
    else if (s instanceof Tree.UEXP)
      munchStm((Tree.UEXP)s);
    else if (s instanceof Tree.JUMP)
      munchStm((Tree.JUMP)s);
    else if (s instanceof Tree.CJUMP)
      munchStm((Tree.CJUMP)s);
    else if (s instanceof Tree.LABEL)
      munchStm((Tree.LABEL)s);
    else
      throw new Error("Codegen.munchStm");
  }

  boolean isFP(Tree.Exp exp) {
    if (exp instanceof Tree.TEMP && ((Tree.TEMP) exp).temp == frame.FP)
      return true;
    return false;
  }

  void munchStm(String op, Temp src1, Tree.MEM mem) {

    // MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
    if (mem.exp instanceof Tree.BINOP && IBINOP[((Tree.BINOP) mem.exp).binop].equals("addi") && commute((Tree.BINOP) mem.exp)) {
        // constant value
        Tree.CONST val = (Tree.CONST) ((Tree.BINOP) mem.exp).right;
        String offset = String.valueOf(val.value);

        // if temp, we need to check if it is FP (we don't need to
        // create new temp since this is a ldw or stw op)
        if (isFP(((Tree.BINOP) mem.exp).left))
          emit(OPER(op + " `s0, " + val.value + "+"+ frame.name + "_framesize" + "(`s1)",
            null, L(src1, L(frame.SP))));
        // this is the instr for binop with const and any other expression (will return temp)
        else
          emit(OPER(op + " `s0, " + val.value + "(`s1)",
            null, L(src1, L(munchExp(((Tree.BINOP) mem.exp).left)))));
      }

      // MOVE(MEM(CONST(c)), e2)
      else if (mem.exp instanceof Tree.CONST) {
        Tree.CONST c = (Tree.CONST) mem.exp;
        emit(OPER(op + " `s0, " + c.value,
          null, L(src1, null)));
      }

      // MOVE(MEM(e1), e2)
      // note: eq could be binop, but it does not commute,
      // so we will not be able to make a bigger tile since
      // we need to write put the val in a new temp
      else  {
        emit(OPER(op + " `s0, (`s1)",
          null, L(src1, L(munchExp((mem.exp))))));
      }
  }

  // move something not in mem to temp
  void munchStm(Tree.TEMP temp, Tree.Exp exp) {
    Temp dst = temp.temp;
    Temp src = munchExp(exp);

    // if trying to store in the same temp, ignore instruction
    if (dst != src)
      emit(MOVE("mov `d0, `s0", dst, src));
}

  void munchStm(Tree.MOVE s) {

    // case: storeword exp
    if (s.dst instanceof Tree.MEM)
      munchStm("stw", munchExp(s.src), (Tree.MEM) s.dst);
    // case: ldw expression
    else if (s.src instanceof Tree.MEM)
      munchStm("ldw", munchExp(s.dst), (Tree.MEM) s.src);
    // case: move (since we already checked for mems)
    else if (s.dst instanceof Tree.TEMP)
      munchStm((Tree.TEMP)s.dst, s.src);
    else
      // must move to temp to stw/lsw to mem
      throw new Error("Codegen.munchMove");

  }

  // not much to see
  void munchStm(Tree.UEXP s) {
    munchExp(s.exp);
  }

  // jump with no condition = branch to given label
  void munchStm(Tree.JUMP s) {
      Tree.NAME name = (Tree.NAME) s.exp;
      emit(OPER("br " + name.label.toString(), null, null, L(name.label)));
  }

  private static String[] CJUMP = new String[10];
  static {
    CJUMP[Tree.CJUMP.EQ ] = "beq";
    CJUMP[Tree.CJUMP.NE ] = "bne";
    CJUMP[Tree.CJUMP.LT ] = "blt";
    CJUMP[Tree.CJUMP.GT ] = "bgt";
    CJUMP[Tree.CJUMP.LE ] = "ble";
    CJUMP[Tree.CJUMP.GE ] = "bge";
    CJUMP[Tree.CJUMP.ULT] = "bltu";
    CJUMP[Tree.CJUMP.ULE] = "bleu";
    CJUMP[Tree.CJUMP.UGT] = "bgtu";
    CJUMP[Tree.CJUMP.UGE] = "bgeu";
  }

  // branch with consitioon
  void munchStm(Tree.CJUMP s) {
    emit(OPER(CJUMP[s.relop] + " `s0, `s1, `j0",
      null, L(munchExp(s.left), L(munchExp(s.right))), L(s.iftrue, L(s.iffalse))));
  }

  // something is happening and I am confused
  void munchStm(Tree.LABEL l) {
    emit(new Assem.LABEL(l.label.toString() + ":", l.label));
  }

  Temp munchExp(Tree.Exp s) {
    if (s instanceof Tree.CONST)
      return munchExp((Tree.CONST)s);
    else if (s instanceof Tree.NAME)
      return munchExp((Tree.NAME)s);
    else if (s instanceof Tree.TEMP)
      return munchExp((Tree.TEMP)s);
    else if (s instanceof Tree.BINOP)
      return munchExp((Tree.BINOP)s);
    else if (s instanceof Tree.MEM)
      return munchExp((Tree.MEM)s);
    else if (s instanceof Tree.CALL)
      return munchExp((Tree.CALL)s);
    else
      throw new Error("Codegen.munchExp");
  }

  Temp munchExp(Tree.CONST e) {
    // use zero reg if value is 0 (no need to use new register)
    if (e.value == 0)
      return frame.ZERO;

    // store temp in register
    Temp r = new Temp();
    emit(OPER("movi `d0, " + e.value,
          L(r), null));
    return r;
  }

  Temp munchExp(Tree.NAME e) {
    Temp r = new Temp();
    emit(OPER("movia `d0, `j0", L(r), null, L(e.label)));
    return r;
  }

  Temp munchExp(Tree.TEMP e) {
    if (e.temp == frame.FP) {
      Temp t = new Temp();
      emit(OPER("addi `d0, `s0, " + frame.name + "_framesize",
            L(t), L(frame.SP)));
      return t;
    }
    return e.temp;
  }

  private static String[] BINOP = new String[10];
  static {
    BINOP[Tree.BINOP.PLUS   ] = "add";
    BINOP[Tree.BINOP.MINUS  ] = "sub";
    BINOP[Tree.BINOP.MUL    ] = "mul";
    BINOP[Tree.BINOP.DIV    ] = "div";
    BINOP[Tree.BINOP.AND    ] = "and";
    BINOP[Tree.BINOP.OR     ] = "or";
    BINOP[Tree.BINOP.LSHIFT ] = "sll";
    BINOP[Tree.BINOP.RSHIFT ] = "srl";
    BINOP[Tree.BINOP.ARSHIFT] = "sra";
    BINOP[Tree.BINOP.XOR    ] = "xor";
  }


  private static String[] IBINOP = new String[10];
  static {
    IBINOP[Tree.BINOP.PLUS   ] = "addi";
    IBINOP[Tree.BINOP.MINUS  ] = "subi";
    IBINOP[Tree.BINOP.MUL    ] = "muli";
    IBINOP[Tree.BINOP.DIV    ] = "divi";
    IBINOP[Tree.BINOP.AND    ] = "andi";
    IBINOP[Tree.BINOP.OR     ] = "ori";
    IBINOP[Tree.BINOP.LSHIFT ] = "slli";
    IBINOP[Tree.BINOP.RSHIFT ] = "srli";
    IBINOP[Tree.BINOP.ARSHIFT] = "srai";
    IBINOP[Tree.BINOP.XOR    ] = "xori";
  }

  private static int shift(int i) {
    int shift = 0;
    if ((i >= 2) && ((i & (i - 1)) == 0)) {
      while (i > 1) {
        shift += 1;
        i >>= 1;
      }
    }
    return shift;
  }

  Temp munchExp(String op, Tree.CONST right, Tree.TEMP left) {

    String value = String.valueOf(right.value);
    if (op.equals("muli")) {
      System.out.println("here here");

      int shift = shift(right.value);
      System.out.println(value + " " + shift);
      value = String.valueOf(shift);
      op = "slli";
    }

    Temp r = new Temp();
    if (left.temp == frame.FP())
        emit(OPER(op + " `d0, `s0, " + value + "+" + frame.name + "_framesize", L(r), L(frame.SP)));
    else
      emit(OPER(op + " `d0, `s0, " + value, L(r), L(munchExp(left))));

    return r;
  }

  Temp munchExp(String op, Tree.TEMP right, Tree.TEMP left) {
    Temp r = new Temp();
    emit(OPER(op + " `d0, `s0, `s1", L(r), L(munchExp(left), L(munchExp(right)))));
    return r;
  }

  private static int shiftable(Tree.BINOP e) {
    Tree.CONST left = CONST16(e.left);
    Tree.CONST right = CONST16(e.right);
    if (right != null && shift(right.value) > 0){
      return shift(right.value);
    }
    if (left != null && shift(left.value) > 0) {
      e.left = e.right;
      e.right = left;
      return shift(left.value);
    }
    return 0;
  }

  // this is chaos
  Temp munchExp(Tree.BINOP e) {
    boolean commutes = commute(e);
    if (commutes && e.left instanceof Tree.TEMP)
      return munchExp(IBINOP[e.binop], (Tree.CONST) e.right, (Tree.TEMP) e.left);
    else if (commutes) {
      Temp r = new Temp();
      String value = String.valueOf(((Tree.CONST)e.right).value);
      String op = IBINOP[e.binop];

      if (shiftable(e) > 0) {
        System.out.println("muli");

        int shift = shift(((Tree.CONST) e.right).value);

        System.out.println(((Tree.CONST) e.right).value + " " + shift);
        op = "slli";
        value = String.valueOf(shift);

      }

      emit(OPER(op + " `d0, `s0, " + value, L(r), L(munchExp(e.left))));
      return r;
    }
    else if (e.left instanceof Tree.TEMP && e.right instanceof Tree.TEMP)
      return munchExp(BINOP[e.binop], (Tree.TEMP) e.right, (Tree.TEMP) e.left);
    else {
      Temp r = new Temp();
      emit(OPER(BINOP[e.binop] + " `d0, `s0, `s1", L(r), L(munchExp(e.left), L(munchExp(e.right)))));
      return r;
    }

  }

  Temp munchExp(Tree.MEM e) {
    Temp r = new Temp();
    munchStm("ldw", r, e);
    return r;
  }

  Temp munchExp(Tree.CALL s) {
    Tree.NAME name = (Tree.NAME) s.func;
    emit(OPER("call `j0", frame.calldefs, munchArgs(0, s.args), L(name.label)));
    return frame.RV();
  }

  private TempList munchArgs(int i, Tree.ExpList args) {
    if (args == null)
      return null;
    Temp src = munchExp(args.head);
    if (i > frame.maxArgs)
      frame.maxArgs = i;
    switch (i) {
      case 0:
        emit(MOVE("mov `d0, `s0", frame.A0, src));
        break;
      case 1:
        emit(MOVE("mov `d0, `s0", frame.A1, src));
        break;
      case 2:
        emit(MOVE("mov `d0, `s0", frame.A2, src));
        break;
      case 3:
        emit(MOVE("mov `d0, `s0", frame.A3, src));
        break;
      default:
        emit(OPER("sdw `s0 " + (i-1)*frame.wordSize() + "(`s1)",
              null, L(src, L(frame.SP))));
        break;
    }
    return L(src, munchArgs(i+1, args.tail));
  }
}
