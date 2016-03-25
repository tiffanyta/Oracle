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
Movie windMov;
Movie wind2Mov;
Movie lakeMov;
Movie lake2Mov;
Movie fireMov;
Movie fire2Mov;

Movie mov1;
Movie mov2;
Movie mov3;
Movie mov4;
Movie mov5;
Movie mov6;
Movie mov7;
Movie mov8;
Movie mov9;
Movie mov10;
Movie mov11;
Movie mov12;
Movie mov13;
Movie mov14;
Movie mov15;
Movie mov16;
Movie mov17;
Movie mov18;
Movie mov19;
Movie mov20;



// set timing
int time;
int m;

//hexagram array
Hexagram[] hex;

//random number
//int randNum = int(random(1, 7));
int randNum = int(random(1,20));


void setup() {
  //fullScreen();
  size(1200, 700);
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
  windMov = new Movie(this, "wind.mp4");
  wind2Mov = new Movie(this, "wind copy.mp4");
  fireMov = new Movie(this, "fire.mp4");
  fire2Mov = new Movie(this, "fire copy.mp4");
  lakeMov = new Movie(this, "lake.mp4");
  lake2Mov = new Movie(this, "lake copy.mp4");


  mov1 = new Movie(this, "1.mp4");
  mov2 = new Movie(this, "2.mp4");
  mov3 = new Movie(this, "3.mp4");
  mov4 = new Movie(this, "4.mp4");
  mov5 = new Movie(this, "5.mp4");
  mov6 = new Movie(this, "6.mp4");
  mov7 = new Movie(this, "7.mp4");
  mov8 = new Movie(this, "8.mp4");
  mov9 = new Movie(this, "9.mp4");
  mov10 = new Movie(this, "10.mp4");
  mov11 = new Movie(this, "11.mp4");
  mov12 = new Movie(this, "12.mp4");
  mov13 = new Movie(this, "13.mp4");
  mov14 = new Movie(this, "14.mp4");
  mov15 = new Movie(this, "15.mp4");
  mov16 = new Movie(this, "16.mp4");
  mov17 = new Movie(this, "17.mp4");
  mov18 = new Movie(this, "18.mp4");
  mov19 = new Movie(this, "19.mp4");
  mov20 = new Movie(this, "20.mp4");

  time=millis();

  //create 64 hexagrams
  hex = new Hexagram[65];

  hex[1] = new Hexagram("The Creative", "Heaven", "Heaven", mov1);
  hex[2] = new Hexagram("The Receptive", "Earth", "Earth", mov2);
  hex[3] = new Hexagram("Difficulty at the Beginning", "Water", "Thunder", mov3);
  hex[4] = new Hexagram("Youthful Folly", "Mountain", "Water", mov4);
  hex[5] = new Hexagram("Waiting (Nourishment)", "Water", "Heaven", mov5);
  hex[6] = new Hexagram("Conflict", "Heaven", "Water", mov6);
  hex[7] = new Hexagram("The Army", "Earth", "Water", mov7);
  hex[8] = new Hexagram("Holding Together", "Water", "Earth", mov8);
  hex[9] = new Hexagram("The Taming Power of the Small", "Wind", "Heaven", mov9);
  hex[10] = new Hexagram("Treading", "Heaven ", "Lake", mov10);
  hex[11] = new Hexagram("Peace", "Earth", "Heaven", mov11);
  hex[12] = new Hexagram("Standstill", "Heaven", "Earth", mov12);
  hex[13] = new Hexagram("Fellowship with Men", "Heaven ", "Flame", mov13);
  hex[14] = new Hexagram("Possession in Great Measure", "Flame", "Heaven", mov14);
  hex[15] = new Hexagram("Modesty", "Earth", "Mountain", mov15);
  hex[16] = new Hexagram("Enthusiasm", "Thunder", "Earth", mov16);
  hex[17] = new Hexagram("Following", "Lake", "Thunder", mov17);
  hex[18] = new Hexagram("Work on what has been spoiled", "Mountain", "Wind", mov18);
  hex[19] = new Hexagram("Approach", "Earth", "Lake", mov19);
  hex[20] = new Hexagram("Contemplation", "Wind", "Earth", mov20);
}


