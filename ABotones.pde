class Botones {
  Botones() {
  }

  boolean checkButton(float x, float y, float x1, float y1) {
    if ((mouseX > x) && (mouseY > y) && (mouseX < x1) && (mouseY < y1)) {
      textFont(p.fuentes[1]);
      textSize(height/24);
      fill(255, 180);
      return true;
    } else {
      return false;
    }
  }

  void botonSig(float x, float y, float tam) {
    textAlign(LEFT);
    textSize(height/24);
    fill(99, 205, 218);
    rect(x, y, tam, tam/2, 10);
    fill(218, 220, 227);
    text("siguiente", x + width/80, y + height/20);
    if ((mouseX > x ) && (mouseY > y) && (mouseX < x + tam) && (mouseY < y + (tam/2)) && mousePressed) {
      if (aventura.estados.equals("inicio")) {
        aventura.estados = "mañana";
      }

      if (aventura.estados.equals("enclase")) {
        aventura.estados = "tarde";
      }

      if (aventura.estados.equals("hacertarea")) {
        aventura.estados = "noche";
        if (p.dia == 4) {
          aventura.estados = "final";
        }
      }

      if (aventura.estados.equals("creditos")) {
        aventura.estados = "menu";
      }
    }
  }

  void botonClase() {
    if (checkButton(width/4.41, height/2.17, width/3.65, height/2)) {
      rect(width/3.47, height/2.24, width/8, height/15, 30);
      fill(0);
      text("Ir a clases", width/3.40, height/2.03);
      if (mousePressed) {
        p.acts_del_dia += 1;
        p.notayasist[0] = true;
        p.dias_cursados += 1;
        aventura.estados = "enclase";
      }
    }
  }

  void botonVideojuego() {
    if (checkButton(width/1.47, height/2.27, width/1.28, height/1.85)) {
      rect(width/2.28, height/2.14, width/4.7, height/15, 30);
      fill(0);
      text("Jugar videojuegos", width/2.22, height/1.95);
      if (mousePressed) {
        p.acts_del_dia += 1;
        aventura.estados = "salepeli";
        j.estado ="inicioBreaker";
      }
    }
  }

  void botonTarea() {
    if (checkButton(width/4.41, height/2.17, width/3.65, height/2)) {
      rect(width/3.47, height/2.24, width/6.66, height/15, 30);
      fill(0);
      text("Hacer tarea", width/3.3, height/2.03);
      if (mousePressed) {
        p.acts_del_dia += 1;
        p.tareas_hechas += 1;
        aventura.estados = "hacertarea";
      }
    }
  }

  void botonDormir() {
    if (checkButton(width/3.2, height/3, width/1.95, height/2.57)) {
      rect(width/1.95, height/3.33, width/11.42, height/15, 30);
      fill(0);
      text("Dormir", width/1.91, height/2.9);
      if (mousePressed) {
        p.acts_del_dia += 1;
        p.dia += 1;
        aventura.estados = "dormir";
      }
    }
  }
  void reinicio() {
    p.dias_cursados = 0;
    p.tareas_hechas = 0;
    p.acts_del_dia = 0; 
    p.dia = 0;
    p.gamer = 0;
    p.ftime = 0;
    aventura.estados =  "menu";
  }

  void contador(float x, float y) {
    float tam = 20;
    textFont(p.fuentes[1]);
    strokeWeight(3);
    stroke(0);
    textSize(20);
    fill(255);
    text("Día", width/16, height/1.11);
    for (int i = 0; i < 6; i++) {
      if (i <= p.dia) { 
        fill(196, 69, 105);
      } else {
        fill(0);
      }
      rect(x + (i * tam), y, tam, tam);
    }
  }
}
