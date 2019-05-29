import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import java.util.ArrayList;
import static java.lang.System.*;

public static class UniquesDupes
{
  public static Set<String> getUniques(String input)
  {
    Set<String> uniques = new TreeSet<String>();
      String[] i = input.split(" ");
      for(String str : i)
      {
        uniques.add(str);
      }
    return uniques;
  }

  public static Set<String> getDupes(String input)
  {
    Set<String> uniques = new TreeSet<String>();
    Set<String> dupes = new TreeSet<String>();
    String[] i = input.split(" ");
      for(String str : i)
      {
        if(uniques.add(str)==false)
        {
          dupes.add(str);
        }
      }
    return dupes;
  }
}
