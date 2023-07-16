//tp3
//Lucía Izurieta
//98630/2
//link al video: https://youtu.be/JeRdK947-2s

String[] oracionesLargas = {"WILL HALLAWAY Y JIM NIGHTSHADE PRESENCIAN LA\nLLEGADA DE UN MISTERIOSO TREN EN EL MEDIO DE LA NOCHE.","LAS VIBRAS MISTERIOSAS Y LAS AURAS OSCURAS\nLES DAN MIEDO, POR LO QUE REGRESAN A SUS CASAS.","DESCUBREN UN CIRCO CON ATRACCIONES MACABRAS/nY SERES INUSUALES.","JIM Y WILL DECIDEN SEGUIR DISFRUTANDO DE LAS ATRACCIONES\n PREFIEREN IGNORAR LOS ESCALOFRIOS.","DESCUBREN QUE EN CADA CIUDAD A DONDE VA EL CIRCO, DESAPARECEN JÓVENES.\n ESTÁN BUSCANDO ALMAS JÓVENES PARA SUS PROPÓSITOS MALVADOS.","WILL Y JYM DECIDEN ENFRENTAR SUS PROPIOS MIEDOS PARA LUCHAR\n CONTRA EL CIRCO. ACEPTAN EL DESAFÍO Y ARRIESGAN SUS VIDAS\n POR EL BIEN DE LA COMUNIDAD.","VAN EN BÚSQUEDA DE CHARLES, PADRE DE WILL, QUIÉN LES\nBRINDA SU SABIDURÍA Y EXPERIENCIA PARA ENFRENTAR EL MAL.","SE ENFRENTAN EL SR.DARK, ÉL MALVADO DIRECTOR DEL CIRCO,\nQUE POSEE EL DON DE LEER LOS DESEOS MÁS PROFUNDOS DE LAS\nPERSONAS, CON LA ASTUCIA DE LOS CHICOS Y SU CONOCIMIENTO\nPARA ENGAÑAR AL ENEMIGO, TRIUNFAN.", "A PESAR DE SUS INTENTOS, EL CICRO LOGAR ESCAPAR, Y\nDEJA UN RASTRIO DE DESTRUCCIÓN A SU PASO. LOS CHICOS DEBEN\nLIDIAR CON EL FRACASO Y LA DERROTA", "LOS PERSONAJES VENCEN Y DERROTAN AL CIRCO,\nRESTAURAN LA PAZ EN GREENTOWN",
};
String[] oraciones = {"LA FERIA DE LAS TINIEBLAS",
"INICIAR","CRÉDITOS","A","B", "C","DECIDEN NO IR","DECIDEN EXPLORAR","DECIDEN MANTENER \n DISTANCIA","DECIDEN INVESTIGAR \nLOS SECRETOS DEL CIRCO","REGRESAN A CASA","ENFRENTAR LOS MIEDOS","HUIR EN BÚSQUEDA\n DE AYUDA","IR AL ENFRENTAMIENTO","DESENLACE","ESCRITOR","BRADBURY RAY","GUIÓN","CHATGPT","ILUSTRACIÓN","BLUEWILLOW","EDICIÓN", "LUCÍA IZURIETA","REINICIAR", "..................", "PRESIONAR ENTER PARA REINICIAR",
};
int estado =0;
float posX = random (100, 500);
int c =12;
PImage[] imagen = new PImage [c];
void setup () {
  size (600, 600);
  for (int i= 0; i <c; i++) {
    imagen [i] =loadImage  ("imagen" + i +".jpg");
  }
}

void draw () {
  background (255);
  misEstados();
//  println (mouseX, mouseY);
}






