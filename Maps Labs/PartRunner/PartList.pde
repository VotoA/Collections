import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

public class PartList
{
  private TreeMap<Part, Integer> partsMap;

  public PartList()
  {
    partsMap = new TreeMap<Part, Integer>();
  }
  public PartList(String fileName)
  {
    this();
    try
    {
      Scanner file = new Scanner(new File(fileName));
      while (file.hasNextLine())
      {
        Part p = new Part(file.nextLine());
        if (partsMap.get(p)==null)
        {
          partsMap.put(p, 0);
        }
        partsMap.put(p, partsMap.get(p)+1);
      }
    }
    catch( IOException e )
    {
      out.println(e);
    }
    catch( RuntimeException e )
    {
      out.println(e);
    }
    catch( Exception e )
    {
      out.println(e);
    }
    finally 
    {
    }
  }
  public String toString()
  {
    String output="";
    for(Part p : partsMap.keySet())
    {
      output+=p+"- "+partsMap.get(p)+"\n";
    }
    return output;
  }
}
