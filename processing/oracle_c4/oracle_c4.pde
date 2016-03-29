import processing.serial.*;
Serial port;


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

int maxMovies = 64;
Movie[] mov = new Movie[maxMovies];



// set timing
int time;
int m;

//hexagram array
Hexagram[] hex;

//random number
//int randNum = 1;
int randNum = int(random(1, 63));


void setup() {
  //fullScreen();
  size(1200, 900);
  background(0);
  port = new Serial(this, "/dev/cu.usbmodem641", 9600);  // <-- SUBSTITUTE COMXX with your serial port name!!



  imageMode(CENTER);

  //load trigram 1 and 2 movies
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

  //load hexagram movies
  for (int i = 1; i < mov.length; i ++ ) {
    mov[i] = new Movie(this, i + ".mp4");
  }

  time=millis();

  //create 64 hexagrams
  hex = new Hexagram[65];

  hex[1] = new Hexagram("The Creative", "Heaven", "Heaven", mov[1]);
  hex[2] = new Hexagram("The Receptive", "Earth", "Earth", mov[2]);
  hex[3] = new Hexagram("Difficult Beginnings", "Water", "Thunder", mov[3]);
  hex[4] = new Hexagram("Inexperience", "Mountain", "Water", mov[4]);
  hex[5] = new Hexagram("Calculated Waiting", "Water", "Heaven", mov[5]);
  hex[6] = new Hexagram("Conflict", "Heaven", "Water", mov[6]);
  hex[7] = new Hexagram("Collective Force", "Earth", "Water", mov[7]);
  hex[8] = new Hexagram("Unity", "Water", "Earth", mov[8]);
  hex[9] = new Hexagram("Restraint", "Wind", "Heaven", mov[9]);
  hex[10] = new Hexagram("Conduct", "Heaven ", "Lake", mov[10]);
  hex[11] = new Hexagram("Prospering", "Earth", "Heaven", mov[11]);
  hex[12] = new Hexagram("Standstill", "Heaven", "Earth", mov[12]);
  hex[13] = new Hexagram("Community", "Heaven ", "Flame", mov[13]);
  hex[14] = new Hexagram("Possession in Great Measure", "Flame", "Heaven", mov[14]);
  hex[15] = new Hexagram("Humbling", "Earth", "Mountain", mov[15]);
  hex[16] = new Hexagram("Enthusiasm", "Thunder", "Earth", mov[16]);
  hex[17] = new Hexagram("Adaptation", "Lake", "Thunder", mov[17]);
  hex[18] = new Hexagram("Repair", "Mountain", "Wind", mov[18]);
  hex[19] = new Hexagram("Promotion", "Earth", "Lake", mov[19]);
  hex[20] = new Hexagram("Contemplation", "Wind", "Earth", mov[20]);
  hex[21] = new Hexagram("Reform", "Fire", "Thunder", mov[21]);
  hex[22] = new Hexagram("Grace", "Mountain", "Fire", mov[22]);
  hex[23] = new Hexagram("Splitting Apart", "Mountain", "Earth", mov[23]);
  hex[24] = new Hexagram("Returning", "Earth", "Thunder", mov[24]);
  hex[25] = new Hexagram("Innocense", "Heaven", "Thunder", mov[25]);
  hex[26] = new Hexagram("Great Potential", "Mountain", "Heaven", mov[26]);
  hex[27] = new Hexagram("Nourishment", "Mountain", "Thunder", mov[27]);
  hex[28] = new Hexagram("Critical Mass", "Lake", "Wind", mov[28]);
  hex[29] = new Hexagram("The Abyss", "Water", "Water", mov[29]);
  hex[30] = new Hexagram("Synergy", "Fire", "Fire", mov[30]);
  hex[31] = new Hexagram("Attraction", "Lake", "Mountain", mov[31]);
  hex[32] = new Hexagram("Endurance", "Thunder", "Wind", mov[32]);
  hex[33] = new Hexagram("Retreat", "Heaven", "Mountain", mov[33]);
  hex[34] = new Hexagram("Great Power", "Thunder", "Heaven", mov[34]);
  hex[35] = new Hexagram("Progress", "Fire", "Earth", mov[35]);
  hex[36] = new Hexagram("Darkening of the Light", "Earth", "Fire", mov[36]);
  hex[37] = new Hexagram("Family", "Wind", "Fire", mov[37]);
  hex[38] = new Hexagram("Opposition", "Fire", "Lake", mov[38]);
  hex[39] = new Hexagram("Obstacles", "Water", "Mountain", mov[39]);
  hex[40] = new Hexagram("Liberation", "Thunder", "Water", mov[40]);
  hex[41] = new Hexagram("Decrease", "Mountain", "Lake", mov[41]);
  hex[42] = new Hexagram("Increase", "Wind", "Thunder", mov[42]);
  hex[43] = new Hexagram("Break Through", "Lake", "Heaven", mov[43]);
  hex[44] = new Hexagram("Temptation", "Heaven", "Wind", mov[44]);
  hex[45] = new Hexagram("Gathering Together", "Lake", "Earth", mov[45]);
  hex[46] = new Hexagram("Advancement", "Earth", "Wind", mov[46]);
  hex[47] = new Hexagram("Adversity", "Lake", "Water", mov[47]);
  hex[48] = new Hexagram("The Well", "Water", "Wind", mov[48]);
  hex[49] = new Hexagram("Revolution", "Lake", "Fire", mov[49]);
  hex[50] = new Hexagram("The Cauldron", "Fire", "Wind", mov[50]);
  hex[51] = new Hexagram("Shock", "Thunder", "Thunder", mov[51]);
  hex[52] = new Hexagram("Meditation", "Mountain", "Mountain", mov[52]);
  hex[53] = new Hexagram("Gradual Progress", "Wind", "Mountain", mov[53]);
  hex[54] = new Hexagram("Subordinate", "Thunder", "Lake", mov[54]);
  hex[55] = new Hexagram("Abundance", "Thunder", "Fire", mov[55]);
  hex[56] = new Hexagram("Wanderer", "Fire", "Mountain", mov[56]);
  hex[57] = new Hexagram("Gentleness", "Wind", "Wind", mov[57]);
  hex[58] = new Hexagram("The Joyous", "Lake", "Lake", mov[58]);
  hex[59] = new Hexagram("Dispersion", "Wind", "Water", mov[59]);  
  hex[60] = new Hexagram("Limitations", "Water", "Lake", mov[60]);
  hex[61] = new Hexagram("Inner Truth", "Wind", "Lake", mov[61]);
  hex[62] = new Hexagram("Conscientiousness", "Thunder", "Mountain", mov[62]);
  hex[63] = new Hexagram("After Completion", "Water", "Fire", mov[63]);
  //hex[64] = new Hexagram("Before The End", "Fire", "Water", mov[64]);
}


