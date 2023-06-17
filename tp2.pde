// Comisión 1 
// Bruno Gonzalez 93505/2
int cant = 28;
int tam;
PImage ima;
float angle = 0.0;

void setup() {
  ima = loadImage("ima.jpg");
  size(800, 400);
  tam = width / cant;
}

void draw() {
  background(255);
  cuadradoline();
  drawEllipses();
  image(ima, 0, 0, width/2, height);
}

void cuadradoline() {
  // Dibuja la secuencia de cuadrados y las líneas oblicuas
  for (int i = 0; i < cant; i++) {
    for (int j = 0; j < cant; j++) {
      strokeWeight(5);
      stroke(130);
      fill(255);
      rect(i * tam, j * tam, tam, tam);
    }
  }
  
  stroke(130);
  strokeWeight(4);
  for (int i = 0; i < cant; i++) {
    for (int j = 0; j < cant; j++) {
      pushMatrix();  // Guarda la posición y rotación actual
      translate(i * tam + tam/2, j * tam + tam/2);  // Mueve al centro del cuadrado actual
      rotate(radians(map(mouseY, 0, height, 0, height)));  // Rota el lienzo basado en la posición del mouse mapeada a un rango de valores de rotación
      if ((i + j) % 2 == 0) {
        line(-tam/2, -tam/2, tam/2, tam/2);
      } else {
        line(-tam/2, tam/2, tam/2, -tam/2);
      }
      popMatrix();  // Restaura la posición y rotación previas

    }
  }
}

void drawEllipses() {
  stroke(255);
  strokeWeight(1);
  fill(0);
  for (int i = 0; i < cant; i++) {
    for (int j = 0; j < cant; j++) {
      if ((i % 4 == 3 && j % 4 == 0)) {
        ellipse(i * tam, (j + 1) * tam, tam/3, tam/3);
      }
    }
  }
}
void keyPressed(){
      if(key=='r'){
      mouseY=0;
      }
}
