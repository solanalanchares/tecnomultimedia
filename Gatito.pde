class Gatito {
  int numFrames = 4;
  PImage [] sprites = new PImage[numFrames];
  float posx;
  float posy;
  float vel;
  int frame;
  boolean izq;
  float tamw;
  float acel = 1;

  //int resi = width/22;
  //int resi1 = height/12;


  Gatito(float x, float y) {
    for (int i = 0; i < sprites.length; i++) {
      sprites[i] = loadImage("data/cat" + i + ".png");
      sprites[i].resize(int((sprites[i].width/800.0) * width), int((sprites[i].height/600.0) * height));
    }
    posx = x;
    posy = y;
    vel = (width/800)*3;
    izq = false;
    tamw = 57;
  }

  void dibujar() {
    frame = ((frameCount * int(acel))/20) % numFrames;
    for (int i = 0; i < sprites.length; i++) {
      if (i <= frame && !izq) {
        image(sprites[int(frame%2)], posx, posy);
      }
      if (izq) {
        image(sprites[int(frame%2 + 2)], posx, posy);
      }
    }
  }

  void mover() {
    posx += vel * acel;
    acel += 0.001;
    if (posx >= (width/8)*6) {
      vel *= -1;
      izq = true;
    }
    if (posx <= width/8) {
      vel *= -1;
      izq = false;
    }
  }
}
