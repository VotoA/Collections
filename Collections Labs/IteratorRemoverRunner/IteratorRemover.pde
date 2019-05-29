import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import static java.lang.System.*;

class IteratorRemover
{
  private ArrayList<String> list;
  private String toRemove;
  public IteratorRemover(String line, String rem)
  {
     list = new ArrayList<String>(Arrays.asList(line.split("")));
     toRemove = rem;
  }
  public void setTest(String line, String rem)
  {
     list = new ArrayList<String>(Arrays.asList(line.split("")));
     toRemove = rem;
  }
  public void remove()
  {
    Iterator iter = list.iterator();
    while(iter.hasNext())
    {
      if(iter.next().equals(toRemove))
      {
        iter.remove();
      }
    }
  }
  public String toString()
  {
    return ""+list;
  }
}
