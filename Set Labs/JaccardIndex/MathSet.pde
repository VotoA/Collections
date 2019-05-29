import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import static java.lang.System.*;

public class MathSet
{
  private Set<String> one;
  private Set<String> two;
  public MathSet()
  {
  }
  public MathSet(String o, String t)
  {
    one = new TreeSet<String>();
    two = new TreeSet<String>();
    String[] oArray = o.split(" ");
    String[] tArray = t.split(" ");
      for(String str : oArray)
      {
        one.add(str);
      }
    for(String str : tArray)
      {
        two.add(str);
      }
  }
  public Set<String> union()
  {
    Set<String> set = new TreeSet<String>(one);
    set.addAll(two);
    return set;
  }
  public Set<String> intersection()
  {
    Set<String> set = new TreeSet<String>(one);
    set.retainAll(two);
    return set;
  }
  public Set<String> differenceAMinusB()
  {
    Set<String> set = new TreeSet<String>(one);
    set.removeAll(two);
    return set;
  }
  public Set<String> differenceBMinusA()
  {
    Set<String> set = new TreeSet<String>(two);
    set.removeAll(one);
    return set;
  }
  public Set<String> symmetricDifference()
  {    
    Set<String> temp = new TreeSet<String>(one);
    temp.retainAll(two);
    Set<String> set = new TreeSet<String>(one);
    set.addAll(two);
    set.removeAll(temp);
    return set;
  }  
  public double jaccardIndex()
  {
    double intersection = intersection().size();
    double union = union().size();
    return intersection/union;
  }
  public String toString()
  {
    return "Set one " + one + "\n" +  "Set two " + two;
  }
}
