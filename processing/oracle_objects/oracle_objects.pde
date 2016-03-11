

Hexagram hex1;
Hexagram hex2;
int num = int(random(1, 2));
Hexagram[] hex;


void setup() {
  size(600, 600);
  hex1 = new Hexagram("Ch'ien", 1, "The Creative", "Heaven", "Heaven", "The Creative works sublime success, Furthering through perseverance.");
  hex2 = new Hexagram("K'un", 2, "The Receptive", "Earth", "Earth", "The Receptive brings about sublime success");
  //println(hex2.num);
  

  println(Hexagram.name);
  
  int index = 0;
  
//  for (int i = 0; i < 64; i++) {
//    hex[i++] = new Hexagram("tempName", i, "tempMeaning", "tempTri1", "tempTri2", "tempFortune") ;
//  }

  background(0);
}

class Hexagram {
  String name;
  int num;
  String meaning;
  String trigram1;
  String trigram2;
  String fortune;

  Hexagram(String tempName, int tempNum, String tempMeaning, String tempTrigram1, String tempTrigram2, String tempFortune) {
    name = tempName;
    num = tempNum;
    meaning = tempMeaning;
    trigram1 = tempTrigram1;
    trigram2 = tempTrigram2;
    fortune = tempFortune;
  }
}

void draw() {
  text(hex1.name, width/2, height/2);
};

void list(class) { 
  for(var prop in class) {
    println(prop);
}

