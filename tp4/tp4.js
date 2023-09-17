let bubble = [];
let xbubble = 190;
let ybubble = 100;
let moverx = 190;
let movery = 100;
let tamBubble = 50;
let velocidadY;
let pxCortas = [190, 380, 80, 260, 430];
let pyCortas = [160, 160, 450, 450, 450];
let pxLargas = [160, 280];
let pyLargas = [250, 340];
let puntos = 0;
let estado = 0;
let textos = [
  "INICIAR",
  "CRÉDITOS",
  "INSTRUCCIONES",
  "EL SIMPÁTICO BUBBLE NECESITA ALIMENTARSE PARA ENFRENTARSE A SUS ENEMIGOS.",
  "PARA ESO, NECESITA RECOGER LOS ALIIMENTOS DE LAS PLATAFORMAS.",
  "TENDRÁ UN MINUTO Y MEDIO PARA LOGRAR SU OBJETIVO.",
  "LAS FLECHAS DEL TECLADO PERMITEN EL MOVIMIENTO DE BUBBLE.",
  "MUCHA SUERTE :)",
  "PUNTOS = ",
];
function preload() {
  for (let i = 0; i < 3; i++) {
    bubble[i] = loadImage("data/bubble" + i + ".png");
  }
}
function setup() {
  createCanvas(640, 640);
  background(0);
  textSize(32);
  textAlign(CENTER, CENTER);
  x = 0;
  y = 0;
  ancho = 110;
  alto = 40;
}

function draw() {
  misEstados(estado);


  if (keyCode === UP_ARROW && ybubble >= 90 && !colision (xbubble,ybubble-1)) {
    ybubble--;
  } else if (keyCode === DOWN_ARROW && ybubble <=500 && !colision(xbubble, ybubble +1)) {
    ybubble++;
  } else if (keyCode === RIGHT_ARROW && xbubble <=550 && !colision(xbubble + 1, ybubble)) {
    xbubble++;
  } else if (keyCode === LEFT_ARROW  && xbubble >=40 && !colision(xbubble - 1, ybubble)) {
    xbubble--;
  }
}
function boton(px, py, an, al) {
  return mouseX > px && mouseX < px + an && mouseY > py && mouseY < py + al;
}
function misEstados(estado) {
  if (estado === 0) {
    background(255);
    image(bubble[0], 120, 50);
    image(bubble[1], 10, 280, 150, 150);
    noStroke();
    fill(247, 161, 0);
    rect(245, 420, 150, 50, 10);
    rect(225, 520, 190, 50, 10);
    fill(0);
    text(textos[0], width / 2, 450);
    text(textos[1], width / 2, 550);
  } else if (estado === 1) {
    background(0);
    noStroke();
    fill(251, 65, 154);
    rect(50, 50, 540, 540, 20);
    fill(255);
    textSize(50);
    textAlign(CENTER);
    text(textos[2], width / 2, 100);
    textAlign(LEFT);
    textSize(20);
    text(textos[3], 80, 100, 500, 170);
    text(textos[4], 80, 160, 500, 170);
    text(textos[5], 80, 220, 500, 170);
    text(textos[6], 80, 280, 500, 170);
    text(textos[7], width / 2, 510);
    fill(254, 238, 31);
    rect(225, 410, 190, 70, 10);
    fill(247, 161, 0);
    rect(235, 420, 170, 50, 10);
    textSize(30);
    fill(0);
    text(textos[0], 270, 450);
  } else if (estado === 2) {
    //pantalla de juego
    background(0);
    fill(255);
    textSize(20);
    text(textos[8] + puntos, 480, 30);
    for (let i = 0; i < pxCortas.length; i++) {
      //dibujar plataformas
      plataformas(pxCortas[i], pyCortas[i], 120, 30);
      plataformasLargas(pxLargas[i], pyLargas[i], 220, 30);
    }
    fill(251, 65, 154);
    rect(0, 50, width, 40); //bode superior dreceho- limites del juego
    rect(0, 50, 40, 540);
    rect(600, 50, 40, 540);
    rect(0, 550, 300, 40);
    rect(400, 550, 200, 40);
    image(bubble [2],xbubble, ybubble, tamBubble, tamBubble);
    
  }
}
function mousePressed() {
  if (estado === 0) {
    if (boton(245, 420, 150, 50)) {
      estado = 1;
    }
  } else if (estado === 0) {
    if (boton(225, 520, 190, 50)) {
      estado = 3;
    }
  } else if (estado === 1) {
    if (boton(235, 420, 170, 50)) {
      estado = 2;
    }
  }
}
function plataformas(x, y, ancho, alto) {
  fill(251, 65, 154);
  rect(x, y, ancho, alto);
}

function plataformasLargas(x, y, ancho, alto) {
  fill(251, 65, 154);
  rect(x, y, ancho + 140, alto);
}
if (puntos >= 100) {
  fill(255, 0, 0);
  textSize(32);
  text("¡Has ganado!", width / 2 - 100, height / 2);
  noLoop(); // Detiene el juego
}

function colision(x,y) {
for (let i = 0; i < pxCortas.length; i++) {
    if (x + tamBubble > pxCortas[i] && x < pxCortas[i] + 120 && y + tamBubble > pyCortas[i] && y < pyCortas[i] + 30) {
      return true; 
    }
  }

  for (let i = 0; i < pxLargas.length; i++) {
    if (x + tamBubble > pxLargas[i] && x < pxLargas[i] + 220 && y + tamBubble > pyLargas[i] && y < pyLargas[i] + 30) {
      return true; 
    }
  }
}
