package Absyn;
import Symbol.Symbol;
@SuppressWarnings("unused")
public class AssignExp extends Exp {
  public Var var;
  public Exp exp;
  public AssignExp(int p, Var v, Exp e) {pos=p; var=v; exp=e;}
}
