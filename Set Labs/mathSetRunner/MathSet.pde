import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import static java.lang.System.*;

public class MathSet
{
  private Set<Integer> one;
  private Set<Integer> two;
  public MathSet()
  {
  }
  public MathSet(String o, String t)
  {
    one = new TreeSet<Integer>();
    two = new TreeSet<Integer>();
    String[] oArray = o.split(" ");
    String[] tArray = t.split(" ");
      for(String str : oArray)
      {
        one.add(Integer.parseInt(str));
      }
    for(String str : tArray)
      {
        two.add(Integer.parseInt(str));
      }
  }
  public Set<Integer> union()
  {
    return null;
  }
  public Set<Integer> intersection()
  {
    return null;
  }
  public Set<Integer> differenceAMinusB()
  {
    return null;
  }
  public Set<Integer> differenceBMinusA()
  {
    return null;
  }
  public Set<Integer> symmetricDifference()
  {    
    return null;
  }  
  public String toString()
  {
    return "Set one " + one + "\n" +  "Set two " + two +  "\n";
  }
}
