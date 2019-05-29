import java.io.IOException;
import java.io.File;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import static java.lang.System.*;

MovieList movies = new MovieList();
int rat = -1;
void setup()
{
  movies.loadMovies(5, 1);
  movies.sortMoviesByCount();
  size(420, 500);
  background(25);
  fill(255, 255, 255);
}
void draw()
{
  background(25);
  fill(255, 255, 255);
  textSize(40);
  textAlign(CENTER);
  text("Movie Sentiment", 210, 40);
  textSize(20);
  text("Overall Sentiment: "+movies.averageCount(), 210, 70);
  textSize(15);
  fill(0, 76, 153);
  text((int)movies.getRatingCount(0), 70, (390-(280*(movies.getRatingCount(0)/movies.getCount())))-5);
  text((int)movies.getRatingCount(1), 140, (390-(280*(movies.getRatingCount(1)/movies.getCount())))-5);
  text((int)movies.getRatingCount(2), 210, (390-(280*(movies.getRatingCount(2)/movies.getCount())))-5);
  text((int)movies.getRatingCount(3), 280, (390-(280*(movies.getRatingCount(3)/movies.getCount())))-5);
  text((int)movies.getRatingCount(4), 350, (390-(280*(movies.getRatingCount(4)/movies.getCount())))-5);
  rect(56, 390-(280*(movies.getRatingCount(0)/movies.getCount())), 28, 280*(movies.getRatingCount(0)/movies.getCount()));
  rect(126, 390-(280*(movies.getRatingCount(1)/movies.getCount())), 28, 280*(movies.getRatingCount(1)/movies.getCount()));
  rect(196, 390-(280*(movies.getRatingCount(2)/movies.getCount())), 28, 280*(movies.getRatingCount(2)/movies.getCount()));
  rect(266, 390-(280*(movies.getRatingCount(3)/movies.getCount())), 28, 280*(movies.getRatingCount(3)/movies.getCount()));
  rect(336, 390-(280*(movies.getRatingCount(4)/movies.getCount())), 28, 280*(movies.getRatingCount(4)/movies.getCount()));
  text("0", 70, 410);
  text("1", 140, 410);
  text("2", 210, 410);
  text("3", 280, 410);
  text("4", 350, 410);
  fill(76, 153, 0);
  rect(43, 420, 52, 26);
  rect(113, 420, 52, 26);
  rect(183, 420, 52, 26);
  rect(253, 420, 52, 26);
  rect(323, 420, 52, 26);
  rect(60, 455, 90, 26);
  rect(165, 455, 90, 26);
  rect(270, 455, 90, 26);
  fill(0);
  text("0", 70, 440);
  text("1", 140, 440);
  text("2", 210, 440);
  text("3", 280, 440);
  text("4", 350, 440);
  text("And Below", 105, 475);
  text("Only", 210, 475);
  text("And Above", 315, 475);
  fill(200, 0, 0);
  rect(-1, 474, 50, 26);
  fill(0);
  text("Reset", 25, 494);
}
void mouseClicked()
{
  if(mouseX>43 && mouseX<95 && mouseY>420 && mouseY<446)
  {
    rat = 0;
  } else if(mouseX>113 && mouseX<165 && mouseY>420 && mouseY<446)
  {
    rat = 1;
  } else if(mouseX>183 && mouseX<235 && mouseY>420 && mouseY<446)
  {
    rat = 2;
  } else if(mouseX>253 && mouseX<305 && mouseY>420 && mouseY<446)
  {
    rat = 3;
  } else if(mouseX>323 && mouseX<375 && mouseY>420 && mouseY<446)
  {
    rat = 4;
  } else if(mouseX>60 && mouseX<150 && mouseY>455 && mouseY<481)
  {
    if(rat!=-1){
      movies.loadMovies(rat, 1);
    }
  } else if(mouseX>165 && mouseX<255 && mouseY>455 && mouseY<481)
  {
    if(rat!=-1){
      movies.loadMovies(rat, 0);
    }
  } else if(mouseX>270 && mouseX<360 && mouseY>455 && mouseY<481)
  {
    if(rat!=-1){
      movies.loadMovies(rat, -1);
    }
  } else if(mouseX>0 && mouseX<50 && mouseY>474 && mouseY<500)
  {
    movies.loadMovies(5, 1);
  }
  redraw();
}
