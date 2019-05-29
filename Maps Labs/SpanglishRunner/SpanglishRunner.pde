import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

Spanglish StE = new Spanglish();
void setup()
{
    Scanner file;
    try {
      file = new Scanner(new File("Desktop/VotoA/SpanglishRunner/spantoeng.dat"));
      int size = file.nextInt();
      file.nextLine();
      for (int i = 0; i<size; i++)
      {
        String str = file.nextLine();
        StE.putEntry(str);
      }
      while(file.hasNextLine())
      {
      println(StE.translate(file.nextLine()));
      }
    } 
    catch (Exception FileNotFoundException) {
      out.println("File not found");
    }
}
