// fuentes
PFont daydream, pixel;
// imagenes 
PImage habitacion, inicio, enclase, mirarpeli, dormir, tarea;
//contadores
int dias_cursados = 0;
int tareas_hechas = 0;
int acts_del_dia = 0; 
int dias = 1;
//buleanos
boolean curse = false;
boolean aprobe_tarea = false;
boolean aprobe_materia = false;
// momentos
String momento = "menu";

void setup() {
  size(800, 600);
  daydream = createFont("sweetCake.otf", 90);
  pixel =  createFont("Ogenblik.otf", 20);
  inicio = loadImage("data/inicio.jpg");
  habitacion = loadImage("data/habitacion_final.png");
  enclase = loadImage("data/en_clase.png");
  mirarpeli = loadImage("data/mirar_peli.png");
  tarea = loadImage("tarea.jpg");
  dormir = loadImage("data/dormir.jpg");
}

void draw() {
  if (momento.equals("menu")) {
    presentacion();
  }
  if (momento.equals("inicio")) {
    inicio();
  }
  if(momento.equals("creditos")) {
    creditos();
  }
  if (momento.equals("habitacionUno")) {
    habitacionUno();
  }
  // CLASES 
  if (momento.equals("enClase") && (dias == 1)) {  
    claseUno();
  }
  if (momento.equals("enClase") && (dias == 2)) {  
    claseDos();
  }
  if (momento.equals("enClase") && (dias == 3)) {  
    claseTres();
  }
  if (momento.equals("enClase") && (dias == 4)) {  
    claseCuatro();
  }
  if (momento.equals("enClase") && (dias == 5)) {  
    claseCinco();
  }

  // TAREAS
  if (momento.equals("haciendoTarea") && (dias == 1)) {
    tareaUno();
  }  
  if (momento.equals("haciendoTarea")  && (dias == 2)) {
    tareaDos();
  }
  if (momento.equals("haciendoTarea")  && (dias == 3)) {
    tareaTres();
  }
  if (momento.equals("haciendoTarea")  && (dias == 4)) {
    tareaCuatro();
  }
  if (momento.equals("haciendoTarea")  && (dias == 5)) {
    tareaCinco();
  }
  if (momento.equals("mirandoPeli")) {
    mirarPeli();
  }
  if (momento.equals("habitacionDos")) {
    habitacionDos();
  }
  if (momento.equals("fin_del_dia")) {
    habFindia();
  }
  if (momento.equals("dormir")) {
    dormir();
  }
  if (momento.equals("final")) {
    finfin();
  }
}
void mousePressed() {
  if(momento.equals("final")) {
    momento = "menu";
  }
  if(momento.equals("creditos")) {
    momento = "menu";
  }
}

// este es el inicio de juego y su menu de opciones
void presentacion() {
  if (mousePressed) {
 println("X: " + mouseX);
 println("Y: " + mouseY);
 }
  float posx_tit = width/2;
  float posy_tit = height/2;
  textAlign(CENTER);
  textFont(daydream);
  background(0);
  fill(99, 205, 218);
  text("RECURSANTE 2.0", posx_tit, posy_tit);
  textSize(40);
  text("Empezar", posx_tit, posy_tit + (posy_tit/2));
  text("Creditos", posx_tit, posy_tit + (posy_tit/1.5));
  //empieza juego
  if ((mouseX > 327) && (mouseY > 419) && (mouseX < 474) && (mouseY < 447)) {
    fill(255);
    text("Empezar", posx_tit, posy_tit + (posy_tit/2));
    fill(99, 205, 218);
    text("Creditos", posx_tit, posy_tit + (posy_tit/1.5));
    if (mousePressed) {
      momento = "inicio";
    }
  }
  //va a los creditos 
  if ((mouseX > 327) && (mouseY > 467) && (mouseX < 474) && (mouseY < 497)) {
    fill(99, 205, 218);
    text("Empezar", posx_tit, posy_tit + (posy_tit/2));
    fill(255);
    text("Creditos", posx_tit, posy_tit + (posy_tit/1.5));
    if (mousePressed) {
      momento = "creditos";
    }
  }
}

// aca es donde empieza a contarse la historia, algo asi como una introduccion 
void inicio() {
  momento = "inicio";
  noStroke();
  textAlign(LEFT);
  textFont(pixel);
  textSize(25);
  image(inicio, 0, 0);
  fill(255, 170);
  rect(30, 360, 730, 160, 10);
  fill(0);
  text("Es el año 2020 y la reciente aparición de un nuevo virus, que ha tomado dimensiones\npandémicas, llevó a la cancelación de cualquier actividad que implicara la reunión\nde varias personas en un mismo espacio físico.\nPara este año, habías planeado empezar a cursar la carrera de Diseño Multimedial,\ncomo las clases presenciales no puede llevarse adelante, se han trasladado a la\nvirtualidad,  y hoy es tu primer día cursando Tecnología Multimedial I.", 40, 385);
  botonSig();
}



/*if (mousePressed) {
 println("X: " + mouseX);
 println("Y: " + mouseY);
 }*/
