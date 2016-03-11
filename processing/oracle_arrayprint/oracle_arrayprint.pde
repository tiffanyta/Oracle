  int randNum = int(random(0,3));

void setup() {
  size(600, 600);
  background(0);
  
}

void draw() {
  String[] myHex = {"Heaven", "Earth", "Water"};
  int hexNum = 0;

  while (hexNum < myHex.length) {
    text(myHex[hexNum], 10, 30+hexNum*30);
    hexNum++;
  }
  
 
  for (int i = 0; i < myHex.length; i++) {
    if(randNum == i){
      println(randNum);
    println(myHex[i]);
  }
  }
}
  
 


