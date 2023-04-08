// Gonzalez Bruno
// tp0 comisión 1

PImage jaja;
size(800, 400);
jaja = loadImage("images.jpg");
jaja.resize(400, 400);
background(46, 169, 239);
noStroke();


  fill(107,189,237);
    triangle(300,250,470,50,750,250); // detalle del cielo
  fill(153,184,212);
    triangle(650,250,710,160,770,250); //montaña der del fondo
    triangle(400,250,470,155,550,250); //montaña del fondo izq
  fill(255, 252, 251);
    triangle(400, 250, 600, 100, 800, 250); //montaña grande del medio
    triangle(350, 250, 430, 150, 500, 250); //montaña grande izq



  fill(1, 94, 189);
    triangle(600, 0, 800, 100, 800, 0); // azul del cielo der
  fill(0, 123, 213);
    quad(550, 0, 650, 0, 800, 100, 800, 150); //degradado
  fill(2, 152, 228);
    quad(500, 0, 550, 0, 800, 150, 800, 200); //degradado

  fill(144,161,151);
    quad(425,250,500,175,570,175,650,250); // montaña verde izq
    triangle(615,250,660,190,750,250); //montaña verde der
    fill(255, 252, 251);
    triangle(650, 250, 750, 150, 850, 250); // montaña grande der
  fill(43, 49, 23);
    rect(400, 230, 800, 400); //verde de la tierra
  fill(3, 158, 202);
    rect(400, 250, 800, 400); //agua

  fill(189, 193, 170);
    triangle(400, 250, 600, 375, 800, 250); // reflejo montaña del medio
    triangle(350, 250, 430, 350, 500, 250); // reflejo montaña izq
  fill(11,120,161);
    ellipse(850, 500, 250, 350); // agua más oscura
  fill(189, 193, 170);
    triangle(650, 250, 750, 350, 850, 250); // reflejo montaña der
  fill(26,99,118);
    triangle(450,250,535,320,600,250); //reflejo montaña verde izq
    triangle(615,250,660,290,700,250);
  fill(204,156,80);
    quad(400,250,450,235,570,240,650,250); //tierra
    quad(650,250,700,245,775,235,800,250); //tierra




  image(jaja, 0, 0, 400, 400);
