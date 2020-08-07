float sleep_time = 0;

void dormir() {
  acts_del_dia = 0;
  sleep_time += 1;
  curse = false; 
  aprobe_tarea = false;
  rectMode(CORNER);
  textAlign(LEFT);  
  image(dormir, 0, 0);
  fill(255, 170);
  rect(30, 400, 730, 60, 10);
  fill(0);
  text("Te fuiste a dormi, y como todas las noches no podes evitar soñar que sos un perrito miniatura que no\nllega a agarrar su hueso de plástico. Suena el despertador", 40, 430);
  textAlign(CENTER);  
  if (sleep_time > 120) {
    fill(99, 205, 218);
    rect(100, 470, 150, 50, 10);
    rect(500, 470, 150, 50, 10);
    fill(255);
    text("Levantarse", 175, 500);
    text("Seguir\ndurmiento", 580, 490);
    if ((mouseX > 100) && (mouseY > 470) && (mouseX < 250) && (mouseY < 520) && mousePressed) {
      momento = "habitacionUno";
      sleep_time = 0;
    }
    if ((mouseX > 500) && (mouseY > 470) && (mouseX < 650) && (mouseY < 520) && mousePressed) {
      momento = "habitacionDos";
      sleep_time = 0;
    }
  }
}
