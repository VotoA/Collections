import static java.lang.System.*;

public class Word implements Comparable<Word>
{
  private String word;
  public Word( String s )
  {
    word = s;
  }
  public int compareTo( Word rhs )
  {
    String other = ""+rhs;
    if(word.length() < other.length()){
      return -1;
    } else if(word.length() > other.length()){
      return 1;
    } else {
      return word.compareTo(other);
    }
  }
  public String toString()
  {
    return ""+word;
  }
}
