// esta es la primera habitación
void habitacionUno() {
  //seteo del room 
  rectMode(CORNER);
  textAlign(LEFT);
  image(habitacion, -30, 0);
  contador();
  //boton para ir a clases 
  if ((mouseX > 164) && (mouseY > 277) && (mouseX < 208) && (mouseY < 297)) {
    fill(255, 180);
    rect(210, 267, 100, 40, 30);
    fill(0);
    text("Ir a clases", 225, 295);
    if (mousePressed) {
      acts_del_dia += 1;
      curse = true;
      dias_cursados += 1;
      momento = "enClase";
    }
  }
  //boton para ver peli 
  if ((mouseX > 546) && (mouseY > 264) && (mouseX < 624) && (mouseY < 323)) {
    fill(255, 180);
    rect(400, 280, 130, 40, 30);
    fill(0);
    text("Mirar película", 417, 307);
    if (mousePressed) {
      acts_del_dia += 1;
      momento = "mirandoPeli";
    }
  }
}

// esta es la habitacion despues de ir a clases 
void habitacionDos() {

  //seteo del room
  rectMode(CORNER);
  textAlign(LEFT);
  background(0);
  image(habitacion, -30, 0);

  //contador de dias 
  contador();

  //boton hacer tarea
  if ((mouseX > 164) && (mouseY > 277) && (mouseX < 208) && (mouseY < 297)) {
    fill(255, 180);
    rect(210, 267, 100, 40, 30);
    fill(0);
    text("Hacer tarea", 220, 295);
    if (mousePressed) {
      acts_del_dia += 1;
      tareas_hechas += 1;
      momento = "haciendoTarea";
    }
  }

  //boton para ver peli 
  if ((mouseX > 546) && (mouseY > 264) && (mouseX < 624) && (mouseY < 323)) {
    fill(255, 180);
    rect(400, 280, 130, 40, 30);
    fill(0);
    text("Mirar película", 417, 307);
    if (mousePressed) {
      momento = "mirandoPeli";
      acts_del_dia += 1;
    }
  }
}
void habFindia() {

  //seteo del room 
  rectMode(CORNER);
  textAlign(LEFT);
  background(0);
  image(habitacion, -30, 0);

  //contador de dias 
  contador();

  //boton para dormir 
  if ((mouseX > 250) && (mouseY > 200) && (mouseX < 410) && (mouseY < 233)) {
    fill(255, 180);
    rect(410, 180, 70, 40, 30);
    fill(0);
    text("Dormir", 423, 207);
    if (mousePressed) {
      acts_del_dia += 1;
      dias += 1;
      momento = "dormir";
    }
  }
}



/*if (mousePressed) {
 println("X: " + mouseX);
 println("Y: " + mouseY);
 }*/
