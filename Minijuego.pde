
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
    catz = createFont("AarcoverRegular.ttf", 70);
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
      textSize(20);
      fill(0);
      text("puntos: " + puntaje, width/2, height/12);
      a.dibujar();
      a.mover();
      for (int i = 0; i < macetas.length; i++) {
        macetas[i].dibujar();
      }     
      g.dibujar();
      g.mover();
    }
    if (estado.equals("perdi")) {
      musica.pause();
      background(0);
      textFont(catz);
      fill(random(255), random(255), random(255));
      textAlign(CENTER);
      textSize(40);
      text("Puntaje Maximo: " + puntaje, width/2, height/2);
    }
  }

  void inicio() {
    background(0);
    textFont(catz);
    textAlign(CENTER);
    fill(random(255) , random(255), random(255) );
    text("Brrrreaker\nCat", width/2, height/2);
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
