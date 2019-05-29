import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

void setup()
{
  Scanner file1;
  Scanner file2;
  Scanner file3;
  Scanner file4;
  try {
    file1 = new Scanner(new File("Desktop/VotoA/mathSetRunner/text1.dat"));
    file2 = new Scanner(new File("Desktop/VotoA/mathSetRunner/text2.dat"));
    file3 = new Scanner(new File("Desktop/VotoA/mathSetRunner/text3.dat"));
    file4 = new Scanner(new File("Desktop/VotoA/mathSetRunner/text4.dat"));
    String str1 = file1.nextLine();
    String str2 = file2.nextLine();
    MathSet x = new MathSet(str1, str2);
    println(x);
    println("Union; "+x.union());
    println("\nIntersection: "+x.intersection());
    println("\nA-B Difference "+x.differenceAMinusB());
    println("\nB-A Difference "+x.differenceBMinusA());
    println("\nSymettric Difference: "+x.symmetricDifference());
    println("\nJaccard Index: "+x.jaccardIndex());
    println("\n\n");
    String str3 = file3.nextLine();
    String str4 = file4.nextLine();
    MathSet y = new MathSet(str3, str4);
    println(y);
    println("\nUnion; "+y.union());
    println("\nIntersection: "+y.intersection());
    println("\nA-B Difference "+y.differenceAMinusB());
    println("\nB-A Difference "+y.differenceBMinusA());
    println("\nSymettric Difference: "+y.symmetricDifference());
    println("\nJaccard Index: "+y.jaccardIndex());
    println("\n\n");
  } 
  catch (Exception FileNotFoundException) {
    out.println("File not found");
  }
}
