void tareaUno() {
  momento = "haciendoTarea";
  textAlign(LEFT);
  image(tarea, 0, 0);
  if (curse) {
    aprobe_tarea = true;
    fill(255, 170);
    rect(30, 400, 730, 130, 10);
    fill(0);
    text("Para tu primer tarea te dieron algunas figuras geométricas para que hagas y te\nfamiliarices con el programa y su interfaz.\nComo prestaste atención durante tu primer clase y seguiste las explicaciones del\nprofesor no tenes mayores complicaciones y haces la tarea bien.", 50, 430);
  } else {
    aprobe_tarea = false;
    fill(255, 170);
    rect(30, 410, 730, 130, 10);
    fill(0);
    text("Este año de clases no empieza de la mejor manera; prendiste la tele mientras\ndesayunabas y viste que estaban pasando Matrix, te quedaste viéndola y faltaste\na tu primera clase; asi que tu tarea está desaprobada porque no entendiste los\ntemas. ", 50, 440);
  }
  botonSig();
}

void tareaDos() {
  textAlign(LEFT);
  image(tarea, 0, 0);
  if (curse) {
    aprobe_tarea = true;
    fill(255, 170);
    rect(30, 400, 730, 130, 10);
    fill(0);
    text("Tu segunda tarea se trata de crear tu propio círculo cromático, por medio de uso de\nvariables construidas por vos. Todo parece ir bien, además entendiste el tema con\nbastante facilidad, así que entregas en fecha y aprobas tu segundo trabajo práctico.", 40, 435);
  } else {
    aprobe_tarea = false;
    fill(255, 170);
    rect(30, 400, 730, 130, 10);
    fill(0);
    text("Hoy no fuiste a clases, así que las actividades de repaso te resultan más difíciles\nde lo que creíste, tenes algunos problemas a la hora de usar las variables que\ncreaste por lo que tu tarea no va estara probada esta vez.", 40, 440);
  }
  botonSig();
}

void tareaTres() {
  textAlign(LEFT);
  image(tarea, 0, 0);
  if (curse) {
    aprobe_tarea = true;
    fill(255, 170);
    rect(30, 400, 730, 130, 10);
    fill(0);
    text("Para este tema tenes que recrear libremente aunque respetando los rasgos estéticos\nde la obra elegida los créditos de alguna película que elijas.\nLa clase de animación lineal te pareció muy interesante por lo que esta tarea te\nencuentra realmente motivado y aprobas tu entrega.", 40, 430);
  } else {
    aprobe_tarea = false;
    fill(255, 170);
    rect(30, 400, 730, 130, 10);
    fill(0);
    text("Faltaste a la clase sobre animación lineal y sin conocer los temas no se hace muy\nfáci seguir adelante con tu trabajo práctico por lo que tu entrega es incompleta\ny desaprobas este trabajo.", 40, 430);
  }
  botonSig();
}

void tareaCuatro() {
  textAlign(LEFT);
  image(tarea, 0, 0);
  if (curse) {
    aprobe_tarea = true;
    fill(255, 170);
    rect(30, 400, 730, 140, 10);
    fill(0);
    text("Tu cuarta entrega debe hacer uso de los condicionales que viste en clases, así que\npara esto te dieron a crear una pequeña aventura gráfica.\nLas explicaciones de la clase te sirven para esto y tu tarea termina viéndose\nbastante bien, así que aprobas tu trabajo.", 40, 430);
  } else {
    aprobe_tarea = false;
    fill(255, 170);
    rect(30, 400, 730, 140, 10);
    fill(0);
    text("Los condicionales no son lo tuyo y mucho menos si faltaste a la clase en donde te\nlos explicaron.\nAsí que como consecuencia tu entrega no va a estar aprobada porque tu aventura\ngráfica no funciona correctamente.", 40, 430);
  }
  botonSig();
}

void tareaCinco() {
  textAlign(LEFT);
  image(tarea, 0, 0);
  botonSig();
  if (curse) {
    aprobe_tarea = true;
    fill(255, 170);
    rect(30, 400, 730, 140, 10);
    fill(0);
    text("Llegaste a tu ultima entrega!\nPara esta tarea te dieron la libertad de elegir que queres hacer, pero debes cumplir\nalgunas condiciones, como integrar todos los temas que viste antes y agregar\nciclo for.Decidiste para esto, complejizar tu aventura gráfica y convertirla en un\nvideojuego. Felicitaciones aprobaste tu última entrega! ", 40, 430);
  } else {
    aprobe_tarea = false;
    fill(255, 170);
    rect(30, 400, 730, 140, 10);
    fill(0);
    text("Parece que no es tan sencillo como parece poder juntar todos los temas vistos\nen una nueva creación libre y además aplicar ciclo de repetición. La entrega está\nincompleta y esta vez no llegas a aprobar.", 40, 430);
  }
  botonSig();
}
