// Bruno Gonzalez 93505/2 comision 1
// está incompleto

int[] pantallas = new int[12];
PImage[] imag = new PImage[12];
int numm;
int numeroactual;

void setup() {
  size(600, 600);
  
  for (int i = 0; i < imag.length; i++) {
    imag[i] = loadImage("imag" + (i + 1) + ".jpg");
  }
  
  for (int i = 0; i < pantallas.length; i++) {
    pantallas[i] = 0;
  }
}

void draw() {
  background(255);
  
  println(pantallas);
  numeroactual = numm;
  println(numeroactual);

  if (pantallas[0] == 0) {
    planillabase("", imag[0]);
    textSize(15);
    textAlign(CENTER);
    text("Bienvenido a 'El Asesino' \n  una emocionante aventura en la ciudad futurista de Chicago.  \n Conviértete en un detective y desentraña un misterioso caso de asesinato.",300,50);
    noStroke();
    rect(250,200,100,50);

    rect(250,270,100,50);
    fill(0);
        textSize(20);
    text("Iniciar", width/2, 230);
    text("Creditos", width/2, 300);
  } else if (pantallas[1] == 0) {
    planillabase("pantalla2", imag[1]);
  } else if (pantallas[2] == 0) {
    planillabase("pantalla3", imag[2]);
  } else if (pantallas[3] == 0) {
    planillabase("pantalla4", imag[3]);
  } else if (pantallas[4] == 0) {
    planillabase("pantalla5", imag[4]);
  } else if (pantallas[5] == 0) {
    planillabase("pantalla6", imag[5]);
  } else if (pantallas[6] == 0) {
    planillabase("pantalla7", imag[6]);
  } else if (pantallas[7] == 0) {
    planillabase("pantalla8", imag[7]);
  } else if (pantallas[8] == 0) {
    planillabase("pantalla9", imag[8]);
  } else if (pantallas[9] == 0) {
    planillabase("pantalla10", imag[9]);
  } else if (pantallas[10] == 0) {
    planillabase("pantalla11", imag[10]);
  } else if (pantallas[11] == 0) {
    planillabase("pantalla12", imag[11]);
  }
}

void mousePressed() {
  if (pantallas[0] == 0 && chequebotoncuadrado(250, 300, 250, 300, 1)) {
   
  } else if (pantallas[1] == 0 && chequebotoncuadrado(250, 300, 250, 300, 2)) {
 
  } else if (pantallas[2] == 0 && chequebotoncuadrado(250, 300, 250, 300, 3)) {

  } else if (pantallas[3] == 0 && chequebotoncuadrado(250, 300, 250, 300, 4)) {
  
  } else if (pantallas[4] == 0 && chequebotoncuadrado(250, 300, 250, 300, 5)) {

  } else if (pantallas[5] == 0 && chequebotoncuadrado(250, 300, 250, 300, 6)) {
  
  } else if (pantallas[6] == 0 && chequebotoncuadrado(250, 300, 250, 300, 7)) {
   
  } else if (pantallas[7] == 0 && chequebotoncuadrado(250, 300, 250, 300, 8)) {
   
  } else if (pantallas[8] == 0 && chequebotoncuadrado(250, 300, 250, 300, 9)) {
   
  } else if (pantallas[9] == 0 && chequebotoncuadrado(250, 300, 250, 300, 10)) {
 
  } else if (pantallas[10] == 0 && chequebotoncuadrado(250, 300, 250, 300, 11)) {
 
  } else if (pantallas[11] == 0 && chequebotoncuadrado(250, 300, 250, 300, numeroactual)) {
 
  }
}

void planillabase(String mitexto, PImage lafoto) {
  String eltexto = mitexto;
  PImage mifoto = lafoto;
  image(mifoto, 0, 0);
  lafoto.resize(600,600);
  textSize(30);
  text(eltexto, 220, 350);
  fill(255);
  rect(100, 250, 100, 100);
  rect(0, 0, 50, 50);
  ellipse(200, 200, 50, 50);
  rect(250, 250, 50, 50);
}


 boolean chequebotoncuadrado(int posx1, int posx2, int posy1, int posy2, int num){
 int ux1= posx1;
 int ux2= posx2;
 
int  uy1= posy1;
int uy2= posy2;

num=numm;

for(int i=0;i<12;i++){
  pantallas[i]=1;
    pantallas[num]=0;


}

 return (mouseX>ux1 && mouseX<ux2 && mouseY >uy1 && mouseY<uy2);

 }