void draw() {

  //  Process each one of the serial port events
    while (port.available () > 0) {
      serialEvent(port.read());
    }

  m = millis() - time;
  println("m " + m);
  println(frameRate);
  println(randNum);
  //when hex[i] is chosen, play hex[i]trigram video 1, then play hex[i]trigram video 2, then show hex[i] fortune, then reset. 
  //create a loop to draw trigrams and display hexagrams
  for (int i = 0; i < hex.length; i++) {
    if (randNum == i ) {
      //println(randNum, hex[i].trigram1, hex[i].trigram2, hex[i].meaning);

      if (hex[i].trigram1 == "Heaven") {
        image(heavenMov, width/2, height/2);
        heavenMov.play();

        //play trigram 2
        if (m > 50000) {
          // heavenMov.stop();
          if (hex[i].trigram2 == "Heaven") {
            image(heavenMov, width/2, height/2);
            heavenMov.play();
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
        if (m > 50000) {
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
        if (m > 50000) {
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
        if (m > 50000) {
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
        if (m > 50000) {
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
        if (m > 50000) {
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
        if (m > 50000) {
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
        if (m > 50000) {
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
      //show fortune 
      if (m > 100000) {
        //heaven2Mov.stop();
        image(hex[i].fortune, width/2, height/2);
        hex[i].fortune.play();
      }
    };
  }
}

void movieEvent(Movie m) {
  m.read();
}

void serialEvent(int serial) 
{  
  println("serial" + serial);  
  keyReleased(); 
}

void keyReleased()
{
  if (key==' ')  
  port.stop();

    heavenMov.stop();
  heaven2Mov.stop();
  waterMov.stop();
  water2Mov.stop();
  mountainMov.stop();
  mountain2Mov.stop();
  fireMov.stop();
  fire2Mov.stop();
  lakeMov.stop();
  lake2Mov.stop();
  earthMov.stop();
  earth2Mov.stop();
  windMov.stop();
  wind2Mov.stop();
  thunderMov.stop();
  thunder2Mov.stop();
  hex[randNum].fortune.stop();


  setup();
  randNum = int(random(1, 64));
  time = millis();
}

