public class Part implements Comparable<Part>
{
  private String make, model, theRest;
  private int year;

  public Part(String line) 
  {
    theRest = "";
    String[] list = line.split(" ");
    //println(list);
    year = Integer.parseInt(list[list.length-1]);
    model = list[list.length-2];
    make = list[list.length-3];
    for (int j = 0; j<list.length-3; j++)
    {
      theRest += list[j]+" ";
    }
  }
  public int compareTo(Part other)
  {
    if (make.compareTo(other.make)==0)
    {
      if (model.compareTo(other.model)==0)
      {
        if (new Integer(year).compareTo((Integer)other.year)==0)
        {
          if (theRest.compareTo(other.theRest)==0)
          {
            return 0;
          } else if (theRest.compareTo(other.theRest)>0)
          {
            return 1;
          } else {
            return -1;
          }
        } else if (new Integer(year).compareTo((Integer)other.year)>0)
        {
          return 1;
        } else 
        {
          return -1;
        }
      } else if (model.compareTo(other.model)>0)
      {
        return 1;
      } else 
      {
        return -1;
      }
    } else if (make.compareTo(other.make)>0)
    {
      return 1;
    } else 
    {
      return -1;
    }
  }
  public String toString()
  {
    return make+" "+model+" "+year+" "+theRest;
  }
}
