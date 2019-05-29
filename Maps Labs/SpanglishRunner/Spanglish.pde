import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

class Spanglish
{
  private Map<String,String> pairs;
  Spanglish()
  {
    pairs = new TreeMap<String,String>();
  }
  void putEntry(String entry)
  {
    String[] set = entry.split(" ");
    String span = set[0];
    String eng = set[1];
    pairs.put(span, eng);
  }
  String translate(String sent)
  {
    String output = "";
    String[] set = sent.split(" ");
    for(String str : set)
    {
      output += pairs.get(str)+" ";
    }
    return output;
  }
  String toString()
  {
    return "";
  }
}
