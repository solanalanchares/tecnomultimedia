float posx;
float posy;
float xx;
float yy;
float sleep_time = 0;
float time_credits = 0;
int td = 5;   //total dias
PImage [] imagenes = new PImage[td+1]; 
PFont [] fuentes = new PFont[2];
String [] textoClases = {"Profesor: Bienvenides a Tecno I! Hoy vamos a conocer de qué se trata la materia y de qué se trata processing, la herramienta que vamos a estar usando durante las próximas clases y para trabajar en sus entregas. Por ser nuestra primera clase vamos a aprender a dibujar algunas figuras básicas por medio de código.", "Profesor: Buenos días chiques! Ahora que ya saben hacer algunos dibujos básicos por medio de código, vamos a ver de qué se tratan las variables. El uso de variables les va a permitir almacenar información, para después usarlafácilmente en sus creaciones.", "Profesor: Buenos días chiques! Ya conocen los distintos tipos de variables y cómo construir sus propias variables. Hoy vamos a ver como utilizar imágenes y fuentes para poder acompañar sus creaciones y también vamos a repasar el uso de variables.", "Profesor: Buenos días chiques! Para la clase de hoy tenemos como tema estructuras condicionales, vamos a aprender como construir y usar un if. Estas estructuras permiten evaluar una condición y en base a esto ejecutar o no un bloque de código específico.", "Profesor: Buenos días chiques! Esta es nuestra última clase, así que vamos a repasar los temas visto y conoceremos el ciclo for. Este ciclo te va a permitir generar la repetición de un conjunto de reglas las veces que lo consideres necesario."};
String [] tareasBien = {"Para tu primer tarea te dieron algunas figuras geométricas para que hagas y te familiarices con el programa y su interfaz. Como prestaste atención durante tu primer clase y seguiste las explicaciones del profesor no tenes mayores complicaciones y haces la tarea bien.", "Tu segunda tarea se trata de crear tu propio círculo cromático, por medio de uso de variables construidas por vos. Todo parece ir bien, además entendiste el tema con bastante facilidad, así que entregas en fecha y aprobas tu segundo trabajo práctico.", "Para este tema tenes que recrear libremente aunque respetando los rasgos estéticos de la obra elegida los créditos de alguna película que elijas. La clase de animación lineal te pareció muy interesante por lo que esta tarea te encuentra realmente motivado y aprobas tu entrega.", "Tu cuarta entrega debe hacer uso de los condicionales que viste en clases, así que para esto te dieron a crear una pequeña aventura gráfica. Las explicaciones de la clase te sirven para esto y tu tarea termina viéndose bastante bien, así que aprobas tu trabajo.", "Llegaste a tu ultima entrega! Para esta tarea te dieron la libertad de elegir que queres hacer, pero debes cumplir algunas condiciones, como integrar todos los temas que viste antes y agregar ciclo for.Decidiste para esto, complejizar tu aventura gráfica y convertirla en un videojuego. Felicitaciones aprobaste tu última entrega!" };
String [] tareasMal = {"Este año de clases no empieza de la mejor manera; prendiste la tele mientras desayunabas y viste que estaban pasando Matrix, te quedaste viéndola y faltaste a tu primera clase; asi que tu tarea está desaprobada porque no entendiste los temas.", "Hoy no fuiste a clases, así que las actividades de repaso te resultan más difíciles de lo que creíste, tenes algunos problemas a la hora de usar las variables que creaste por lo que tu tarea no va estara probada esta vez.", "Faltaste a la clase sobre animación lineal y sin conocer los temas no se hace muy fáci seguir adelante con tu trabajo práctico por lo que tu entrega es incompleta y desaprobas este trabajo.", "Los condicionales no son lo tuyo y mucho menos si faltaste a la clase en donde te los explicaron. Así que como consecuencia tu entrega no va a estar aprobada porque tu aventura gráfica no funciona correctamente.", "Parece que no es tan sencillo como parece poder juntar todos los temas vistos en una nueva creación libre y además aplicar ciclo de repetición. La entrega está incompleta y esta vez no llegas a aprobar."}; 
boolean [] notayasist = new boolean[3]; 
int dias_cursados = 0;
int tareas_hechas = 0;
int acts_del_dia = 0; 
int dia;
String estados = "menu";

