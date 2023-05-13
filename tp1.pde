// TP1 - Catalina Rossi - N° 93513/2 - Comisión 1 profesor: José Bugiolachi.
// Tema: Lugar de interés (Ushuaia)
//STRINGS
String texto1 = "Ushuaia se encuentra en Tierra del Fuego. \n Es uno de los lugares más turísticos \n de nuestro país.";
String texto2 = "Se pueden ver las auroras boreales \n cerca del lago Tekapo";
String texto3 = "..Un poco de la fauna \n autóctona de Ushuaia... \n .• *°";
// INT
int pantalla = 1;
int numero = 0;
int cuenta;
//FLOAT
float pos, tama;
float x;
float y;
float texto3X=640;
//FUENTE
PFont fuente;
//IMG
PImage paisaje1;
PImage paisaje2;
PImage paisaje3;
PImage boton;


void setup() {
  background(255);
  size(640, 480);
  cuenta = 0;
  pos= 480;
  boton = loadImage("restart.png");
  paisaje1 = loadImage("ushuaia1.jpg");
  paisaje2 = loadImage("ushuaia2.jpg");
  paisaje3 = loadImage("ushuaia3.jpeg");
  fuente = loadFont("mifuente.vlw");
  textFont(fuente);
}

void draw() {
  if (pantalla == 1) {
    background(255);
    image(paisaje1, 0, 0, 640, 480);
    fill(255);
    textAlign( CENTER);
    text(texto1, width /2, pos);
    pos--;
    numero += 2;
    if (numero == 700) {
      pantalla = 2;
      numero = 0;
    }
  } else if (pantalla == 2) {
    background(255);
    image(paisaje2, 0, 0, 640, 480);
    fill(245,0,4);
    textAlign(LEFT, CENTER);
    text(texto2, 30, numero);
    numero += 2;
    if (numero == 700) {
      pantalla = 3;
      numero = 0;
    }
  } else if (pantalla == 3) {
background(255);
 cuenta++;
image(paisaje3, 0, 0, 640, 480);
image(boton, 530, 410, 100, 50);
fill(0,20,227);
textSize(45);
text( "Catalina Rossi", 6, 10, 30); //(sin movimiento)
    textAlign(LEFT, CENTER);
    text(texto3, texto3X, height / 2);
    texto3X -= 1;
    if (texto3X < -400) {
      texto3X = 640;
      

    }
  }
}
void mousePressed() {
  if (mouseX > 530 && mouseX < 630 && mouseY > 410 && mouseY < 460 && pantalla == 3) {
    pantalla = 1;
    numero = 0;
    pos = 480;
  }
}
