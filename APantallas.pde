class Pantallas {
  float posx;
  float posy;
  PImage [] imagenes = new PImage[6];
  PImage [] finales = new PImage[3];
  String [] textoClases = {"Bienvenides a Tecno I! Hoy vamos a conocer de qué se trata la materia y de qué se trata processing, la herramienta que vamos a estar usando durante las próximas clases y para trabajar en sus entregas. Por ser nuestra primera clase vamos a aprender a dibujar algunas figuras básicas por medio de código.", "Profesor: Buenos días chiques! Ahora que ya saben hacer algunos dibujos básicos por medio de código, vamos a ver de qué se tratan las variables. El uso de variables les va a permitir almacenar información, para después usarlafácilmente en sus creaciones.", "Profesor: Buenos días chiques! Ya conocen los distintos tipos de variables y cómo construir sus propias variables. Hoy vamos a ver como utilizar imágenes y fuentes para poder acompañar sus creaciones y también vamos a repasar el uso de variables.", "Profesor: Buenos días chiques! Para la clase de hoy tenemos como tema estructuras condicionales, vamos a aprender como construir y usar un if. Estas estructuras permiten evaluar una condición y en base a esto ejecutar o no un bloque de código específico.", "Profesor: Buenos días chiques! Esta es nuestra última clase, así que vamos a repasar los temas visto y conoceremos el ciclo for. Este ciclo te va a permitir generar la repetición de un conjunto de reglas las veces que lo consideres necesario."};
  String [] tareasBien = {"Para tu primer tarea te dieron algunas figuras geométricas para que hagas y te familiarices con el programa y su interfaz. Como prestaste atención durante tu primer clase y seguiste las explicaciones del profesor no tenes mayores complicaciones y haces la tarea bien.", "Tu segunda tarea se trata de crear tu propio círculo cromático, por medio de uso de variables construidas por vos. Todo parece ir bien, además entendiste el tema con bastante facilidad, así que entregas en fecha y aprobas tu segundo trabajo práctico.", "Para este tema tenes que recrear libremente aunque respetando los rasgos estéticos de la obra elegida los créditos de alguna película que elijas. La clase de animación lineal te pareció muy interesante por lo que esta tarea te encuentra realmente motivado y aprobas tu entrega.", "Tu cuarta entrega debe hacer uso de los condicionales que viste en clases, así que para esto te dieron a crear una pequeña aventura gráfica. Las explicaciones de la clase te sirven para esto y tu tarea termina viéndose bastante bien, así que aprobas tu trabajo.", "Llegaste a tu ultima entrega! Para esta tarea te dieron la libertad de elegir que queres hacer, pero debes cumplir algunas condiciones, como integrar todos los temas que viste antes y agregar ciclo for.Decidiste para esto, complejizar tu aventura gráfica y convertirla en un videojuego. Felicitaciones aprobaste tu última entrega!" };
  String [] tareasMal = {"Este año de clases no empieza de la mejor manera; prendiste la tele mientras desayunabas y viste que estaban pasando Matrix, te quedaste viéndola y faltaste a tu primera clase; asi que tu tarea está desaprobada porque no entendiste los temas.", "Hoy no fuiste a clases, así que las actividades de repaso te resultan más difíciles de lo que creíste, tenes algunos problemas a la hora de usar las variables que creaste por lo que tu tarea no va estara probada esta vez.", "Faltaste a la clase sobre animación lineal y sin conocer los temas no se hace muy fáci seguir adelante con tu trabajo práctico por lo que tu entrega es incompleta y desaprobas este trabajo.", "Los condicionales no son lo tuyo y mucho menos si faltaste a la clase en donde te los explicaron. Así que como consecuencia tu entrega no va a estar aprobada porque tu aventura gráfica no funciona correctamente.", "Parece que no es tan sencillo como parece poder juntar todos los temas vistos en una nueva creación libre y además aplicar ciclo de repetición. La entrega está incompleta y esta vez no llegas a aprobar."};
  float sleep_time = 0;
  float time_credits = 0;
  PFont [] fuentes = new PFont[2];
  boolean [] notayasist = new boolean[3]; 
  int dias_cursados = 0;
  int tareas_hechas = 0;
  int acts_del_dia = 0; 
  int dia;
  int gamer = 0;
  int ftime = 0;

  Pantallas(float x, float y) {
    posx = x; 
    posy = y;
    for (int i = 0; i < 6; i++) {
      imagenes[i] = loadImage("imagen" + i + ".jpg");
    }
    for (int i = 0; i < 2; i++) {
      fuentes[i] = createFont("fuente" + i + ".otf", 20);
    }
    for (int i = 0; i < 3; i++) {
      notayasist[i] = false;
    }
    for (int i = 0; i < 3; i++) {
      finales[i] = loadImage("final" + i + ".jpg");
    }
  }

  // Caracteristicas generales de los escenarios
  void stageSettings() {
    noStroke();
    textAlign(LEFT);
    textFont(fuentes[1]);
    textSize(height/24);
  }
  // Caracteristicas generales de los textos
  void textsettings(float a, float b, float c, float d, float e) {
    fill(255, 170);
    rect(a, b, c, d, e);
    fill(0);
  }

  // Pantalla MENU
  void menu(float x, float y) {
    background(0);
    textAlign(CENTER);
    textFont(fuentes[0]);
    fill(99, 205, 218);
    textSize(width/8.88);
    text("RECURSANTE 2.0", x, y);
    textSize(width/20);
    text("Empezar", x, y + (y/2));
    text("Creditos", x, y + (y/1.5));
    if ((mouseX > x - (width/10.95)) && (mouseY > y + (height/5.04)) && (mouseX < x + (width/10.95)) && (mouseY < y + (height/4.08))) {
      fill(255);
      text("Empezar", x, y + (y/2));
      fill(99, 205, 218);
      text("Creditos", x, y + (y/1.5));
      if (mousePressed) {
        aventura.estados = "inicio";
      }
    }
    if ((mouseX > x - (width/10.95)) && (mouseY > y + (height/3.59)) && (mouseX < x + (width/10.95)) && (mouseY < y + (height/3.04))) {
      fill(99, 205, 218);
      text("Empezar", x, y + (y/2));
      fill(255);
      text("Creditos", x, y + (y/1.5));
      if (mousePressed) {
        aventura.estados = "creditos";
      }
    }
  }

  // Pantalla INICIO
  void inicio(float x, float y) {
    noStroke();
    textAlign(LEFT);
    textFont(fuentes[1]);
    textSize(height/24);
    image(imagenes[0], x, y);
    fill(255, 170);
    rect(width/26.66, height/1.66, width/1.09, height/3.75, 10);
    fill(0);
    text("Es el año 2020 y la reciente aparición de un nuevo virus, que ha tomado dimensiones pandémicas, llevó a la cancelación de cualquier actividad que implicara la reunión de varias personas en un mismo espacio físico. Para este año, habías planeado empezar a cursar la carrera de Diseño Multimedial, como las clases presenciales no puede llevarse adelante, se han trasladado a la virtualidad,  y hoy es tu primer día cursando Tecnología Multimedial I.", width/20, height/1.64, width/1.11, height/3.75);
    b.botonSig(width/1.23, height/1.11, width/8.88);
  }

  // Pantalla distintas habitaciones
  void habitacion(float x, float y) {
    stageSettings();
    image(imagenes[1], x, y);
    profe.pause();
    keycaps.pause();
    if (aventura.estados.equals("mañana")) {
      b.botonClase();
      b.botonVideojuego();
    }
    if (aventura.estados.equals("tarde")) {
      b.botonTarea();
      b.botonVideojuego();
    }
    if (aventura.estados.equals("noche")) {
      b.botonDormir();
    }
    b.contador(width/16, height/1.09);
  }

  // Pantalla Clases 
  void clases(float x, float y) {
    stageSettings();
    image(imagenes[2], x, y);
    profe.play();
    profe.setGain(25); 
    musiquita.setGain(-25);
    textClass(width/26.66, height/1.51, width/1.09, height/4.28, 10);
    b.botonSig(width/1.23, height/1.11, width/8.88);
  }

  // Pantalla tareas
  void tareas(float x, float y) {
    stageSettings();
    image(imagenes[4], x, y);
    profe.pause();
    keycaps.play();
    keycaps.setGain(-5);
    textTarea(width/20, height/1.42, width/1.11, height/4.61, 10);
    b.botonSig(width/1.23, height/1.11, width/8.88);
  }

  // Pantalla dormir
  void dormir(float x, float y) {
    stageSettings();
    rectMode(CORNER);
    acts_del_dia = 0;
    sleep_time += 1;
    notayasist[0] = false;
    notayasist[1] = false;
    image(imagenes[5], x, y);
    textsettings(width/26.66, height/1.53, width/1.09, height/8.57, 10);
    text("Te fuiste a dormir, y como todas las noches no podes evitar soñar que sos un perrito miniatura que no llega a agarrar su hueso de plástico. Suena el despertador", width/20, height/1.5, width/1.09, height/8.57);
    textAlign(CENTER);  
    if (sleep_time > 30) {
      fill(99, 205, 218);
      rect(width/8, height/1.27, width/5.33, height/12, 10);
      rect(width/1.6, height/1.27, width/5.33, height/12, 10);
      fill(255);
      text("Levantarse", width/4.56, height/1.188);
      text("Seguir\ndurmiento", width/1.391, height/1.217);
      if ((mouseX > width/8) && (mouseY > height/1.27) && (mouseX < width/3.2) && (mouseY < height/1.15) && mousePressed) {
        aventura.estados = "mañana";
        sleep_time = 0;
      }
      if ((mouseX > width/1.6) && (mouseY > height/1.27) && (mouseX < width/1.23) && (mouseY < height/1.15) && mousePressed) {
        aventura.estados = "tarde";
        sleep_time = 0;
        acts_del_dia += 1;
      }
    }
  }

  //Pantallas de los Finales
  void finAl() {
    ftime +=1;
    println(ftime);
    if ((p.dias_cursados >= 3) && (p.tareas_hechas >= 5)) {
      p.notayasist[2] = true;
      image(finales[0], 0, 0, width, height);
    } else if (p.gamer >= 7) {
      image(finales[2], 0, 0, width, height);
      flag.play();
    } else {
      image(finales[1], 0, 0, width, height);
    }
    if (ftime > 120) {
      b.reinicio();
    }
  }

  // Pantalla de créditos
  void creditos(float x, float y) {
    noStroke();
    textFont(fuentes[0]);
    time_credits +=1;
    textAlign(CENTER);
    background(0);
    textSize(height/20);
    fill(99, 205, 218);
    text("Alumnas\nLanchares Vidart, Solana y Russo, Camila", x/2, y/5);
    text("Materia\nTecnología Multimedial I", x/2, y/2.9);
    text("Comisión 2", x/2, y/2);
    text("Docente\nJauregui Lorda, Matías", x/2, y/1.7);
    text("Lic. en Diseño Multimedial\nFDA", x/2, y/1.35);
    textFont(fuentes[1]);
    b.botonSig(width/1.23, height/1.11, width/8.88);
  }

  // texto de las clases
  void textClass(float x, float y, float t, float t1, float b) {
    fill(255, 170);
    rect(x, y, t, t1, b);
    fill(0);
    text(textoClases[dia], width/17.7, height/1.45, width/1.11, height/4.28);
  }

  //texto de las tareas 
  void textTarea(float x, float y, float t, float t1, float b) {
    textAlign(LEFT);
    fill(255, 170);
    rect(x, y, t, t1, b);
    fill(0);
    if (notayasist[0] == true) {
      notayasist[1] = true;
      text(tareasBien[dia], width/16, height/1.39, width/1.15, height/5);
    } else {
      notayasist[1] = false;
      text(tareasMal[dia], width/16, height/1.39, width/1.15, height/5);
    }
  }
}
