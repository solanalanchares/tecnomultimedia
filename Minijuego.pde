
class Minijuego {
  PImage [] macetas_img = new PImage[3];
  String estado;
  PFont catz;
  PImage fondo;
  int puntaje = 0;
  PFont roboto;
  

  Minijuego() {
     g = new Gatito(width/5, height/5.4);  
    a = new Almohadon(width/5, (height/5 * 4.5));
    estado = "inicio";
    fondo = loadImage("fondo.png");
    catz = createFont("Cute Meow.otf", 70);
    roboto = createFont("Roboto-Regular.ttf", 20);
    for (int i = 0; i <= 2; i++) {
      macetas_img[i] = loadImage("plant" + i + ".png");
      macetas[i] = new Maceta(random(width/8, (width/8) * 6), estanteY, macetas_img[i]);
    }
  }

  void cicloEstados() {
    if (estado.equals("inicio")) {
      inicio();
    }
    if (estado.equals("juego")) {
      background(255);
      image(fondo, 0, 0);
      textFont(roboto);
      fill(0);
      text("puntos: " + puntaje, 20, 20);
      a.dibujar();
      a.mover();
      for (int i = 0; i < macetas.length; i++) {
        macetas[i].dibujar();
      }     
      g.dibujar();
      g.mover();
    }
    if (estado.equals("perdi")) {
      background(0);
      fill(255);
      textAlign(CENTER);
      text("Puntaje Maximo: " + puntaje, width/2, height/2);
    }
  }

  void inicio() {
    background(0);
    textFont(catz);
    text("Brrrreaker Cat", 100, 100);
    if (mousePressed) {
      estado = "juego";
        musica.loop();
    }
  }

  void caenMacetas() {
    for (int i = 0; i < macetas.length; i++) {
      if (checkMaceta(g, macetas[i])) {
        macetas[i].caer();
      }
    }
  }

  // Chequea colisión entre gato y maceta
  boolean checkMaceta(Gatito g, Maceta m) {
    if ((g.posx + g.tamw >= m.posx + m.tamw/2 && g.posx <= m.posx + m.tamw/2) || m.posy > estanteY) {
      return true;
    } else {
      return false;
    }
  }

  // Chequea colisión entre almohadon y maceta
  void tocaAlmohadon() {
    for (int i = 0; i < macetas.length; i++) {
      if ((macetas[i].posx + (macetas[i].tamw/2) > a.posx) && (macetas[i].posx + (macetas[i].tamw/2)  <= a.posx + a.tamw) && (macetas[i].posy + macetas[i].tamh >=  a.posy) && (macetas[i].posy + macetas[i].tamh <=  a.posy + a.tamh)) {
        macetas[i].salvada();
      }
    }
  }


  void perder() {
    boolean perdi = true;
    for (int i = 0; i < macetas.length; i++) {
      if (macetas[i].posy < height) {
        perdi = false;
      }
    }
    if (perdi) {
      estado = "perdi";
    }
  }
}
