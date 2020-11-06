class Maceta {
  PImage imagen;
  float posx;
  float posy;
  float tam;
  float vel;
  int contador = 0;
  float tamh;
  float tamw;
  
  Maceta(float x, float y, PImage img) {
    posx = x;
    posy = y;
    imagen = img;
    tamh = imagen.height;
    tamw = imagen.width;
    vel = 3;
  }

  void dibujar() {
    image(imagen, posx, posy);
  }

  void caer() {
    posy += vel;
  }

  void romper() {
    
  }

  void salvada() {
   posy = estanteY;
   posx = random(width/8, (width/8) * 6);
   j.puntaje += 1;
   vel += 0.1;
  }
}
