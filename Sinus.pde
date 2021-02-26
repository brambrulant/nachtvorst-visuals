class Sinus {

int NUM_CIRCLES = 1;
float t;
float r;
float alpha = 150;
color sc;
float circleWidth = 10;
float[] circleColor = {255, 255, 255};


void draw() {
  noFill();
  stroke(circleColor[0], circleColor[1], circleColor[2]);
  translate(width/2, height/2);
  for (int i = 0; i < NUM_CIRCLES; i++) {
    ellipse(x1(t+i), y1(t+i), circleWidth,circleWidth);
    rotate(r);
    }
  t += 5;
  r = 100;
  circleWidth += 1;
  if (circleWidth > 100) {
     circleWidth = 10; 
    }
}

void velocity() {
  t = 0;
}

void addCircle() {
  NUM_CIRCLES += 1;
  if (NUM_CIRCLES > 64) {
   NUM_CIRCLES = 0;
   circleWidth = 10;
   }
}

void changeCircleWidth() {
 circleWidth = circleWidth - 15; 
}

void fillCircle() {
  circleColor[0] = random(0,255);
  circleColor[1] = random(0,255);
  circleColor[2] = random(0,255);
}



float x1(float t) {
 return sin(t/100) * 200;
}
float y1(float t) {
 return sin(t/200) * 200;
}

}
