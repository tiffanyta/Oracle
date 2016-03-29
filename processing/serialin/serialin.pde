//importing piezoSend for oracle project

import processing.serial.*;
import processing.video.*;

Movie waterMov;

int val = 0;
Serial port;

void setup()
{
  size(200, 200);
  background(255, 0, 0);
  waterMov = new Movie (this, "water.mov");
  // Open your serial port
  port = new Serial(this, "/dev/cu.usbmodem641", 9600);  // <-- SUBSTITUTE COMXX with your serial port name!!
}

void draw()
{
  //  Process each one of the serial port events
  while (port.available () > 0) {
    serialEvent(port.read());
  }
  background(val);
}

void serialEvent(int serial) 
{  
    val = int(random(255));
    println(serial);   
}