void misEstados () {
  if  (estado==0) {
    image (imagen [0], 0, 0, 600, 600);
    noStroke();
    textAlign (LEFT, CENTER );
    fill (255, 100);
    rect (0, 50, 600, 100);
    rect (270, 470, 110, 40);
    rect (250, 540, 140, 40);
    textSize (50);
    fill (0);
    text (oraciones [0], 20, 100);
    textSize (30);
    text (oraciones [1], 280, 490);
    text (oraciones [2], 260, 555);
  } else if (estado == 1) {
    image (imagen [1], 0, 0, 600, 600);

    fill (255, 100);
    rect (0, 50, 600, 100);
    rect (85, 485, 40, 40);
    rect (485, 485, 40, 40);
    fill (255);
    textSize(20);
    text (oracionesLargas [0], 40, 100);
    text (oraciones [3], 100, 500);
    text (oraciones [4], 500, 500);
    text (oraciones [6], 50, 540);
    text (oraciones [7], 420, 540);
  } else if (estado == 2) {
    image (imagen [3], 0, 0, 600, 600);

    fill (255, 100);
    rect (0, 50, 600, 100);
    rect (230, 540, 140, 40);
    fill (0);
    textAlign (LEFT, CENTER);
    textSize(20);
    text (oracionesLargas [1], 40, 100);
    textSize (30);
    text (oraciones [23], 240, 560);
  } else if (estado == 3) {
    image (imagen [2], 0, 0, 600, 600);

    textAlign (LEFT, CENTER );
    fill (255, 100);
    rect (0, 50, 600, 100);
    rect (85, 485, 40, 40);
    rect (435, 485, 40, 40);
    fill (255);
    textSize(20);
    text (oracionesLargas [2], 40, 100);
    text (oraciones [4], 100, 500);
    text (oraciones [5], 450, 500);
    text (oraciones [8], 40, 550);
    text (oraciones [9], 370, 550);
  } else if (estado == 4) {
    image (imagen [5], 0, 0, 600, 600);

    textAlign (LEFT, CENTER );
    fill (255, 100);
    rect (85, 485, 40, 40);
    rect (485, 485, 40, 40);
    rect (0, 50, 600, 100);
    fill (255);
    textSize(20);
    text (oracionesLargas [3], 40, 100);
    text (oraciones [4], 100, 500);
    text (oraciones[5], 500, 500);
    text (oraciones [10], 40, 550);
    text (oraciones [23], 470, 550);
  } else if (estado == 5) {
    image (imagen [7], 0, 0, 600, 600);

    textAlign (LEFT, CENTER );
    fill (255, 100);
    rect (0, 50, 600, 100);
    rect (85, 485, 40, 40);
    rect (485, 485, 40, 40);
    fill (255);
    textSize(17);
    text (oracionesLargas [4], 5, 100);
    text (oraciones [4], 100, 500);
    text (oraciones[5], 500, 500);
    text (oraciones[11], 40, 550);
    text (oraciones[12], 440, 560);
  } else if (estado == 6) {
    image (imagen [6], 0, 0, 600, 600);
    fill (255, 100);
    rect (0, 50, 600, 100);
    rect (285, 485, 40, 40);
    fill (255);
    textAlign (LEFT, CENTER);
    textSize(20);
    text (oracionesLargas [5], 5, 100);
    text (oraciones [4], width/2, 500);
    text (oraciones[13], 220, 550);
  } else if (estado ==7) {
                    image (imagen [8], 0,0,600,600);

    fill (255, 100);
    rect (0, 50, 600, 100);
    rect (285, 485, 40, 40);
    fill (255);
    textAlign (LEFT, CENTER);
    textSize(20);
    text (oracionesLargas [6], 20, 100);
    text (oraciones [5], width/2, 500);
    text (oraciones[13], 220, 550);
  } else if (estado == 8) {
    image (imagen [9], 0, 0, 600, 600);

    fill (255, 100);
    rect (0, 50, 600, 150);
    rect (285, 485, 40, 40);
    fill (255);
    textAlign (LEFT, CENTER);
    textSize(20);
    text (oracionesLargas [7], 20, 120);
    text (oraciones [4], width/2, 500);
    text (oraciones[14], 260, 550);
  } else if (estado == 9 ) {
    image (imagen [10], 0, 0, 600, 600);

    fill (255, 100);
    rect (0, 50, 600, 120);
    rect (285, 485, 40, 40);
    fill (0);
    textAlign (LEFT, CENTER);
    textSize(20);
    text (oracionesLargas [8], 20, 110);
    text (oraciones [5], width/2, 500);
    text (oraciones[23], 260, 550);
  } else if ( estado == 10) {
    image (imagen [4], 0, 0, 600, 600);
    fill (255, 100);
    rect (0, 50, 600, 120);
    rect (85, 485, 40, 40);
    rect (485, 485, 40, 40);
    fill (0);
    textAlign (LEFT, CENTER);
    textSize(20);
    text (oracionesLargas [9], 10, 110);
    text (oraciones [4], 100, 500);
    text (oraciones [5], 500, 500);
    text (oraciones [2], 460, 550);
    text (oraciones[23], 60, 550);
  } else if (estado == 11) {
    image (imagen [4], 0, 0, 600, 600);
    fill (255, 100);
    rect (50, 50, 500, 500);
    fill (0);
    textAlign (LEFT );
    textSize(30);
    text (oraciones [0], 130, 120);
    text (oraciones[2], 240, 170);
    textSize(25);
    text (oraciones [15], 70, 250);
    text (oraciones [24], 220, 250);
    text (oraciones [16], 380, 250);
    text (oraciones [17], 70, 320);
    text (oraciones [24], 220, 320);
    text (oraciones [18], 380, 320);
    text (oraciones [19], 70, 390);
    text (oraciones [24], 220, 390);
    text (oraciones [20], 380, 390);
    text (oraciones [21], 70, 460);
    text (oraciones [24], 220, 460);
    text (oraciones [22], 380, 460);
    textSize (15);
    text (oraciones[25], posX, 550);
  }
}

