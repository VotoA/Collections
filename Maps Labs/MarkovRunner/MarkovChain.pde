import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

class MarkovChain implements Markov {
  List <String> wordList;
  Map<String, ArrayList<String>> myMap;

  public MarkovChain() {
    wordList=new ArrayList<String>();
    myMap=new HashMap<String, ArrayList<String>>();
  }
  void trainMap(String [] str) {
    for (int i = 0; i<str.length-1; i++)
    {
      if (myMap.get(str[i])==null)
      {
        myMap.put(str[i], new ArrayList<String>());
      }
      myMap.get(str[i]).add(str[i+1]);
    }
  }
  String generateText(String str) {
    return str+" "+myMap.get(str).get(getRandomIndex(str));
  }
  String generateText2(String str, int num) {
    String output = str;
    for(int i = 0; i<num; i++)
    {
      String strPlus=output.split(" ")[output.split(" ").length-1];
      if(myMap.get(strPlus)!=null){
      output+=" "+myMap.get(strPlus).get(getRandomIndex(strPlus));
      } else {
        return output;
      }
    }
    return output;
  }
  int getRandomIndex(String s) {
    int randomIndex=(int)(Math.random()*myMap.get(s).size());
    return randomIndex;
  }
  void printMap() {
    println(myMap);
  }
  public String toString() {
    return ""+wordList;
  }
}
