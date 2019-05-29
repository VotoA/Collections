import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import static java.lang.System.*;

void setup()
{
  IteratorRemover str1 = new IteratorRemover("a b c a b c a", "a");
  IteratorRemover str2 = new IteratorRemover("a b c d e f g h i j x x x x", "x");
  IteratorRemover str3 = new IteratorRemover("1 2 3 4 5 6 a b c a b c a", "b");
  str1.remove();
  str2.remove();
  str3.remove();
  println(str1);
  println(str2);
  println(str3);
}
