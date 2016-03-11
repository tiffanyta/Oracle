import gifAnimation.*;    // import the gifAnimation library
Gif waterAnimation; // create Gif object called myAnimation
Gif landAnimation; 
Gif fireAnimation; 
int num = int(random(1, 2));

String one = "The first hexagram is made up of six unbroken lines. These unbroken lines stand for the primal power, which is light-giving, active, strong, and of the spirit. The hexagram is consistently strong in character, and since it is without weakness, its essence is power or energy. Its image is heaven. Its energy is represented as unrestricted by any fixed conditions in space and is therefore conceived of as motion. Time is regarded as the basis of this motion. Thus the hexagram includes also the power of time and the power of persisting in time, that is, duration. The power represented by the hexagram is to be interpreted in a dual sense in terms of its action on the universe and of its action on the world of men. In relation to the universe, the hexagram expresses the strong, creative action of the Deity. In relation to the human world, it denotes the creative action of the holy man or sage, of the ruler or leader of men, who through his power awakens and develops their higher nature.";
String two = "The Receptive brings about sublime success, Furthering through the perseverance of a mare. If the superior man undertakes something and tries to lead, He goes astray; But if he follows, he finds guidance. It is favorable to find friends in the west and south, To forego friends in the east and north. Quiet perseverance brings good fortune.";
String three = "Times of growth are beset with difficulties. They resemble a first birth. But these difficulties arise from the very profusion of all that is struggling to attain form . Everything is in motion: therefore if one perseveres there is a prospect of great success, in spite of the existing danger. When it is a man's fate to undertake such new beginnings, everything is still unformed, dark. Hence he must hold back, because any premature move might bring disaster. Likewise, it is very important not to remain alone; in order to overcome the chaos he needs helpers. This is not to say, however, that he himself should look on passively at what is happening. He must lend his hand and participate with inspiration and guidance.";

void setup () {
  size(1200, 900);
  background(0);


  waterAnimation = new Gif(this, "water.gif"); // load animated GIF file from 
  // the data folder, replace 
  // "img01.gif" with the name of 
  // your GIF file
  landAnimation = new Gif(this, "land.gif");
  fireAnimation = new Gif(this, "fire.gif");


  waterAnimation.play();                       // play the animated GIF
  landAnimation.play();
  fireAnimation.play();

}

void draw () {
int time = millis();

  println(num);
  println(time);
  background(0);
  
  if (num == 1) {
    image(waterAnimation, 0, 0, width, height);   // display the animated GIF, define top left 
    image(waterAnimation, 0, height/2, width, height);
    textAlign(CENTER);
    text(one, 100, 400, 1000,1000);
    
  } else if (num == 2) {
    image(landAnimation, 0, 0, width, height);
        image(waterAnimation, 0, height/2, width, height);

    text(two, 100, 400, 1000,1000);
  } else {
    image(fireAnimation, 0, 0, width, height/2);
        image(waterAnimation, 0, height/2, width, height);

    text(three, 100, 400, 1000,1000);
  }
} // end draw

void mouseClicked() {
  num = int(random(1, 4));
}



