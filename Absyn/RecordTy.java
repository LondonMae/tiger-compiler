package Absyn;
import Symbol.Symbol;
@SuppressWarnings("unused")
public class RecordTy extends Ty {
  public FieldList fields;
  public RecordTy(int p, FieldList f) {pos=p; fields=f;}
}   
