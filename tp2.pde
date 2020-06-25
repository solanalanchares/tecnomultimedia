//PRIMER ESCENA
PFont produccion;
PImage pumpNhoney;
color amarillo_cred = color(214, 188, 55);
//TRANSICION
float transparencia = 0;
float posx_rect = -800;
//SEGUNDA ESCENA
PFont titulo;
color titulo_adelante = color(255, 155, 7);
color titulo_atras = color(255, 12, 4);
float aparece = 0;
float tam_titulo = 260;
float vel = 0; 
float acel = 0.2;
//TERCERA ESCENA
//travolta
PFont cast;
float white_txt = 255;
float posy_travolta = -400;
float desaparece = 0;
//jackson
float posx_jackson = -1800;
//thurman
float posy_thurman = 2300;

void setup() {  
  size(1600, 900); 
//primera escena
  produccion = createFont("data/pulpFiction_prod.ttf", 80);
  pumpNhoney = loadImage("data/opening.png");
  pumpNhoney.resize(1600, 900);
// segunda escena: titulo  
  titulo = createFont("data/pulpFiction_titulo.otf",50);
//tercer escena
  cast = createFont("data/pulpFiction_cast.ttf", 50);
}
 
void draw() {
// primera escena 
  image(pumpNhoney, 0,0);
  textFont(produccion);
  textAlign(CENTER);
  fill(amarillo_cred);
  text("MIRAMAX FILMS", width/2,(height/3) * 2);
  textSize(60);
  text("PRESENTS", width/2,(height/3) * 2 + 80);
  
//transicion    
  noStroke();
  fill(0, transparencia);
  rect(posx_rect, 0, 1600*frameCount,900);
  posx_rect += 0.00001;
  transparencia += 0.9;

//segunda escena
  textFont(titulo);
  textAlign(LEFT);
  textSize(tam_titulo);
  fill(titulo_atras, aparece);
  textLeading(tam_titulo);
  text("PULP\nFICTION", width/7, height/2);
  fill(titulo_adelante, aparece+aparece);
  text("PULP\nFICTION", width/7, height/2-30);
  aparece += 0.3;
  vel += acel;
  
//tercer escena
  textFont(cast);
  textAlign(CENTER);
  textSize(100);
  fill(white_txt, white_txt - desaparece );
  textLeading(100);
  text("JOHN\nTRAVOLTA", width/2, posy_travolta);
  desaparece += 0.03;
  posy_travolta += 0.9;
  //jackson
  fill(0,posx_jackson/7);
  rect(0, 0, 1600, 900);
  textSize(100);
  fill(white_txt, white_txt - desaparece);
  textLeading(100);
  text("SAMUEL L.\nJACKSON", posx_jackson , height/2);
  posx_jackson += 1.8;
  //thurman
  textSize(100);
  fill(white_txt, white_txt - (desaparece + desaparece/2));
  textLeading(100);
  text("UMA\nTHURMAN", width/2 ,posy_thurman);
  posy_thurman -= 1;


}
