import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.Scanner;
import static java.lang.System.*;

class Relatives
{
 private Map<String, Set<String>> map;
 Relatives()
 {
   map = new TreeMap<String, Set<String>>();
 }
 void setPersonRelative(String line)
 {
   String[] personRelative = line.split(" ");
   String person = personRelative[0];
   String relative = personRelative[1];
   if(map.get(person)==null)
   {
     map.put(person, new TreeSet<String>());
     map.get(person).add(relative);
   }
   else
   {
     map.get(person).add(relative);
   }
 }
 String getRelatives(String person)
 {
   String output = person+" is related to ";
   for(String str : map.get(person))
   {
     output += str+" ";
   }
   return output+="\n";
 }
 String toString()
 {
   String output = "";
   for(Map.Entry<String, Set<String>> entry : map.entrySet())
   {
     output += entry.getKey()+" is related to ";
     for(String str : entry.getValue())
     {
       output += str+" ";
     }
     output += "\n";
   }
   return output;
 }
}
