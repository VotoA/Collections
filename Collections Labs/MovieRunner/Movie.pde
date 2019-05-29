import java.io.IOException;
import java.io.File;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import static java.lang.System.*;

public class Movie implements Comparable<Movie>
{
  int rating;
  String review;
  public Movie(int rat, String rev)
  {
    rating = rat;
    review = rev;
  }
  public int compareTo(Movie other)
  {
    return rating - other.rating;
  }
  public int getRating()
  {
    return rating;
  }
  public String getReview()
  {
    return review;
  }
  public String toString()
  {
    return rating+" "+review;
  }
}
