class Aventura {
  String estados;
  float posx;
  float posy;

  Aventura() {
    estados = "menu";
    posx = width * 0;
    posy = height * 0;
  }

  void cicloEstados() {
    for (int i = 0; i < p.imagenes.length; i ++) {
      p.imagenes[i].resize(width, height);
    }
    if (estados.equals("menu")) {
      p.menu(width/2, height/2);
    }
    if (estados.equals("inicio")) {
      p.inicio(posx, posy);
    }
    if (estados.equals("mañana") || estados.equals("tarde") || estados.equals("noche")) {
      p.habitacion(posx, posy);
    }
    if (estados.equals("enclase")) {
      p.clases(posx, posy);
    }
    if (estados.equals("hacertarea")) {
      p.tareas(posx, posy);
    }
    if (estados.equals("salepeli")) {
      j.cicloEstados();
    }
    if (estados.equals("dormir")) {
      p.dormir(posx, posy);
    }
    if (estados.equals("final")) {
      p.finAl();
      
    }
    if (estados.equals("creditos")) {
      p.creditos(width, height);
    }
    if (mousePressed) {
      println("x:" + mouseX + " y: " + mouseY);
    }
  }
}