void mousePressed () {
  if (estado == 0) {
    if (boton(250, 470, 110, 40)) {
      estado = 1;
    } else if (boton(270, 540, 110, 40)) {
      estado = 11;
    }
  } else if (estado == 1) {
    if (boton(85, 485, 40, 40)) {
      estado = 2;
    } else if (boton(485, 485, 40, 40)) {
      estado = 3;
    }
  } else if (estado == 2) {
    if (boton(230, 540, 140, 40)) {
      estado = 0;
    }
  } else if (estado == 3) {
    if (boton(435, 485, 40, 40)) {
      estado = 5;
    } else if (boton(85, 490, 40, 40)) {
      estado = 4;
    }
  } else if (estado == 4) {
    if (boton(500, 500, 40, 40)) {
      estado =0;
    } else if (boton(85, 500, 40, 40)) {
      estado =2;
    }
  } else if (estado == 5) {
    if (boton(85, 485, 40, 40)) {
      estado =6;
    } else if (boton(485, 485, 40, 40)) {
      estado=7;
    }
  } else if ( estado == 6) {
    if (boton(285, 485, 40, 40)) {
      estado= 8;
    }
  } else if ( estado == 7) {
    if (boton(285, 485, 40, 40)) {
      estado= 9;
    }
  } else if (estado == 8) {
    if (boton(285, 485, 40, 40)) {
      estado = 10;
    }
  } else if (estado == 9) {
    if (boton(285, 485, 40, 40)) {
      estado = 0;
    }
  } else if (estado == 10) {
    if (boton(85, 485, 40, 40)) {
      estado = 0;
    } else if (boton(485, 485, 40, 40)) {
      estado = 11;
    }
  }
}

boolean boton (int px, int py, int an, int al) {
  return (mouseX>px && mouseX<px+an && mouseY>py && mouseY<py+al);
}

void keyPressed () {
  if (estado ==11) {
    if ( key == ENTER) {
      estado =0;
    }
  }
}
