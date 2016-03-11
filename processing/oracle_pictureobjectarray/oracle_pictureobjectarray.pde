
//load trigram iamges
PImage heavenImg;
PImage earthImg;
PImage waterImg;
PImage mountainImg;
PImage thunderImg;

Hexagram[] hex;
int randNum = int(random(1, 7));

void setup() {
  size(1200, 700);
  background(0);

  //load font
  PFont dinFont;
  dinFont = loadFont("DIN-Regular-48.vlw");
  textFont(dinFont);
  smooth();


  //String[] fontList = PFont.list();
  //printArray(fontList);

  //load images
  heavenImg = loadImage("heaven.jpg");
  earthImg = loadImage("earth.jpg");
  waterImg = loadImage("water.jpg");
  mountainImg = loadImage("mountain.jpg");
  thunderImg = loadImage("thunder.jpg");

  //create 64 hexagrams
  hex = new Hexagram[65];
  for (int i = 1; i < 65; i++) {
    hex[i++] = new Hexagram("tempName"+i, i, "tempMeaning"+i, "tempTri1"+i, "tempTri2"+i, "tempFortune"+i) ;
  }
  
  hex[1] = new Hexagram("Ch'ien", 1, "The Creative", "Heaven", "Heaven", "The Creative works sublime success, Furthering through perseverance.");
  hex[2] = new Hexagram("K'un", 2, "The Receptive", "Earth", "Earth", "The Receptive brings about sublime success");
  hex[3] = new Hexagram("Chun", 3, "Difficulty at the Beginning", "Water", "Thunder", "Difficulty at the Beginning works supreme success, Furthering through perseverance. Nothing should be undertaken. It furthers one to appoint helpers.");
  hex[4] = new Hexagram("Meng", 4, "Youthful Folly", "Mountain", "Water", "Youthful Folly has success. It is not I who seek the young fool; The young fool seeks me. At the first oracle I inform him. If he asks two or three times, it is importunity. If he importunes, I give him no information. Perseverance furthers.");
  hex[5] = new Hexagram("Hsu", 5, "Waiting (Nourishment)", "Water", "Heaven", "Waiting. If you are sincere, You have light and success. Perseverance brings good fortune. It furthers one to cross the great water.");
  hex[6] = new Hexagram("Sung", 6, "Conflict", "Heaven", "Water", "Conflict. You are sincere And are being obstructed. A cautious halt halfway brings good fortune. Going through to the end brings misfortune. It furthers one to see the great man. It does not further one to cross the great water.");
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

  //create a loop to draw trigrams and display hexagrams
  for (int i = 0; i < hex.length; i++) {
    if (randNum == i ) {
      if (hex[i].trigram1 == "Heaven") {
        image(heavenImg, 0, 0);
      } else if (hex[i].trigram1 == "Water") {
        image(waterImg, 0, 0);
      } else if (hex[i].trigram1 == "Earth") {
        image(earthImg, 0, 0);
      } else if (hex[i].trigram1 == "Mountain") {
        image(mountainImg, 0, 0);
      } else {image(thunderImg,0,0);}
      
      if (hex[i].trigram2 == "Heaven") {
        image(heavenImg, width/2, 0);
      } else if (hex[i].trigram2 == "Water") {
        image(waterImg, width/2, 0);
      } else if (hex[i].trigram2 == "Earth") {
        image(earthImg, width/2, 0);
      } else if (hex[i].trigram2 == "Mountain") {
        image(mountainImg, width/2, 0);
      }else {image(thunderImg,width/2,0);}

      fill(0, 0, 0, 127);
      rect(0, 0, width, height);
      //fortune
      textAlign(CENTER);
      textSize(38);
      fill(255);
      text(hex[i].name + " — " + hex[i].meaning, width/2, height/2);

      textSize(13);
      text(hex[i].trigram1 + " / " + hex[i].trigram2, width/2, height/2 + 30);

      text(hex[i].fortune, 50, height/2 + 80, width - 100, height - 50);
    }
  };
  //println(hex[1].name);
}

void keyReleased()
{
 if (key==' ') randNum = int(random(1, 7));;
}

