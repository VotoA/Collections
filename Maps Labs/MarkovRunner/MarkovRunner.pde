void setup() {
  MarkovChain mc=new MarkovChain();
  String [] str=loadStrings("Desktop/VotoA/MarkovRunner/oneFish.dat");
  String allText=join(str, " ");
  String [] cleanText=allText.replaceAll("[^a-zA-Z ]", "").toLowerCase().split("\\s+");//removes punct before splitting
  mc.trainMap(cleanText);
  for (String s : cleanText) {
    //mc.generateText(s);
    //println(mc.generateText(s));
    println(mc.generateText2(s, 5));
  }
}

interface Markov {
  void trainMap(String [] s);
  String generateText(String s);
}
