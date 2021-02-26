import themidibus.*; //Import the library

MidiBus myBus; // The MidiBus
Lines lines;
Sinus sinus;
Kaleido kaleido;

Particle[] p = new Particle[200];

String state;

void setup() {
  //fullScreen(); // uncomment for fullscreen
  size(1080, 860); // comment if fullscreen
  frameRate(30);
  
  MidiBus.list(); // List all available Midi devices on STDOUT. This will show each device's index and name.
  myBus = new MidiBus(this, 0, 1); // Create a new MidiBus using the device index to select the Midi input and output devices respectively.
  
  lines = new Lines();
  sinus = new Sinus();
  kaleido = new Kaleido();
  for(int i = 0; i < 200; i ++) {
      p[i] = new Particle(new PVector(random(width), random(height)), 100, 150);
    }
 }

void draw() {
  background(0);
  
  if (state == "lines") {
  lines.draw(x, xx, y , yy, stroke);
  } else if (state == "sinus") {
  sinus.draw();
  } else if (state == "kaleido") {
  kaleido.draw();    
  } else if (state == "particles") {
      for(int i = 0; i < 200; i ++) {
        p[i].update(p, i);
      }
  }
}
 
void keyPressed() {
  if (key == '1') {
   state = "lines";
  } else if (key == '2') {
    state = "sinus";
  } else if (key == '3') {
    state = "kaleido";
  } else if(key == '4') {
    state = "particles"; 
  }
}
