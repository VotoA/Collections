import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.Scanner;
import static java.lang.System.*;

Relatives r = new Relatives();
void setup()
{
  Scanner file;
  try{
  file = new Scanner(new File("Desktop/VotoA/RelativesRunner/relatives.dat"));
    int size = file.nextInt();
    file.nextLine();
    for(int i = 0; i<size; i++)
    {
       String str = file.nextLine();
       r.setPersonRelative(str);
    }
  } catch (Exception FileNotFoundException) {
    out.println("File not found");
  }
  println(r);
  println(r.getRelatives("Dot"));
}
