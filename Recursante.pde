//el juego se reinicia solo despues de 2 segs


//biblioteca MINIM
import ddf.minim.*;
Minim minim; 
AudioPlayer musica, musiquita, profe, keycaps, cat, flag;

//objetos AVENTURA
Pantallas p;
Botones b;
Aventura aventura;

//objetos MINIJUEGO
Minijuego j; 


void setup() {
  size(1200, 900);
  p = new Pantallas(0, 0);
  b = new Botones();
  aventura = new Aventura();
  j = new Minijuego();
  minim = new Minim(this);
  musica = minim.loadFile("data/minijuego.wav", 2048);
  musiquita = minim.loadFile("data/sims.mp3", 2048);
  profe = minim.loadFile("data/profe.mp3", 512);
  keycaps = minim.loadFile("data/keycaps.wav", 2048);
  cat = minim.loadFile("data/cat2.wav", 512);
  flag = minim.loadFile("data/flag.mp3"); 
  musiquita.loop(); 
}

void draw() {
  aventura.cicloEstados();
}

void keyPressed() {
  if (keyCode == LEFT) {
    j.a.lb = true;
  }
  if (keyCode == RIGHT) {
    j.a.rb = true;
  }
}

void keyReleased() {
  if (keyCode == LEFT)
  {
    j.a.lb = false;
  }
  if (keyCode == RIGHT)
  {
    j.a.rb = false;
  }
}