void setup() {
  size(800, 600);
  dia = 0;
  xx = width;
  yy = height;
  for (int i = 0; i < 6; i++) {
    imagenes[i] = loadImage("imagen"+i+".jpg");
  }
  for (int i = 0; i < 2; i++) {
    fuentes[i] = createFont("fuente" + i + ".otf", 20);
  }
  for (int i = 0; i < 3; i++) {
    notayasist[i] = false;
  }
}

void draw() {
  posx = width/2;
  posy = height/2;
  textAlign(CENTER);
  textFont(fuentes[0]);
  background(0);
  fill(99, 205, 218);
  textSize(90);
  text("RECURSANTE 2.0", posx, posy);
  textSize(40);
  text("Empezar", posx, posy + (posy/2));
  text("Creditos", posx, posy + (posy/1.5));
  textSize(40);
  text("Empezar", posx, posy + (posy/2));
  text("Creditos", posx, posy + (posy/1.5));
  if ((mouseX > 327) && (mouseY > 419) && (mouseX < 474) && (mouseY < 447)) {
    fill(255);
    text("Empezar", posx, posy + (posy/2));
    fill(99, 205, 218);
    text("Creditos", posx, posy + (posy/1.5));
    if (mousePressed) {
      estados = "inicio";
    }
  }
  if ((mouseX > 327) && (mouseY > 467) && (mouseX < 474) && (mouseY < 497)) {
    fill(99, 205, 218);
    text("Empezar", posx, posy + (posy/2));
    fill(255);
    text("Creditos", posx, posy + (posy/1.5));
    if (mousePressed) {
      estados = "creditos";
    }
  }
  if (estados.equals("inicio")) {
    noStroke();
    textAlign(LEFT);
    textFont(fuentes[1]);
    textSize(25);
    image(imagenes[0], 0, 0);
    fill(255, 170);
    rect(30, 360, 730, 160, 10);
    fill(0);
    text("Es el año 2020 y la reciente aparición de un nuevo virus, que ha tomado dimensiones pandémicas, llevó a la cancelación de cualquier actividad que implicara la reunión de varias personas en un mismo espacio físico. Para este año, habías planeado empezar a cursar la carrera de Diseño Multimedial, como las clases presenciales no puede llevarse adelante, se han trasladado a la virtualidad,  y hoy es tu primer día cursando Tecnología Multimedial I.", 40, 365, 720, 160);
    botonSig(650, 540, 90);
  }
  if (estados.equals("mañana")) {
    habitaciones();
  }
  if (estados.equals("tarde")) {
    habitaciones();
  }
  if (estados.equals("noche")) {
    habitaciones();
  }
  if (estados.equals("enclase")) {
    clases();
  }
  if (estados.equals("hacertarea")) {
    homework();
  }
  if (estados.equals("salepeli")) {
    salepeli();
  }
  if (estados.equals("dormir")) {
    dormir();
  }
  if (estados.equals("final")) {
    background(0);
    textAlign(CENTER);
    textSize(50);
    if ((dias_cursados >= 3) && (tareas_hechas == 5)) {
      notayasist[2] = true;
      text("Aprobaste Tecno I. \n Felicitaciones", width/2, height/2);
    } else {
      text("Desaprobaste Tecno I.\nPero podes volver a intertarlo\nel próximo año.", width/2, height/3);
    }
  }
  if (estados.equals("creditos")) {
    creditos();
  }
}

void mousePressed() {
  println("X: "  + mouseX);
  println("Y: "  + mouseY);

}

 
