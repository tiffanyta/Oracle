//load movies
import processing.video.*;
Movie waterMov;
Movie water2Mov;
Movie thunderMov;
Movie thunder2Mov;
Movie earthMov;
Movie earth2Mov;
Movie heavenMov;
Movie heaven2Mov;
Movie mountainMov;
Movie mountain2Mov;

int time;
int m;

Hexagram[] hex;
int randNum = int(random(1, 7));

void setup() {
  size(1200, 700);
  background(0);

  imageMode(CENTER);

  //load movie
  waterMov = new Movie(this, "water.mov");
  water2Mov = new Movie(this, "water2.mov");
  thunderMov = new Movie(this, "thunder.mov");
  thunder2Mov = new Movie(this, "thunder2.mov");
  earthMov = new Movie(this, "earth.mov");
  earth2Mov = new Movie(this, "earth2.mov");
  mountainMov = new Movie(this, "mountain.mov");
  mountain2Mov = new Movie(this, "mountain2.mov");
  heavenMov = new Movie(this, "heaven.mov");
  heaven2Mov = new Movie(this, "heaven2.mov");

  time=millis();


  //load font
  PFont dinFont;
  dinFont = loadFont("DIN-Regular-48.vlw");
  textFont(dinFont);
  smooth();
  //String[] fontList = PFont.list();
  //printArray(fontList);


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




void draw() {
  m = millis() - time;
  println("m " + m);

  //when hex[i] is chosen, play hex[i]trigram video 1, then play hex[i]trigram video 2, then show hex[i] fortune, then reset. 
  //create a loop to draw trigrams and display hexagrams
  for (int i = 0; i < hex.length; i++) {
    if (randNum == i ) {
      if (hex[i].trigram1 == "Heaven") {
        image(heavenMov, width/2, height/2);
        heavenMov.play();
        //play trigram 2
        if (m > 10000) {
          background(0);
          if (hex[i].trigram2 == "Heaven") {
            image(heaven2Mov, width/2, height/2);
            heaven2Mov.play();
          } else if (hex[i].trigram2 == "Water") {
            image(water2Mov, width/2, height/2);
            water2Mov.play();
          } else if (hex[i].trigram2 == "Earth") {
            image(earth2Mov, width/2, height/2);
            earth2Mov.play();
          } else if (hex[i].trigram2 == "Mountain") {
            image(mountain2Mov, width/2, height/2);
            mountain2Mov.play();
          } else {
            image(thunder2Mov, width/2, height/2);
            thunder2Mov.play();
          };
        }


      } else if (hex[i].trigram1 == "Water") {
        image(waterMov, width/2, height/2);
        waterMov.play();
        //play trigram 2
        if (m > 10000) {
          background(0);
          if (hex[i].trigram2 == "Heaven") {
            image(heaven2Mov, width/2, height/2);
            heaven2Mov.play();
          } else if (hex[i].trigram2 == "Water") {
            image(water2Mov, width/2, height/2);
            water2Mov.play();
          } else if (hex[i].trigram2 == "Earth") {
            image(earth2Mov, width/2, height/2);
            earth2Mov.play();
          } else if (hex[i].trigram2 == "Mountain") {
            image(mountain2Mov, width/2, height/2);
            mountain2Mov.play();
          } else {
            image(thunder2Mov, width/2, height/2);
            thunder2Mov.play();
          };
        }
        
      } else if (hex[i].trigram1 == "Earth") {
        image(earthMov, width/2, height/2);
        earthMov.play();
        //play trigram 2
        if (m > 10000) {
          background(0);
          if (hex[i].trigram2 == "Heaven") {
            image(heaven2Mov, width/2, height/2);
            heaven2Mov.play();
          } else if (hex[i].trigram2 == "Water") {
            image(water2Mov, width/2, height/2);
            water2Mov.play();
          } else if (hex[i].trigram2 == "Earth") {
            image(earth2Mov, width/2, height/2);
            earth2Mov.play();
          } else if (hex[i].trigram2 == "Mountain") {
            image(mountain2Mov, width/2, height/2);
            mountain2Mov.play();
          } else {
            image(thunder2Mov, width/2, height/2);
            thunder2Mov.play();
          };
        }
        
      } else if (hex[i].trigram1 == "Mountain") {
        image(mountainMov, width/2, height/2);
        mountainMov.play();
        //play trigram 2
        if (m > 10000) {
          background(0);
          if (hex[i].trigram2 == "Heaven") {
            image(heaven2Mov, width/2, height/2);
            heaven2Mov.play();
          } else if (hex[i].trigram2 == "Water") {
            image(water2Mov, width/2, height/2);
            water2Mov.play();
          } else if (hex[i].trigram2 == "Earth") {
            image(earth2Mov, width/2, height/2);
            earth2Mov.play();
          } else if (hex[i].trigram2 == "Mountain") {
            image(mountain2Mov, width/2, height/2);
            mountain2Mov.play();
          } else {
            image(thunder2Mov, width/2, height/2);
            thunder2Mov.play();
          };
        }
        
      } else {
        image(thunderMov, width/2, height/2);
        thunderMov.play();
        //play trigram 2
        if (m > 10000) {
          background(0);
          if (hex[i].trigram2 == "Heaven") {
            image(heaven2Mov, width/2, height/2);
            heaven2Mov.play();
          } else if (hex[i].trigram2 == "Water") {
            image(water2Mov, width/2, height/2);
            water2Mov.play();
          } else if (hex[i].trigram2 == "Earth") {
            image(earth2Mov, width/2, height/2);
            earth2Mov.play();
          } else if (hex[i].trigram2 == "Mountain") {
            image(mountain2Mov, width/2, height/2);
            mountain2Mov.play();
          } else {
            image(thunder2Mov, width/2, height/2);
            thunder2Mov.play();
          };
        }
        
      }
      //show fortune
      if (m > 20000) {

          fill(0);
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
  }

  //println(hex[1].name);
}

void movieEvent(Movie m) {
  m.read();
}

void keyReleased()
{
  if (key==' ') 
    //  heavenMov.stop();
    //  earthMov.stop();
    //  waterMov.stop();
    //  mountainMov.stop();
    //  thunderMov.stop();
    //  float mil = millis();
    //
    //  println(mil);
    //  ;
    setup();
  randNum = int(random(1, 7));
  time = millis();
  println(millis());
}

