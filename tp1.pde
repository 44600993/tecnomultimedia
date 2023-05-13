// Bruno Gonzalez 93505/2
// Comisión 1
PImage p1, p2, p3;
int count,posX,posE;
PFont a;



void setup() {
    posE=-200;
    posX=700;
    a = loadFont("nashe.vlw");
    count = 0;
    size(640, 480);
    p1 = loadImage("p1.jpg");
    p2 = loadImage("p2.jpg");
    p3 = loadImage("p3.jpg");
}

void draw() {
    textFont(a, 30);

    count++;
    println(count);
    fill(255,255,255);
    
    
    if (count < 250) {
        image(p1, 0, 0);
        fill(0);
        text("PUERTO MADRYN ES UNA CIUDAD TURISTICA",  posX, height / 8);
        if (posX>width/25) {
        posX=posX-20;
  }
        text("LOCALIZADA EN CHUBUT", posX, height / 5);

    } else {
        image(p2, 0, 0, 640, 480);
        text("CONOCIDA POR SUS GRANDES PLAYAS", 37, height / 8);
    }
    if (count > 500) {
        image(p3, 0, 0, 640, 480);
        textSize(30);
        text("Y BALLENAS",  255, height / 8);
        fill(04,03,4);
        rect(500, 380, 100, 50);
        textSize(15);
        fill(255,255,255);
        text("Reinicio", 523, 410);
    }
}
        
        

void mousePressed() {
    if (mouseX > 500 && mouseX < 600 && mouseY > 380 && mouseY < 480) {
        count=0;
        
    
      posX = 700;
    }
  }