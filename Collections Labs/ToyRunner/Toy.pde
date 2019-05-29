import static java.lang.System.*;

class Toy
{
  private String name;
  private int count;
  public Toy()
  {
  }
  public Toy( String nm )
  {
    name = nm;
    count++;
  }
  public int getCount()
  {
    return count;
  }
  public void setCount( int cnt )
  {
    count = cnt;
  }
  public String getName()
  {
    return name;
  }
  public void setName( String nm )
  {
    name = nm;
  }
  public String toString()
  {
    return name+":"+count;
  }
}
