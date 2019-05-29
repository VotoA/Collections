public class Person implements Comparable<Person>
{
  private int myYear;
  private int myMonth;
  private int myDay;
  private String myName;

  public Person( int y, int m, int d, String n)
  {
    myYear = y;
    myMonth = m;
    myDay = d;
    myName = n;
  }
  public int compareTo( Person other )
  {
    String o = ""+other;
    if (myYear < other.myYear) {
      return 1;
    } else if (myYear > other.myYear) {
      return -1;
    } else {
      if (myMonth < other.myMonth) {
        return 1;
      } else if (myMonth > other.myMonth) {
        return -1;
      } else {
        if (myDay < other.myDay) {
          return 1;
        } else if (myDay > other.myDay) {
          return -1;
        } else {
          return myName.compareTo(o)*-1;
        }
      }
    }
  }
  public String toString( )
  {
    return ""+myName;
  }
}
