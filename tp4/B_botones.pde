// boton siguiente
void botonSig(float x, float y, float tam) {
  textAlign(LEFT);
  textSize(25);
  fill(99, 205, 218);
  rect(x, y, tam, tam/2, 10);
  fill(218, 220, 227);
  text("siguiente", x + 10, y + 30);

  if ((mouseX > x ) && (mouseY > y) && (mouseX < x + tam) && (mouseY < y + (tam/2)) && mousePressed) {
    if (estados.equals("inicio")) {
      estados = "mañana";
    }
    if (estados.equals("enclase")) {
      estados = "tarde";
    }
    if (estados.equals("hacertarea")) {
      estados = "noche";
      if (dia == 4) {
        estados = "final";
      }
    }
    if (estados.equals("salepeli")) {
      if (acts_del_dia == 2) {
        estados = "noche";
      } else {
        estados = "tarde";
      }
      if(dia == 4) { 
        estados = "final";
      }
  }
  }
}
//boton ir a clases
void botonClase() {
  textFont(fuentes[1]);
  if ((mouseX > 164) && (mouseY > 277) && (mouseX < 208) && (mouseY < 297)) {
    textSize(25);
    fill(255, 180);
    rect(210, 267, 100, 40, 30);
    fill(0);
    text("Ir a clases", 215, 295);
    if (mousePressed) {
      acts_del_dia += 1;
      notayasist[0] = true;
      dias_cursados += 1;
      estados = "enclase";
    }
  }
}
//boton mirar peli
void botonPeli() {
  if ((mouseX > 546) && (mouseY > 264) && (mouseX < 624) && (mouseY < 323)) {
    textSize(25);
    fill(255, 180);
    rect(400, 280, 130, 40, 30);
    fill(0);
    text("Mirar película", 405, 307);
    if (mousePressed) {
      acts_del_dia += 1;
      estados = "salepeli";
    }
  }
}
//boton hacer tarea
void botonTarea() {
  if ((mouseX > 164) && (mouseY > 277) && (mouseX < 208) && (mouseY < 297)) {
    textSize(25);
    fill(255, 180);
    rect(210, 267, 115, 40, 30);
    fill(0);
    text("Hacer tarea", 220, 295);
    if (mousePressed) {
      acts_del_dia += 1;
      tareas_hechas += 1;
      estados = "hacertarea";
    }
  }
}
//boton dormir
void botonDormir() {
  if ((mouseX > 250) && (mouseY > 200) && (mouseX < 410) && (mouseY < 233)) {
    textSize(25);
    fill(255, 180);
    rect(410, 180, 70, 40, 30);
    fill(0);
    text("Dormir", 417, 207);
    if (mousePressed) {
      acts_del_dia += 1;
      dia += 1;
      estados = "dormir";
    }
  }
}
//contador de dias 
void contador(float x, float y) {
  float tam = 20;
  textFont(fuentes[1]);
  strokeWeight(3);
  stroke(0);
  textSize(20);
  fill(255);
  text("Día", 50, 540);
  for (int i = 0; i < td; i++) {
    if (dia == i) { 
      fill(196, 69, 105);
    } else {
      fill(0);
    }
    rect(x + (i * tam), y, tam, tam);
  }
}
