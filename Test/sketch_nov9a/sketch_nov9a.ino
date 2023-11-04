
#include <rp2040.h>


#define onBoaradLed 25

void setup() {
  delay(2000);
  Serial.begin(9600);
  pinMode(onBoaradLed,OUTPUT);
  
}

void setup1(){
  delay(2000);
  for (int i=0; i<20; i++){
    rp2040.fifo.push(i);
    delay(100);    
  }
  
}

void loop() {
    //blink();
    //delay(10);
    Serial.print(" >> ");
    Serial.print(rp2040.fifo.available());
    Serial.print("  ");       
    Serial.println(rp2040.fifo.pop());
}


void loop1(){
  //Serial.println(analogRead(26));
  //rp2040.fifo.push(analogRead(26));

}


void blink(){
    digitalWrite(onBoaradLed, HIGH);
    delay(500);
    digitalWrite(onBoaradLed, LOW);
    delay(500);
}
