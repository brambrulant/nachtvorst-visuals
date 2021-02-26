class Kaleido {
  
 int NUM_LINES = 400;
 float t;
 float r;
 float l = 150;
 float alpha = 150;
 float s;
 float sc = color(255,255,255,150);

void draw() {
  stroke(255);
  translate(width/2, height/2);
  for (int i = 0; i < NUM_LINES; i++) {
    line(x1(t+i), y1(t+i), x2(t), y2(t));
    rotate(r);
    }
  r = 100;
  t +=4;
  fill(255,255,255,255);
}

void changePattern() {
  t+= random(50, 250);
} 
  
void changeRotation() {
  r = 0;
}



float x1(float t) {
 return sin(t/100) * 200;
}
float y1(float t) {
  return sin(t/200) * 150;
}
float x2(float s) {
 return sin(t/800)  * 150;
}
float y2(float s) {
 return sin(t/900) * 10;
}

}
