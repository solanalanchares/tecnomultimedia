class Maceta {
  PImage imagen;
  float posx;
  float posy;
  float tam;
  float vel;
  int contador = 0;
  float tamH;
  float tamW;
  float acel = 0.5;

  //Resize Imágenes
  int resi;
  int resi1; 

  Maceta(float x, float y, PImage img) {
    posx = x;
    posy = y;
    imagen = img;
    imagen.resize(int((imagen.width/800.0) * width), int((imagen.height/600.0) * height));
    tamH = imagen.height;
    tamW = imagen.width;
    vel = width/266.66;
    println(vel);

  }

  void dibujar() {
    image(imagen, posx, posy);
  }

  void caer() {
    posy += vel;
  }

  void salvada() {
   posy = j.estanteY;
   posx = random(width/8, (width/8) * 6);
   j.puntaje += 1;
   vel += acel;
  }
}
