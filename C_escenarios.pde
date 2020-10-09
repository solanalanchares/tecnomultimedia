void setstage() {
  noStroke();
  textAlign(LEFT);
  textFont(fuentes[1]);
  textSize(25);
}
void textStage(float a, float b, float c, float d, float e ) {
  fill(255, 170);
  rect(a, b, c, d, e);
  fill(0);
}

void habitaciones(float x, float y) {
  setstage();
  image(imagenes[1], x, y);
  if (estados.equals("mañana")) {
    botonClase();
    botonPeli();
  }
  if (estados.equals("tarde")) {
    botonTarea();
    botonPeli();
  }
  if (estados.equals("noche")) {
    botonDormir();
  }
  contador(50, 550);
}

void clases(float x, float y) {
  setstage();
  image(imagenes[2], x, y);
  textClass(30, 395, 730, 140, 10);
  botonSig(650, 540, 90);
}

void salepeli(float x, float y) {
  setstage();
  image(imagenes[3], x, y);
  textStage(30, 430, 730, 70, 10);
  text("La comodidad de tu sillón te llama y decidis tirarte a buscar una película para\npasar el rato y relajarte.", 40, 440, 730, 100);
  botonSig(650, 540, 90);
}
void homework(float x, float y) {
  setstage();
  image(imagenes[4], x, y);
  textTarea(40, 420, 720, 130, 10);
  botonSig(650, 540, 90);
}

void dormir(float x, float y ) {
  setstage();
  rectMode(CORNER);
  acts_del_dia = 0;
  sleep_time += 1;
  notayasist[0] = false;
  notayasist[1] = false;
  image(imagenes[5], x, y);
  textStage(30, 390, 730, 70, 10);
  text("Te fuiste a dormir, y como todas las noches no podes evitar soñar que sos un perrito miniatura que no llega a agarrar su hueso de plástico. Suena el despertador", 40, 400, 730, 70);
  textAlign(CENTER);  
  if (sleep_time > 120) {
    fill(99, 205, 218);
    rect(100, 470, 150, 50, 10);
    rect(500, 470, 150, 50, 10);
    fill(255);
    text("Levantarse", 175, 500);
    text("Seguir\ndurmiento", 580, 490);
    if ((mouseX > 100) && (mouseY > 470) && (mouseX < 250) && (mouseY < 520) && mousePressed) {
      estados = "mañana";
      sleep_time = 0;
    }
    if ((mouseX > 500) && (mouseY > 470) && (mouseX < 650) && (mouseY < 520) && mousePressed) {
      estados = "tarde";
      sleep_time = 0;
      acts_del_dia += 1;
    }
  }
}

void creditos(float x, float y) {
  noStroke();
  textFont(fuentes[0]);
  time_credits +=1;
  textAlign(CENTER);
  background(0);
  textSize(30);
  fill(99, 205, 218);
  text("Alumna\nLanchares Vidart, Solana", x/2, y/5);
  text("Materia\nTecnología Multimedial I", x/2, y/2.9);
  text("Comisión 2", x/2, y/2);
  text("Docente\nJauregui Lorda, Matías", x/2, y/1.7);
  text("Lic. en Diseño Multimedial\nFDA", x/2, y/1.35);
  textFont(fuentes[1]);
  botonSig(650, 540, 90);
}

void menu(float x, float y) {
  background(0);
  textAlign(CENTER);
  textFont(fuentes[0]);
  fill(99, 205, 218);
  textSize(90);
  text("RECURSANTE 2.0", x, y);
  textSize(40);
  text("Empezar", x, y + (y/2));
  text("Creditos", x, y + (y/1.5));
  if ((mouseX > x - 73) && (mouseY > y+ 119) && (mouseX < x + 74) && (mouseY < y + 147)) {
    fill(255);
    text("Empezar", x, y + (y/2));
    fill(99, 205, 218);
    text("Creditos", x, y + (y/1.5));
    if (mousePressed) {
      estados = "inicio";
    }
  }
  if ((mouseX > x - 73) && (mouseY > y + 167) && (mouseX < x + 74) && (mouseY < y + 197)) {
    fill(99, 205, 218);
    text("Empezar", x, y + (y/2));
    fill(255);
    text("Creditos", x, y + (y/1.5));
    if (mousePressed) {
      estados = "creditos";
    }
  }
}
