import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.ListIterator;
import static java.lang.System.*;

class IteratorReplacer
{
  private ArrayList<String> list;
  private String toReplace, replaceWith;
  public IteratorReplacer(String line, String rem, String rep)
  {
     list = new ArrayList<String>(Arrays.asList(line.split("")));
     toReplace = rem;
     replaceWith = rep;
  }
  public void setEmAll(String line, String rem, String rep)
  {
     list = new ArrayList<String>(Arrays.asList(line.split("")));
     toReplace = rem;
     replaceWith = rep;
  }
  public void replace()
  {
    ListIterator<String> iter = list.listIterator();
    while(iter.hasNext())
    {
      if(iter.next().equals(toReplace))
      {
        iter.set(replaceWith);
      }
    }
  }
  public String toString()
  {
    return list.toString()+"\n\n";
  }
}
