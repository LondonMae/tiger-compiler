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

  void munchStm(Tree.MOVE s) {

    if (s.dst instanceof Tree.TEMP) {
      Tree.TEMP t = (Tree.TEMP) s.dst;
      Temp dst = t.temp;

      emit(MOVE("mov `d0 `s0",
          t.temp, munchExp(s.src)));
    }

    if (s.dst instanceof Tree.MEM && s.src instanceof Tree.MEM) {
      Tree.MEM l = (Tree.MEM) s.dst;
      Tree.MEM r = (Tree.MEM) s.src;

      emit(MOVE("mov `s0 `s1", munchExp(l.exp), munchExp(r.exp)));
    }

    else if (s.dst instanceof Tree.MEM) {
      Tree.MEM mem = (Tree.MEM) s.dst;

      if (mem.exp instanceof Tree.BINOP) {
        Tree.BINOP binop = (Tree.BINOP) mem.exp;
        if (commute(binop)) {

          Tree.CONST val = (Tree.CONST) binop.right;
          if (binop.left instanceof Tree.TEMP) {
            Tree.TEMP t = (Tree.TEMP)binop.left;

            if (t.temp == frame.FP) {
              emit(OPER("stw `s0 " + val.value + "+"+ frame.name + "_framesize(`s1)",
                null, L(munchExp(s.src), L(t.temp))));

            }

            else {
            emit(OPER("stw `s0 " + val.value + "(`s1)",
              null, L(munchExp(s.src), L(munchExp(binop.left)))));
            }

          }

          }
        }

        else if (mem.exp instanceof Tree.CONST) {
          Tree.CONST c = (Tree.CONST) mem.exp;

          emit(OPER("stw " + c.value + "(r0) `s1",
              null, L(munchExp(s.src), null)));
        }

      }
}

  void munchStm(Tree.UEXP s) {
    munchExp(s.exp);
  }

  void munchStm(Tree.JUMP s) {
      emit( new Assem.LABEL("jump" + ":", new Label()));
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
      emit( new Assem.LABEL("cjump" + ":", new Label()));
  }

  void munchStm(Tree.LABEL l) {
    emit( new Assem.LABEL(l.label.toString() + ":\n", l.label));
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
    Temp r = new Temp();
    emit(OPER("movi `d0, " + e.value,
          L(r), null));
    return r;
  }

  Temp munchExp(Tree.NAME e) {
      emit( new Assem.LABEL("name" + ":\n", new Label()));
    return frame.ZERO;
  }

  Temp munchExp(Tree.TEMP e) {
    if (e.temp == frame.FP) {
      Temp t = new Temp();
      emit(OPER("addi `d0 `s0 " + frame.name + "_framesize",
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

  Temp munchExp(Tree.BINOP e) {
    Temp r = new Temp();

    if (commute(e)) {
      Tree.CONST val = (Tree.CONST) e.right;
      emit(OPER(IBINOP[e.binop] + " `d0 `s0 " + val.value, L(r), L(munchExp(e.left))));
    }
    else
      emit(OPER(BINOP[e.binop] + " `d0 `s0 `s1", L(r), L(munchExp(e.left), L(munchExp(e.right)))));


    return r;
  }

  Temp munchExp(Tree.MEM e) {

    Temp r = new Temp();
    // if (e.exp instanceof Tree.BINOP) {
    //   Tree.BINOP binop = (Tree.BINOP) e.exp;
    //   if (commute(binop)) {
    //     Tree.CONST val = (Tree.CONST) binop.right;
    //     emit(OPER("ldw `d0 " + val.value + "(`s0)",
    //       L(r), L(munchExp(binop.left))));
    //     }
    //   }

    // else
      emit( new Assem.LABEL("mem" + ":\n", new Label()));
    return r;
  }

  Temp munchExp(Tree.CALL s) {
    return frame.ZERO;
  }

  private TempList munchArgs(int i, Tree.ExpList args) {
    if (args == null)
      return null;
    Temp src = munchExp(args.head);
    if (i > frame.maxArgs)
      frame.maxArgs = i;
    switch (i) {
      case 0:
        emit(MOVE("mov `d0 `s0", frame.A0, src));
        break;
      case 1:
        emit(MOVE("mov `d0 `s0", frame.A1, src));
        break;
      case 2:
        emit(MOVE("mov `d0 `s0", frame.A2, src));
        break;
      case 3:
        emit(MOVE("mov `d0 `s0", frame.A3, src));
        break;
      default:
        emit(OPER("sdw `s0 " + (i-1)*frame.wordSize() + "(`s1)",
              null, L(src, L(frame.SP))));
        break;
    }
    return L(src, munchArgs(i+1, args.tail));
  }
}
