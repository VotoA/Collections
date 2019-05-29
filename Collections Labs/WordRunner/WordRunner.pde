import java.util.ArrayList;
import java.util.Arrays;
import static java.lang.System.*;

void setup(){
    String[] names = "freddy at elephant whoooooodat alice tommy bobby it at about".split(" ");
    Word[] words = new Word[10];
    int j = 0;
    for (String s : names) {
      words[j] = new Word(s);
      j++;
    }
    System.out.println("before sorted: ");
    for (Word word : words) {
      out.println(word);
    }
    System.out.println();
    System.out.println("after sorted: ");
    Arrays.sort(words);
    for (Word word : words) {
      out.println(word);
    }
}
