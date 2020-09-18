void habitaciones() {
  textSize(25);
  noStroke();
  rectMode(CORNER);
  textAlign(LEFT);
  textFont(fuentes[1]);
  image(imagenes[1], -30, 0);
  //contador(50, 550);
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
void clases() {
  noStroke();
  textFont(fuentes[1]);
  textAlign(LEFT);
  textSize(25);
  image(imagenes[2], 0, 0);
  fill(255, 170);
  rect(30, 395, 730, 140, 10);
  fill(0);
  for (int i = 0; i < td; i++) {
    if (dia == i) {
      text(textoClases[i], 45, 400, 720, 140);
    }
  }
  botonSig(650, 540, 90);
}
void salepeli() {
  noStroke();
  textFont(fuentes[1]);
  textSize(25);
  textAlign(LEFT);
  image(imagenes[3], 0, 0);
  fill(255, 170);
  rect(30, 430, 730, 70, 10);
  fill(0);
  text("La comodidad de tu sillón te llama y decidis tirarte a buscar una película para\npasar el rato y relajarte.", 40, 440, 730, 100);
  botonSig(650, 540, 90);
}
void homework() {
  noStroke();
  textFont(fuentes[1]);
  textAlign(LEFT);
  textSize(25);
  image(imagenes[4], 0, 0);
  if (notayasist[0] == true) {
    notayasist[1] = true;
    fill(255, 170);
    rect(30, 400, 730, 130, 10);
    fill(0);
    for (int i = 0; i < td; i++) {
      if (dia == i) {
        text(tareasBien[i], 40, 410, 720, 120);
      }
    }
  } else {
    notayasist[1] = false;
    fill(255, 170);
    rect(30, 410, 730, 130, 10);
    fill(0);
    for (int i = 0; i < td; i++) {
      if (dia == i) {
        text(tareasMal[i], 40, 420, 720, 130);
      }
    }
  }
  botonSig(650, 540, 90);
}
void dormir() {
  noStroke();
  textFont(fuentes[1]);
  rectMode(CORNER);
  textAlign(LEFT);
  textSize(25);
  acts_del_dia = 0;
  sleep_time += 1;
  notayasist[0] = false;
  notayasist[1] = false;
  rectMode(CORNER);
  textAlign(LEFT);  
  image(imagenes[5], 0, 0);
  fill(255, 170);
  rect(30, 390, 730, 70, 10);
  fill(0);
  text("Te fuiste a dormi, y como todas las noches no podes evitar soñar que sos un perrito miniatura que no llega a agarrar su hueso de plástico. Suena el despertador", 40, 400, 730, 70);
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
void creditos() {
  noStroke();
  time_credits +=1;
  textAlign(CENTER);
  background(0);
  textSize(30);
  fill(99, 205, 218);
  text("Alumna\nLanchares Vidart, Solana", width/2, height/5);
  text("Materia\nTecnología Multimedial I", width/2, height/2.9);
  text("Comisión 2", width/2, height/2);
  text("Docente\nJauregui Lorda, Matías", width/2, height/1.7);
  text("Lic. en Diseño Multimedial\nFDA", width/2, height/1.35);
}
