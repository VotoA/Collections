import java.util.Scanner;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;
import static java.lang.System.*;

class ToyStore implements Comparable
{
  private ArrayList<Toy> toyList;
  public ToyStore()
  {
    toyList = new ArrayList<Toy>();
  }
  public void loadToys( String toys )
  {
  }
  public Toy getThatToy( String nm )
  {
    for(Toy t: toyList){
      if(t.getName().equals(nm)){
        return t;
      }
    }
    return null;
  }
  public String getMostFrequentToy()
  {
    if(toyList.get(0)==null){
      return null;
    }
    int num = Integer.MIN_VALUE;
    int index = -1;
    for(Toy t: toyList){
      if(t.getCount()>num){
        index = toyList.indexOf(t);
      }
    }
    return toyList.get(index).getName();
  }  
  public void sortToysByCount()
  {
    
  }
  
  public String toString()
  {
    return "";
  }
}
