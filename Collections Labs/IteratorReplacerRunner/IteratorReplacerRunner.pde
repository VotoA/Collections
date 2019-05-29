import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import static java.lang.System.*;

void setup()
{
  IteratorReplacer str1 = new IteratorReplacer("a b c a b c", "a", "+");
  IteratorReplacer str2 = new IteratorReplacer("a b c d e f g h i j x x x x", "x", "7");
  IteratorReplacer str3 = new IteratorReplacer("1 2 3 4 5 6 a b c a b c a", "b", "#");
  str1.replace();
  str2.replace();
  str3.replace();
  println(str1);
  println(str2);
  println(str3);
}
