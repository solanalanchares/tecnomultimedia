class Almohadon {
  PImage almohadon;
  float posx;
  float posy;
  float tamw;
  float tamh;
  float vel;
  boolean lb;
  boolean rb;
  
  //int resi = width/14; 
  //int resi1 = height/12;

  Almohadon(float x, float y) {
    almohadon = loadImage("almohadon.png");
    scale(0.5);
    posx = x;
    posy = y; 
    almohadon.resize(int((almohadon.width/800.0) * width), int((almohadon.height/600.0) * height));
    tamw = almohadon.width;
    tamh = almohadon.height;
    vel = width/200*2;
    lb = false;
    rb = false;
    
  }

  void dibujar() {
    image(almohadon, posx, posy);
  }

  void mover() {
    if (rb) {
      posx += vel;
    }
    if (lb) {
      posx -= vel;
    }
  }
}
