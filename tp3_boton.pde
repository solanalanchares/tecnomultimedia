// este es el boton que uso para adelantar las pantallas de dialogo 
void botonSig() {
  float posx_sig = 650;
  float posy_sig = 540;
  float tam_sig = 90; 
  textAlign(LEFT);
  textSize(25);
  fill(99, 205, 218);
  rect(posx_sig, posy_sig, tam_sig, tam_sig/2, 10);
  fill(218, 220, 227);
  text("siguiente", posx_sig + 10, posy_sig + 30);

  if ((mouseX > posx_sig ) && (mouseY > posy_sig) && (mouseX < posx_sig + tam_sig) && (mouseY < posy_sig + (tam_sig/2)) && mousePressed) {
    if (momento.equals("inicio")) {
      momento = "habitacionUno";
    }
    if (momento.equals("enClase")) {
      momento = "habitacionDos";
    }
    if (momento.equals("mirandoPeli")) {
      if (acts_del_dia == 2) {
        momento = "fin_del_dia";
      } else {
        momento = "habitacionDos";
      }
    } 
    if (momento.equals("haciendoTarea")) {
      momento = "fin_del_dia";
      if (dias == 5) {
        momento = "final";
      }
    }
  }
}
