package Symbol;
public class Symbol {
  private String name;
  private Symbol(String n) {
    name=n;
  }
  private static java.util.Dictionary<String, Symbol> dict = new java.util.Hashtable<String, Symbol>();

  public String toString() {
    return name;
  }


  /**
   * Gets the unique symbol associated with a string.  Repeated calls to
   * <code>symbol("abc")</code> will return the same symbol.
   */
  public static Symbol symbol(String n) {
    String u = n.intern();
    Symbol s = dict.get(u);
    if (s==null) {
      s = new Symbol(u);
      dict.put(u,s);
    }
    return s;
  }
}
