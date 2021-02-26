int amountOfInfectedParticles = 0;

void noteOn(int channel, int pitch, int velocity) {
  // Receive a noteOn
  println();
  println("Note On:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
  
  if (channel == 15 && pitch == 36) { // kick
     circles.syncNoise();
     sinus.velocity();
     amountOfInfectedParticles +=1;
     
     if (amountOfInfectedParticles == 200) {
       amountOfInfectedParticles = 0; 
       }
       
     for (int i = 0; i < amountOfInfectedParticles; i++) {
      p[i].increaseVelocity();
      }
    
  }
   if (channel == 15 && pitch == 38) { // snare
     circles.addLine();
     sinus.addCircle();
     kaleido.changePattern();
     }   
   if (channel == 15 && pitch == 42) { // Closed Hat
     circles.circleStroke();
     sinus.fillCircle();
     kaleido.changeRotation();
     }
   if (channel == 15 && pitch == 46) { // Open Hat
     circles.changeXX(velocity);
     sinus.changeCircleWidth();
     } 
}

void noteOff(int channel, int pitch, int velocity) {
  //delay(250);
  if (channel == 15 && pitch == 39) {
    delay(10); 
    }
}

void controllerChange(int channel, int number, int value) {
  // Receive a controllerChange
  //println();
  //println("Controller Change:");
  //println("--------");
  //println("Channel:"+channel);
  //println("Number:"+number);
  //println("Value:"+value);
}

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}
