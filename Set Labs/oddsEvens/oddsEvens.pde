import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

void setup()
{
  Scanner file;
  try{
  file = new Scanner(new File("Desktop/VotoA/oddsEvens/oddevent.dat"));
    while(file.hasNextLine())
    {
       String str = file.nextLine();
       OddEvenSets x = new OddEvenSets(str);
       println(x);
    }
  } catch (Exception FileNotFoundException) {
    out.println("File not found");
  }
}
