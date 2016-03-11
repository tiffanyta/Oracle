//importing piezo-test2 for oracle project

import processing.serial.*;

String buff = "";
int val = 0;
int NEWLINE = 10;

Serial port;

void setup()
{
  size(200, 200);

  // Open your serial port
  port = new Serial(this, "/dev/cu.usbmodem411", 9600);  // <-- SUBSTITUTE COMXX with your serial port name!!
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
   if(serial != NEWLINE) { 
      buff += char(serial);
   } else {
      buff = buff.substring(1, buff.length()-1);
      // Capture the string and print it to the commandline
      // we have to take from position 1 because 
      // the Arduino sketch sends EOLN (10) and CR (13)
      if (val == 0) {
        val = 255;
      } else {
        val = 0;
      }
      println(buff);
      // Clear the value of "buff"
      buff = "";
     }
  }

