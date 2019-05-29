import java.util.*; 
import java.io.IOException;
import java.io.File;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import static java.lang.System.*;
public class MovieList
{
  ArrayList<Movie> list;
  int count;
  public MovieList()
  {
    list = new ArrayList<Movie>();
  }
  public void loadMovies(int num, int direction)
  {
    list.clear();
    count = 0;
    try{
    Scanner file = new Scanner(new File("C:/Users/Anthony/Desktop/Movies.txt"));
    //C:/Users/Anthony/Desktop/Movies.txt
    //Desktop/VotoA/MovieRunner/Movies.dat
    while (file.hasNext())
    {
       int rating = file.nextInt();
       String review = file.nextLine();
       if(direction == 1){
         if(rating <= num) {
           list.add(new Movie(rating, review));
           count++;
         }
       } else if (direction == -1) {
         if(rating >= num) {
           list.add(new Movie(rating, review));
           count++;
         }
       } else {
         if(rating == num) {
           list.add(new Movie(rating, review));
           count++;
         }
       }
    }
    file.close();
  } catch (Exception e) {
    println(e.getMessage());
  }
  }
  public int getCount()
  {
    return count;
  }
  public double averageCount()
  {
    double total = 0;
    for(Movie m : list)
    {
      total+=m.getRating();
    }
    return total/count;
  }
  public void sortMoviesByCount()
  {
    Collections.sort(list);
  }
  public ArrayList<Movie> getArray()
  {
    return list;
  }
  public float getRatingCount(int num)
  {
    float cnt = 0;
    for(Movie m : list)
    {
      if(m.getRating() == num)
      {
        cnt++;
      }
    }
    return cnt;
  }
}
