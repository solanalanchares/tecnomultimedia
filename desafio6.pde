int cant = 15;
Ball [] balls = new Ball[cant];
/*Ball b; 
Ball b1;
Ball b2;
Ball b3; */
float ang = 0;
void setup() {
  size(800, 600);
  for(int i = 0; i < cant; i++) {
    balls[i] = new Ball(75 * i);
  }
  /*b1 = new Ball(width/3);
  b2 = new Ball(width/2);
  b3 = new Ball(width/1.5);*/
}

void draw() {
  ang += 0.015;
  background(0 + sin(ang)* 40);
  for(int i = 0; i < cant; i++) {
  balls[i].mostrar(i%4);
  //b1.mostrar(1);
 
  balls[i].mover();
  //b1.mover();
 
  balls[i].colision();
  //b1.colision();
  }
}
void mousePressed() {
  for(int i = 0; i < cant; i++) {
    balls[i].mostrar(i%2);
  }

}
