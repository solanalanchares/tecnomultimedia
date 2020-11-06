class Almohadon {
  PImage almohadon;
  float posx;
  float posy;
  float tamw;
  float tamh;
  float vel;
  boolean lb;
  boolean rb;

  Almohadon(float x, float y) {
    almohadon = loadImage("almohadon.png");
    posx = x;
    posy = y; 
    tamw = almohadon.width;
    tamh = almohadon.height;
    vel = 4;
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

void keyPressed() {
    if (keyCode == LEFT) {
      a.lb = true;
    }
    if (keyCode == RIGHT) {
      a.rb = true;
    }
  }

  void keyReleased() {
    if (keyCode == LEFT)
    {
      a.lb = false;
    }
    if (keyCode == RIGHT)
    {
      a.rb = false;
    }
  }
