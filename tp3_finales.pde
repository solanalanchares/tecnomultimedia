void finfin() {
  textAlign(CENTER);
  background(0);
  textSize(50);
  if((dias_cursados >= 3) && (tareas_hechas == 5)) {
     aprobe_materia = true;
     text("Aprobaste Tecno I. \n Felicitaciones", width/2, height/2);
  } else {
     text("Desaprobaste Tecno I.\nPero podes volver a cursarla el año que viene", width/2, height/2);
 
  }
}
