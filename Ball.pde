class Ball {
  color [] relleno = {color(#DB2B39), color(#29335C), color(#F3A712), color(#90BE6D)};
  float posx;
  float posy;
  float rad;
  float vel;

  Ball(float x) {
    posx = x;   
    rad = random(25, 75);
    vel = 3;
  }

  void mostrar(int c) {
    noStroke();
    fill(relleno[c]);
    ellipse(posx +rad/2, posy, rad, rad);}
  
  void mover() {
    posy += vel;
  }
  void colision() {
    if (posy + rad >= height || posy <= 0) {
      vel *= -1;
    }
  }
}
