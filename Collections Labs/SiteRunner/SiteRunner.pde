import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;

void setup()
{
  try{
    Scanner file = new Scanner(new File("Desktop/VotoA/SiteRunner/Site.dat")); 
    int size = file.nextInt();
    SiteName[] names = new SiteName[size];
    file.nextLine();
    for (int i = 0; i < size; i++)
    {
       String name = file.next();
       names[i] = new SiteName(name);
    }
    for (SiteName n : names) {
      out.println(n);
    }
    System.out.println();
    Arrays.sort(names);
    for (SiteName n : names) {
      out.println(n);
    }
  } catch (Exception e) {
    out.println(e.getMessage());
  }
}
