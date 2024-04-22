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

  private static Tree.CONST CONST16(Tree.Exp e) {
    if (e instanceof Tree.CONST) {
      Tree.CONST c = (Tree.CONST)e;
      int value = c.value;
      if (value == (short)value)
        return c;
    }
    return null;
  }

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


  // handles mem cases within a move
  void munchStm(String op, Temp src1, Tree.MEM mem) {
    if (mem.exp instanceof Tree.BINOP && commute((Tree.BINOP) mem.exp)) {
        Tree.CONST val = (Tree.CONST) ((Tree.BINOP) mem.exp).right;
        String offset = String.valueOf(val.value);
        if (((Tree.BINOP) mem.exp).left instanceof Tree.TEMP) {
          Tree.TEMP r = (Tree.TEMP)((Tree.BINOP) mem.exp).left;
          Temp src2 = r.temp;

          if (r.temp == frame.FP) {
            src2 = frame.SP;
            offset = val.value + "+"+ frame.name + "_framesize";
          }

          emit(OPER(op + " `s0, " + offset + "(`s1)",
            null, L(src1, L(src2))));
          }
        else {
          Temp src2 = munchExp(((Tree.BINOP) mem.exp).left);
          emit(OPER(op + " `s0, " + offset + "(`s1)",
            null, L(src1, L(src2))));
        }
      }



    else if (mem.exp instanceof Tree.CONST) {
      Tree.CONST c = (Tree.CONST) mem.exp;
      emit(OPER(op + " `s0, " + c.value,
        null, L(src1, null)));
    }

    else if (mem.exp instanceof Tree.TEMP) {


          // System.out.println(op);
      emit(OPER(op + " `s0, (`s1)",
        null, L(src1, L(munchExp(mem.exp)))));
    }
    else  {
      emit(OPER(op + " `s0, (`s1)",
        null, L(src1, L(munchExp((mem.exp))))));
    }

  }


  // move something not in mem to temp
  void munchStm(Tree.TEMP temp, Tree.Exp exp) {
    Temp dst = temp.temp;
    Temp src = munchExp(exp);


    if (dst != src)
      emit(MOVE("mov `d0, `s0", dst, src));
}

  // todo: check if temp is 0
  void munchStm(Tree.MOVE s) {
    System.out.println("move");
    if (s.dst instanceof Tree.MEM)
      munchStm("stw", munchExp(s.src), (Tree.MEM) s.dst);
    else if (s.src instanceof Tree.MEM)
      munchStm("ldw", munchExp(s.dst), (Tree.MEM) s.src);
    else if (s.dst instanceof Tree.TEMP)
      munchStm((Tree.TEMP)s.dst, s.src);

  }

  void munchStm(Tree.UEXP s) {
    munchExp(s.exp);
  }

  void munchStm(Tree.JUMP s) {
      System.out.println("jump");
      Tree.NAME name = (Tree.NAME) s.exp;

      emit(OPER("br " + name.label.toString(), null, null, new LabelList(name.label, null)));
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

  void munchStm(Tree.CJUMP s) {
      System.out.println("cjump");
    emit(OPER(CJUMP[s.relop] + " `s0, `s1, `j0",
      null, L(munchExp(s.left), L(munchExp(s.right))), new LabelList(s.iftrue, null)));
  }

  void munchStm(Tree.LABEL l) {
      System.out.println("label");
    emit( new Assem.LABEL(l.label.toString() + ": ", l.label));
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
      System.out.println("const");
    if (e.value == 0)
      return frame.ZERO;

    Temp r = new Temp();
    emit(OPER("movi `d0, " + e.value,
          L(r), null));
    return r;
  }

  Temp munchExp(Tree.NAME e) {
      System.out.println("name");
    Temp r = new Temp();
    emit( OPER("movia `d0, `j0", L(r), null, new LabelList(e.label, null)));
    return r;
  }

  Temp munchExp(Tree.TEMP e) {
    System.out.println("temp");
    System.out.println(e.temp);

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
    Temp r = new Temp();
    if (left.temp == frame.FP())
        emit(OPER(op + " `d0, `s0, " + right.value + "+" + frame.name + "_framesize", L(r), L(frame.SP)));
    else
      emit(OPER(op + " `d0, `s0, " + right.value, L(r), L(munchExp(left))));

    return r;
  }

  Temp munchExp(String op, Tree.TEMP right, Tree.TEMP left) {
    Temp r = new Temp();
    emit(OPER(op + " `d0, `s0, `s1", L(r), L(munchExp(left), L(munchExp(right)))));
    return r;
  }

  Temp munchExp(Tree.BINOP e) {
    System.out.println("binop");
    boolean commutes = commute(e);
    if (commutes && e.left instanceof Tree.TEMP)
      return munchExp(IBINOP[e.binop], (Tree.CONST) e.right, (Tree.TEMP) e.left);
    else if (commutes) {
      Temp r = new Temp();
      emit(OPER(IBINOP[e.binop] + " `d0, `s0, " + ((Tree.CONST)e.right).value, L(r), L(munchExp(e.left))));
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
    System.out.println("mem");
    Temp r = new Temp();
    munchStm("ldw", r, e);
    return r;
  }

  Temp munchExp(Tree.CALL s) {
    System.out.println("call");
    Tree.NAME name = (Tree.NAME) s.func;
    emit(OPER("call `j0", L(frame.RA, L(frame.RV(), frame.callerSaves)), munchArgs(0, s.args), new LabelList(name.label, null)));
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
