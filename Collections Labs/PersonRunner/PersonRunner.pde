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
    Scanner file = new Scanner(new File("Desktop/VotoA/PersonRunner/Person.dat"));
    int size = file.nextInt();
    Person[] people = new Person[size];
    file.nextLine();
    for (int i = 0; i < size; i++)
    {
       int year = file.nextInt();
       int month = file.nextInt();
       int day = file.nextInt();
       String name = file.next();
       people[i] = new Person(year, month, day, name);
    }
    for (Person person : people) {
      out.println(person);
    }
    System.out.println();
    Arrays.sort(people);
    for (Person person : people) {
      out.println(person);
    }
  } catch (Exception e) {
    out.println(e.getMessage());
  }
}
