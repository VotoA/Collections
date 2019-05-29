import static java.lang.System.*;

public class SiteName implements Comparable<SiteName>
{
  private String name;
  private String domain;
  public SiteName(String s)
  {
    String[] arr = s.split("\\.");
    name = arr[0];
    domain = arr[1];
  }
  public int compareTo(SiteName other)
  {
    String d = other.domain;
    String n = other.name;
    if (this.domain.compareTo(d)==1) {
      return 1;
    } else if (domain.compareTo(d)==-1) {
      return -1;
    } else {
      //if (name.compareTo(other.name)==1) {
      //  return 1;
      //} else if (name.compareTo(other.name)==-1) {
      //  return -1;
      //} else {
        return 0;
      //}
    }
  }
  public String toString()
  {
    return name+"."+domain;
  }
}
