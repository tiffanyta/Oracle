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
Movie mov21;
Movie mov22;
Movie mov23;
Movie mov24;
Movie mov25;
Movie mov26;
Movie mov27;
Movie mov28;
Movie mov29;
Movie mov30;
Movie mov31;
Movie mov32;
Movie mov33;
Movie mov34;
Movie mov35;
Movie mov36;
Movie mov37;
Movie mov38;
Movie mov39;
Movie mov40;
Movie mov41;
Movie mov42;
Movie mov43;
Movie mov44;
Movie mov45;
Movie mov46;
Movie mov47;
Movie mov48;
Movie mov49;
Movie mov50;
Movie mov51;
Movie mov52;
Movie mov53;
Movie mov54;
Movie mov55;
Movie mov56;
Movie mov57;
Movie mov58;
Movie mov59;
Movie mov60;
Movie mov61;
Movie mov62;
Movie mov63;
Movie mov64;



// set timing
int time;
int m;

//hexagram array
Hexagram[] hex;

//random number
//int randNum = int(random(1, 7));
int randNum = int(random(1, 64));


void setup() {
  //fullScreen();
  size(700, 400);
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
  mov21 = new Movie(this, "21.mp4");
  mov22 = new Movie(this, "22.mp4");
  mov23 = new Movie(this, "23.mp4");
  mov24 = new Movie(this, "24.mp4");
  mov25 = new Movie(this, "25.mp4");
  mov26 = new Movie(this, "26.mp4");
  mov27 = new Movie(this, "27.mp4");
  mov28 = new Movie(this, "28.mp4");
  mov29 = new Movie(this, "29.mp4");
  mov30 = new Movie(this, "30.mp4");
  mov31 = new Movie(this, "31.mp4");
  mov32 = new Movie(this, "32.mp4");
  mov33 = new Movie(this, "33.mp4");
  mov34 = new Movie(this, "34.mp4");
  mov35 = new Movie(this, "35.mp4");
  mov36 = new Movie(this, "36.mp4");
  mov37 = new Movie(this, "37.mp4");
  mov38 = new Movie(this, "38.mp4");
  mov39 = new Movie(this, "39.mp4");
  mov40 = new Movie(this, "40.mp4");
  mov41 = new Movie(this, "41.mp4");
  mov42 = new Movie(this, "42.mp4");
  mov43 = new Movie(this, "43.mp4");
  mov44 = new Movie(this, "44.mp4");
  mov45 = new Movie(this, "45.mp4");
  mov46 = new Movie(this, "46.mp4");
  mov47 = new Movie(this, "47.mp4");
  mov48 = new Movie(this, "48.mp4");
  mov49 = new Movie(this, "49.mp4");
  mov50 = new Movie(this, "50.mp4");
  mov51 = new Movie(this, "51.mp4");
  mov52 = new Movie(this, "52.mp4");
  mov53 = new Movie(this, "53.mp4");
  mov54 = new Movie(this, "54.mp4");
  mov55 = new Movie(this, "55.mp4");
  mov56 = new Movie(this, "56.mp4");
  mov57 = new Movie(this, "57.mp4");
  mov58 = new Movie(this, "58.mp4");
  mov59 = new Movie(this, "59.mp4");
  mov60 = new Movie(this, "60.mp4");
  mov61 = new Movie(this, "61.mp4");
  mov62 = new Movie(this, "62.mp4");
  mov63 = new Movie(this, "63.mp4");
  mov64 = new Movie(this, "64.mp4");


  time=millis();

  //create 64 hexagrams
  hex = new Hexagram[65];

  hex[1] = new Hexagram("The Creative", "Heaven", "Heaven", mov1);
  hex[2] = new Hexagram("The Receptive", "Earth", "Earth", mov2);
  hex[3] = new Hexagram("Difficult Beginnings", "Water", "Thunder", mov3);
  hex[4] = new Hexagram("Inexperience", "Mountain", "Water", mov4);
  hex[5] = new Hexagram("Calculated Waiting", "Water", "Heaven", mov5);
  hex[6] = new Hexagram("Conflict", "Heaven", "Water", mov6);
  hex[7] = new Hexagram("Collective Force", "Earth", "Water", mov7);
  hex[8] = new Hexagram("Unity", "Water", "Earth", mov8);
  hex[9] = new Hexagram("Restraint", "Wind", "Heaven", mov9);
  hex[10] = new Hexagram("Conduct", "Heaven ", "Lake", mov10);
  hex[11] = new Hexagram("Prospering", "Earth", "Heaven", mov11);
  hex[12] = new Hexagram("Standstill", "Heaven", "Earth", mov12);
  hex[13] = new Hexagram("Community", "Heaven ", "Flame", mov13);
  hex[14] = new Hexagram("Possession in Great Measure", "Flame", "Heaven", mov14);
  hex[15] = new Hexagram("Humbling", "Earth", "Mountain", mov15);
  hex[16] = new Hexagram("Enthusiasm", "Thunder", "Earth", mov16);
  hex[17] = new Hexagram("Adaptation", "Lake", "Thunder", mov17);
  hex[18] = new Hexagram("Repair", "Mountain", "Wind", mov18);
  hex[19] = new Hexagram("Promotion", "Earth", "Lake", mov19);
  hex[20] = new Hexagram("Contemplation", "Wind", "Earth", mov20);
  hex[21] = new Hexagram("Reform", "Fire", "Thunder", mov21);
  hex[22] = new Hexagram("Grace", "Mountain", "Fire", mov22);
  hex[23] = new Hexagram("Splitting Apart", "Mountain", "Earth", mov23);
  hex[24] = new Hexagram("Returning", "Earth", "Thunder", mov24);
  hex[25] = new Hexagram("Innocense", "Heaven", "Thunder", mov25);
  hex[26] = new Hexagram("Great Potential", "Mountain", "Heaven", mov26);
  hex[27] = new Hexagram("Nourishment", "Mountain", "Thunder", mov27);
  hex[28] = new Hexagram("Critical Mass", "Lake", "Wind", mov28);
  hex[29] = new Hexagram("The Abyss", "Water", "Water", mov29);
  hex[30] = new Hexagram("Synergy", "Fire", "Fire", mov30);
  hex[31] = new Hexagram("Attraction", "Lake", "Mountain", mov31);
  hex[32] = new Hexagram("Endurance", "Thunder", "Wind", mov32);
  hex[33] = new Hexagram("Retreat", "Heaven", "Mountain", mov33);
  hex[34] = new Hexagram("Great Power", "Thunder", "Heaven", mov34);
  hex[35] = new Hexagram("Progress", "Fire", "Earth", mov35);
  hex[36] = new Hexagram("Darkening of the Light", "Earth", "Fire", mov36);
  hex[37] = new Hexagram("Family", "Wind", "Fire", mov37);
  hex[38] = new Hexagram("Opposition", "Fire", "Lake", mov38);
  hex[39] = new Hexagram("Obstacles", "Water", "Mountain", mov39);
  hex[40] = new Hexagram("Liberation", "Thunder", "Water", mov40);
  hex[41] = new Hexagram("Decrease", "Mountain", "Lake", mov41);
  hex[42] = new Hexagram("Increase", "Wind", "Thunder", mov42);
  hex[43] = new Hexagram("Break Through", "Lake", "Heaven", mov43);
  hex[44] = new Hexagram("Temptation", "Heaven", "Wind", mov44);
  hex[45] = new Hexagram("Gathering Together", "Lake", "Earth", mov45);
  hex[46] = new Hexagram("Advancement", "Earth", "Wind", mov46);
  hex[47] = new Hexagram("Adversity", "Lake", "Water", mov47);
  hex[48] = new Hexagram("The Well", "Water", "Wind", mov48);
  hex[49] = new Hexagram("Revolution", "Lake", "Fire", mov49);
  hex[50] = new Hexagram("The Cauldron", "Fire", "Wind", mov50);
  hex[51] = new Hexagram("Shock", "Thunder", "Thunder", mov51);
  hex[52] = new Hexagram("Meditation", "Mountain", "Mountain", mov52);
  hex[53] = new Hexagram("Gradual Progress", "Wind", "Mountain", mov53);
  hex[54] = new Hexagram("Subordinate", "Thunder", "Lake", mov54);
  hex[55] = new Hexagram("Abundance", "Thunder", "Fire", mov55);
  hex[56] = new Hexagram("Wanderer", "Fire", "Mountain", mov56);
  hex[57] = new Hexagram("Gentleness", "Wind", "Wind", mov57);
  hex[58] = new Hexagram("The Joyous", "Lake", "Lake", mov58);
  hex[59] = new Hexagram("Dispersion", "Wind", "Water", mov59);  
  hex[60] = new Hexagram("Limitations", "Water", "Lake", mov60);
  hex[61] = new Hexagram("Inner Truth", "Wind", "Lake", mov61);
  hex[62] = new Hexagram("Conscientiousness", "Thunder", "Mountain", mov62);
  hex[63] = new Hexagram("After Completion", "Water", "Fire", mov63);
  hex[64] = new Hexagram("Before The End", "Fire", "Water", mov64);
  
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
      //show fortune 
      if (m > 78000) {
        image(hex[i].fortune, width/2, height/2);
        hex[i].fortune.play();
      }
    };
  }
}

void movieEvent(Movie m) {
  m.read();
}

void keyReleased()
{
  if (key==' ')  
    setup();
  randNum = int(random(1, 64));
  time = millis();
}