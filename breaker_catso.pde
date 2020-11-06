import ddf.minim.*;
Minim minim; 
AudioPlayer musica;

Minijuego j;
Gatito g; 
Almohadon a;
Maceta [] macetas = new Maceta[3];
float estanteY;
void setup() {
  size(800, 600);
  estanteY = height/6;
  j = new Minijuego();
  minim = new Minim(this);
  musica = minim.loadFile("data/XYLOJUNG.wav", 2048);
}

void draw() {
  j.cicloEstados();
  j.caenMacetas();
  j.tocaAlmohadon();
  j.perder();
}

void mousePressed() {
  // println(m.seSalva);
  //println(m.contador);
} 
