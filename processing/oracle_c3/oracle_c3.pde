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
Movie mov1;
Movie mov2;
Movie mov3;
Movie mov4;
Movie mov5;
Movie mov6;
Movie mov7;





int time;
int m;

 
Hexagram[] hex;
int randNum = int(random(1, 7));

void setup() {
  fullScreen();
  //size(1400, 900);
  background(0);

  imageMode(CENTER);

  //load movie
  waterMov = new Movie(this, "water.mp4");
  water2Mov = new Movie(this, "water copy.mp4");
  thunderMov = new Movie(this, "thunder.mp4");
  thunder2Mov = new Movie(this, "thunder copy.mp4");
  earthMov = new Movie(this, "earth.mp4");
  earth2Mov = new Movie(this, "earth copy.mp4");
  mountainMov = new Movie(this, "mountain.mp4");
  mountain2Mov = new Movie(this, "mountain copy.mp4");
  heavenMov = new Movie(this, "heaven.mp4");
  heaven2Mov = new Movie(this, "heaven copy.mp4");
  mov1 = new Movie(this, "1.mp4");
  mov2 = new Movie(this, "2.mp4");
  mov3 = new Movie(this, "3.mp4");
  mov4 = new Movie(this, "4.mp4");
  mov5 = new Movie(this, "5.mp4");
  mov6 = new Movie(this, "6.mp4");
  mov7 = new Movie(this, "7.mp4");
  


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
  //for (int i = 1; i < 65; i++) {
  //  hex[i++] = new Hexagram("tempName"+i, i, "tempMeaning"+i, "tempTri1"+i, "tempTri2"+i, fortune) ;
  //}

  hex[1] = new Hexagram("Ch'ien", 1, "The Creative", "Heaven", "Heaven", mov1);
  hex[2] = new Hexagram("K'un", 2, "The Receptive", "Earth", "Earth", mov2);
  //hex[3] = new Hexagram("Chun", 3, "Difficulty at the Beginning", "Water", mov3);
  hex[4] = new Hexagram("Meng", 4, "Youthful Folly", "Mountain", "Water", mov4);
  hex[5] = new Hexagram("Hsu", 5, "Waiting (Nourishment)", "Water", "Heaven", mov5);
  hex[6] = new Hexagram("Sung", 6, "Conflict", "Heaven", "Water", mov6);
}





void draw() {
  m = millis() - time;
  //println("m " + m);

  //when hex[i] is chosen, play hex[i]trigram video 1, then play hex[i]trigram video 2, then show hex[i] fortune, then reset. 
  //create a loop to draw trigrams and display hexagrams
  for (int i = 0; i < hex.length; i++) {
    if (randNum == i ) {
      if (hex[i].trigram1 == "Heaven") {
        image(heavenMov, width/2, height/2);
        heavenMov.play();
        //play trigram 2
        if (m > 38000) {
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
        if (m > 38000) {
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
        if (m > 38000) {
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
        if (m > 38000) {
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
        if (m > 38000) {
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
      //show fortune }
      
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
 // println(millis());
}