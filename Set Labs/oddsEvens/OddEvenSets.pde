import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import java.util.Scanner;
import static java.lang.System.*;

public class OddEvenSets
{
  private Set<Integer> odds;
  private Set<Integer> evens;
  public OddEvenSets()
  {
    
  }
  public OddEvenSets(String line)
  {
    odds = new TreeSet<Integer>();
    evens = new TreeSet<Integer>();
    String[] i = line.split(" ");
    for(String str : i)
    {
      int num = Integer.parseInt(str);
      if(num%2 == 0)
      {
        evens.add(num);
      } else 
      {
        odds.add(num);
      }
    }
  }
  public String toString()
  {
    return "ODDS : " + odds + "\nEVENS : " + evens + "\n\n";
  }
}
