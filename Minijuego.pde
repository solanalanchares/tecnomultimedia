class Minijuego {
  PImage [] macetas_img = new PImage[3];
  String estado;
  PFont catz;
  PImage fondo;
  int puntaje = 0;
  PFont roboto;
  float estanteY;
  int macetaCae = 0; 
  Gatito g; 
  Almohadon a;
  Maceta [] macetas = new Maceta[3];

  Minijuego() {
    fondo = loadImage("fondo.png");
    estanteY = height/6;
    catz = createFont("AarcoverRegular.ttf", 70);
    roboto = createFont("Roboto-Regular.ttf", 20);
    g = new Gatito(width/5, estanteY);  
    a = new Almohadon(width/5, (height/5 * 4.3));
    for (int i = 0; i <= 2; i++) {
      macetas_img[i] = loadImage("plant" + i + ".png");
      macetas[i] = new Maceta(random(width/8, (width/8) * 6), estanteY, macetas_img[i]);
    }
  }

  void cicloEstados() {
    if (estado.equals("inicioBreaker")) {
      ejecutar();
    }
    if (estado.equals("juego")) {
      juego();
    }
    if (estado.equals("gameOver")) {
      gameOver();
    }
    caenMacetas();
    tocaAlmohadon();
    perder();
  }

  void ejecutar() {
    background(0);
    textFont(catz);
    textAlign(CENTER);
    fill(random(255), random(255), random(255) );
    text("Brrrreaker\nCat", width/2, height/2);
  }

  void juego() {
    background(255);
    fondo.resize(width, height);
    image(fondo, 0, 0);
    textFont(roboto);
    textSize(20);
    fill(0);
    text("Puntos: " + puntaje, width/2, height/12);
    a.dibujar();
    //a.controles();
    for (int i = 0; i < macetas.length; i++) {
      macetas[i].dibujar();
    }     
    g.dibujar();
    g.mover();
    a.mover();
  }

  void gameOver() {
    musica.pause();
    background(0);
    textFont(catz);
    fill(random(255), random(255), random(255));
    textAlign(CENTER);
    textSize(40);
    text("Puntaje Maximo: " + puntaje, width/2, height/2);
  }

  void caenMacetas() {
    for (int i = 0; i < macetas.length; i++) {
      if (checkMaceta(g, macetas[i])) {
        macetas[i].caer();
      }
    }
  }

  void tocaAlmohadon() {
    for (int i = 0; i < macetas.length; i++) {
      if ((macetas[i].posx + (macetas[i].tamW/2) > a.posx) && (macetas[i].posx + (macetas[i].tamW/2)  <= a.posx + a.tamw) && (macetas[i].posy + macetas[i].tamH >=  a.posy) && (macetas[i].posy + macetas[i].tamH <=  a.posy + a.tamh)) {
        macetas[i].salvada();
      }
    }
  }

  void perder() {
    boolean perdi = true;
    int contarMaceta = 3; 
    for (int i = 0; i < macetas.length; i++) {
      if (macetas[i].posy < height) {
        perdi = false;
        contarMaceta--;
      }
    }
    if (contarMaceta != macetaCae) {
      macetaCae = contarMaceta; 
      cat.rewind(); 
      cat.play();
    }
    if (perdi) {
      estado = "gameOver";
    }
  }

  boolean checkMaceta(Gatito g, Maceta m) {
    if ((g.posx + g.tamw >= m.posx + m.tamW/2 && g.posx <= m.posx + m.tamW/2) || m.posy > estanteY) {
      return true;
    } else {
      return false;
    }
  }

  void reBoot() {
    estado = "inicio";
    g.izq = false;
    puntaje = 0; 
    for (int i = 0; i < macetas.length; i++) {
      macetas[i].vel = 3;
      macetas[i].posy = estanteY;
    }
    g.vel = 2;
    g.acel = 1;
    a.posx = width/2 - (a.tamw/2);
  }
}

void mousePressed() {

  if (aventura.estados.equals("salepeli")) {
    if (j.estado.equals("inicioBreaker")) {
      j.estado = "juego";
      musiquita.pause(); 
      musica.rewind();
      musica.loop();
    }
    if (j.estado.equals("gameOver")) {
      j.reBoot();
      musiquita.loop();
      if (p.acts_del_dia == 2) {
        aventura.estados = "noche";
        p.gamer += 1;
      } else {
        aventura.estados = "tarde";
        p.gamer += 1;
      }
      if (p.dia == 4) { 
        aventura.estados = "final";
      }
    }
  }
}
