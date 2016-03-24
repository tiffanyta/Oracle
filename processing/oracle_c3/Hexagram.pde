class Hexagram {
  String name;
  int num;
  String meaning;
  String trigram1;
  String trigram2;
  Movie fortune;

  Hexagram(String tempName, int tempNum, String tempMeaning, String tempTrigram1, String tempTrigram2, Movie tempFortune) {
    name = tempName;
    num = tempNum;
    meaning = tempMeaning;
    trigram1 = tempTrigram1;
    trigram2 = tempTrigram2;
    fortune = tempFortune;
  }
}