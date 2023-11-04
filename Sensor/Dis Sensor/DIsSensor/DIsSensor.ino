void setup() {
  Serial.begin(9600);
  

}

void loop() {
  Serial.println(analogRead(26));
  delay(100);

}
