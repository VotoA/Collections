import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

void setup()
{
  Scanner file;
  try{
  file = new Scanner(new File("Desktop/VotoA/mathSetRunner/mathsetdata.dat"));
    while(file.hasNextLine())
    {
       String str1 = file.nextLine();
       String str2 = file.nextLine();
       MathSet x = new MathSet(str1, str2);
       println(x);
    }
  } catch (Exception FileNotFoundException) {
    out.println("File not found");
  }
}
