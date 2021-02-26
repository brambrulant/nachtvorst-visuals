class Lines {

  float x = random(100, 120);
  float xx = random (300, 320); 
  float y = 0;
  float yy = 0;
  float xoff = 0;
  float xxoff = 0;
  float off = 0;
  float add = 360;
  float[] stroke = {255, 255, 255};
  
  
void draw(float x, float xx, float y, float yy, float stroke[]) {
  translate(width/2, height/2);
  xoff = xoff + 0.005;
  xxoff = xxoff + 0.01;
  for (int n=0; n<2; n++)  {
     stroke[0] = noise(n + xxoff) * 255;
     stroke[1] = noise(n + xoff) * 255;
     stroke[2] = noise(n + xoff) * 255;
     stroke(stroke[0], stroke[1], stroke[2]);
     for (float a=0; a<360; a+=add) {
        x = map(noise(xoff), 0, 1, 0, 1000);
        xx = map(noise(xxoff + a), 0, 1, 200, 509);
        pushMatrix();
        rotate(radians(a));
        strokeCap(CORNER);
        strokeWeight(1);
        line(x, y, xx, yy);
        popMatrix();
       }
     }
  }
  
void addLine() {
  add = add / 1.40625;
  if (add < 0.703125) {
      add = random(0, 90);
     }
 }
    
void syncNoise() {
  xoff = 0;
  xxoff = 200;
   } 
   
void circleStroke() {
  //change color?
   }
   
void changeXX(float vel) {
    xx = vel; 
   }
}
