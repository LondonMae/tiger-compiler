package Absyn;
import Symbol.Symbol;
@SuppressWarnings("unused")
public class DecList {
  public Dec head;
  public DecList tail;
  public DecList(Dec h, DecList t) {head=h; tail=t;}
}
