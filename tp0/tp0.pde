// ROSSI CATALINA 
// TP 0  COMISION 1
PImage mipaisaje;

void setup (){
  size (800,400);
  mipaisaje = loadImage("lunapaisaje.jpg");
}

void draw () {
  image(mipaisaje, 0,0);
  mipaisaje.resize(400,400);
  
// Luna
fill (245, 236, 141);

ellipse (600, 120, 100, 100);

// Manchas luna
fill (234, 199, 102);

ellipse (600, 120, 10, 10);
ellipse (600, 100, 12, 11);
ellipse (580, 115, 11, 10);
ellipse (590, 140, 20, 19);
ellipse (630, 150, 11, 10);
ellipse (620, 140, 9, 8);
ellipse (620, 120, 9, 8);


// Montañas

fill(40,41,75);
triangle (400, 400, 450, 260, 840, 410); // la del fondo

fill (49, 50, 90);
noStroke ();
triangle (400, 400, 600, 180, 840, 410); // la que esta al lado de la luna
triangle (400, 400, 700,163,840, 210);
triangle (400, 400, 790, 160, 840, 210);


fill (29,  41, 26); 
triangle (400, 450, 800, 183, 840, 410); //verdes

// arbustos 
fill(36,57,31);
rect ( 506, 310, 50, 50);

fill(18,28,16); 
rect ( 500, 340, 40, 50);
  



}
