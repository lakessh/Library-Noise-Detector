#include <Ethernet.h>
const int sensorPin = A0;

// This is for sound
int SensorValue = 0;

// Set to any mac address
byte mac[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };

IPAddress webServerIP(192,168,227,1);    // Put the IP address for your server

// Set the static IP address to use for Arduino client
IPAddress clientIP(192,168,227,2);

// Used for connecting to web server
EthernetClient client;

void setup() {
  Serial.begin(9600);
  Ethernet.begin(mac, clientIP);
  Serial.println("40 seconds delay...");

  
  // give the Ethernet shield some time to initialize:
  delay(50000);
  
}

void loop() {

 checkSound();
 delay(20000);
}



void checkSound(){
  SensorValue = analogRead(sensorPin);
  
 if (SensorValue <= 500){

       String soundstatus = """Normal""";
        
        String sensorsData="sensor3="+String(soundstatus);
         httpRequest("GET /sounddetector/add_sound.php?"+sensorsData+" HTTP/1.0");
  
 }else{
       String soundstatus = """Silent""";
        
        String sensorsData="sensor3="+String(soundstatus);
        httpRequest("GET /sounddetector/add_sound.php?"+sensorsData+" HTTP/1.0");

        int thisPitch = map(SensorValue, 500, 1000, 500, 1500);
        
        tone(9, thisPitch, 200);
        delay(10);
  
  
  }
 

}

void httpRequest(String request) 
{
/*---connect the "Arduino" as client to the web server---*/ 
   if (client.connect(webServerIP,80)) {  //connect the "Arduino" as client to the web server using socket   
      Serial.println("connected.");
      Serial.println("sending data to web server...");      
      Serial.println(request);
      Serial.println("Connection: close"); // telling the server that we are over transmitting the message
      Serial.println(); // empty line
/*----send sensors data to the web server using GET request---*/ 
      client.println(request);
      client.println("Connection: close"); // telling the server that we are over transmitting the message
      client.println();                    // empty line
/*----display the response message from the server------------*/
      httpResponse();
    }
    else {
/*---if Arduino can't connect to the server----------*/
      Serial.println("--> connection failed\n");
      while (true);                          // do nothing forevermore
    }
    if (client.connected()) { 
      client.stop();                         // close communication socket 
    }
}
/******************************************/
void httpResponse() 
{
  // if there are incoming bytes available
  // from the server, read them and print them:
  if (client.available()) {
    char c = client.read();
    Serial.print(c);
  }

  if (!client.connected()) {
    Serial.println();
    Serial.println("disconnecting.");
    client.stop();    // closing connection to server
  } 
}