void draw() {
  m = millis() - time;
  //println("m " + m);

  //when hex[i] is chosen, play hex[i]trigram video 1, then play hex[i]trigram video 2, then show hex[i] fortune, then reset. 
  //create a loop to draw trigrams and display hexagrams
  for (int i = 0; i < hex.length; i++) {
    if (randNum == i ) {
      println(randNum, hex[i].trigram1, hex[i].trigram2, hex[i].meaning);

      if (hex[i].trigram1 == "Heaven") {
        image(heavenMov, width/2, height/2);
        heavenMov.play();

        //play trigram 2
        if (m > 38000) {
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
          } else if (hex[i].trigram2 == "Lake") {
            image(lake2Mov, width/2, height/2);
            lake2Mov.play();
          } else if (hex[i].trigram2 == "Fire") {
            image(fire2Mov, width/2, height/2);
            fire2Mov.play();
          } else if (hex[i].trigram2 == "Wind") {
            image(wind2Mov, width/2, height/2);
            wind2Mov.play();
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
          } else if (hex[i].trigram2 == "Lake") {
            image(lake2Mov, width/2, height/2);
            lake2Mov.play();
          } else if (hex[i].trigram2 == "Fire") {
            image(fire2Mov, width/2, height/2);
            fire2Mov.play();
          } else if (hex[i].trigram2 == "Wind") {
            image(wind2Mov, width/2, height/2);
            wind2Mov.play();
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
          } else if (hex[i].trigram2 == "Lake") {
            image(lake2Mov, width/2, height/2);
            lake2Mov.play();
          } else if (hex[i].trigram2 == "Fire") {
            image(fire2Mov, width/2, height/2);
            fire2Mov.play();
          } else if (hex[i].trigram2 == "Wind") {
            image(wind2Mov, width/2, height/2);
            wind2Mov.play();
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
          } else if (hex[i].trigram2 == "Lake") {
            image(lake2Mov, width/2, height/2);
            lake2Mov.play();
          } else if (hex[i].trigram2 == "Fire") {
            image(fire2Mov, width/2, height/2);
            fire2Mov.play();
          } else if (hex[i].trigram2 == "Wind") {
            image(wind2Mov, width/2, height/2);
            wind2Mov.play();
          } else {
            image(thunder2Mov, width/2, height/2);
            thunder2Mov.play();
          };
        }
      } else if (hex[i].trigram1 == "Lake") {
        image(lakeMov, width/2, height/2);
        lakeMov.play();
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
          } else if (hex[i].trigram2 == "Lake") {
            image(lake2Mov, width/2, height/2);
            lake2Mov.play();
          } else if (hex[i].trigram2 == "Fire") {
            image(fire2Mov, width/2, height/2);
            fire2Mov.play();
          } else if (hex[i].trigram2 == "Wind") {
            image(wind2Mov, width/2, height/2);
            wind2Mov.play();
          } else {
            image(thunder2Mov, width/2, height/2);
            thunder2Mov.play();
          };
        }
        } else if (hex[i].trigram1 == "Fire") {
        image(fireMov, width/2, height/2);
        fireMov.play();
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
          } else if (hex[i].trigram2 == "Lake") {
            image(lake2Mov, width/2, height/2);
            lake2Mov.play();
          } else if (hex[i].trigram2 == "Fire") {
            image(fire2Mov, width/2, height/2);
            fire2Mov.play();
          } else if (hex[i].trigram2 == "Wind") {
            image(wind2Mov, width/2, height/2);
            wind2Mov.play();
          } else {
            image(thunder2Mov, width/2, height/2);
            thunder2Mov.play();
          };
        }
        } else if (hex[i].trigram1 == "Wind") {
        image(windMov, width/2, height/2);
        windMov.play();
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
          } else if (hex[i].trigram2 == "Lake") {
            image(lake2Mov, width/2, height/2);
            lake2Mov.play();
          } else if (hex[i].trigram2 == "Fire") {
            image(fire2Mov, width/2, height/2);
            fire2Mov.play();
          } else if (hex[i].trigram2 == "Wind") {
            image(wind2Mov, width/2, height/2);
            wind2Mov.play();
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
          } else if (hex[i].trigram2 == "Lake") {
            image(lake2Mov, width/2, height/2);
            lake2Mov.play();
          } else if (hex[i].trigram2 == "Fire") {
            image(fire2Mov, width/2, height/2);
            fire2Mov.play();
          } else if (hex[i].trigram2 == "Wind") {
            image(wind2Mov, width/2, height/2);
            wind2Mov.play();
          } else {
            image(thunder2Mov, width/2, height/2);
            thunder2Mov.play();
          };
        }
      }
      //show fortune }
      if (m > 78000) {
        image(hex[i].fortune, width/2, height/2);
        hex[i].fortune.play();
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
  randNum = int(random(1, 20));
  time = millis();
  // println(millis());
}