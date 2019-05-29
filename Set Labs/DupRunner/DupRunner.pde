import static java.lang.System.*;
import java.util.*;

void setup()
{
  String original1 = "a b c d e f g h a b c d e f g h i j k";
  String original2 = "one two three one two three six seven one two";
  String original3 = "1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 6";
  println(original1);
  println(UniquesDupes.getUniques(original1));
  println(UniquesDupes.getDupes(original1));
  println(original2);
  println(UniquesDupes.getUniques(original2));
  println(UniquesDupes.getDupes(original2));
  println(original3);
  println(UniquesDupes.getUniques(original3));
  println(UniquesDupes.getDupes(original3));
}
