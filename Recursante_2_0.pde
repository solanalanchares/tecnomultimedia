PImage intro;
PImage pieza;
PImage cama;
PImage laptop;
PImage tele;
PImage consola;
PFont pexico;
float tam = 50; 
float x = 0;
float y = 768;

void setup() {
  size(1024, 768);
  background(0);
  intro = loadImage("data/inicio.jpeg");
  pieza = loadImage("data/habitacion.png");
  cama = loadImage("data/cama.png");
  laptop = loadImage("data/laptop.png");
  tele = loadImage("data/tele.png");
  consola = loadImage("data/consola.png");
  intro.resize(1024, 768);
  pieza.resize(1024, 768);
  pexico = createFont("data/pexico.otf", 16);
}

void draw() {
  if (millis() < 1000) {  
    textFont(pexico);
    image(intro, 0, 0);
    text("En el 2020 la humanidad fue acechada por un virus, su aparición había sido\nreciente por lo que aún no se había encontrado una cura o tratamiento.\nLa medida que se había probado más eficiente\na la hora disminuir su expansión era el aislamiento preventivo.\nMuchas de las actividades que antes se hacían en espacios comunes\nahora han sido sido trasladadas, a la virtualidad o eliminadas temporalmente.", 10, 450);
  } else if (millis() > 2500) {
    background(0);
    image(pieza, 0, 0);
  }
  if(millis() > 3000) {
    ellipse(x, y, 50, 50);
    x += 2;
    y -= 1;
    if(x >= height/2) {
      x *= -1;
  }
}
}
