// settings botones
boolean checkButton(float x, float y, float x1, float y1) {
  if ((mouseX > x) && (mouseY > y) && (mouseX < x1) && (mouseY < y1)) {
    textFont(fuentes[1]);
    textSize(25);
    fill(255, 180);
    return true;
  } else {
    return false;
  }
}

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
      if (dia == 4) { 
        estados = "final";
      }
    }
    if (estados.equals("creditos")) {
      estados = "menu";
    }
  }
}

//boton ir a clases
void botonClase() {
  if (checkButton(164, 277, 208, 297)) {
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
  if (checkButton(546, 264, 624, 323)) {
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
  if (checkButton(164, 277, 208, 297)) {
    rect(210, 267, 120, 40, 30);
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
  if (checkButton(250, 200, 410, 233)) {
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
    if (i <= dia) { 
      fill(196, 69, 105);
    } else {
      fill(0);
    }
    rect(x + (i * tam), y, tam, tam);
  }
}
//texto de las clases 
void textClass(float x, float y, float t, float t1, float b) {
  fill(255, 170);
  rect(x, y, t, t1, b);
  fill(0);
  text(textoClases[dia], 45, 400, 720, 140);
}

//texto de las tareas 
void textTarea(float x, float y, float t, float t1, float b) {
  fill(255, 170);
  rect(x, y, t, t1, b);
  fill(0);
  if (notayasist[0] == true) {
    notayasist[1] = true;
    text(tareasBien[dia], 50, 430, 720, 120);
  } else {
    notayasist[1] = false;
    text(tareasMal[dia], 40, 410, 720, 120);
  }
}
