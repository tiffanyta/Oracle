
int knockSensor = 0;
byte val = 0;

int THRESHOLD = 1;

void setup() {
  Serial.begin(9600);
}



void loop() {

  val = analogRead(knockSensor);

  if (val >= THRESHOLD) {
    Serial.println(val);
  }

  delay(100);  // we have to make a delay to avoid overloading the serial port

}
