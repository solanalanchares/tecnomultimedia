float time_credits = 0;

void creditos() {
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
