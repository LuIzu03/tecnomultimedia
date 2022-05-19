PImage imagen2; 
PFont serio;
PFont arial;
PImage logo;
PImage robaPlantas;
float logomovimiento =270;
float logoY =240;
int izquierda= 1;
boolean boton2 =   mouseX >220  && mouseY >490 && mouseX<=130 && mouseY <70;
PImage cerebro;
PImage salvaje1;
PImage piratas1;
 PImage fondo4;
void setup () {
  
  size (600, 600);
  logo = loadImage ("logo.png");
  imagen2 = loadImage ("imagen2.png");
  serio = createFont ("serio.TTF", 30);
  arial = loadFont ("arial.vlw" );
  robaPlantas =loadImage ("robaPlantas.gif");
  cerebro = loadImage( "cerebro.png");
};



void draw () {

  println (frameCount+2);
  izquierda =frameCount;
  background(255 );
  image (logo, logomovimiento, logoY);
  if (frameCount>10)
  { logomovimiento = random (110, 170);
  };
  if (frameCount > 20) {
    logomovimiento = 160;
    logoY=170;
  }
  if (frameCount>30 ) {
    logomovimiento =random (170, 200);
    logoY= random (180, 210);
  };
  if (frameCount >40) {
    logomovimiento=160;
    logoY=170;
  };
  if (frameCount> 44) {
    logomovimiento = random (150, 130);
    logoY= random (160, 140);
  };
  if (frameCount> 46) {
    logomovimiento=160;
    logoY=170;
  };
  if (frameCount > 52) {
    logomovimiento=random (130, 110);
    logoY = random (140, 120);
  };
  if (frameCount >62) {
    logomovimiento = 160;
    logoY= 170;
  };

  image (robaPlantas, izquierda*4, 0);
  strokeWeight (100);
  textSize (random( 19, 19.4));
  fill (#FF7003);
  text("press enter to start", 300, 500);
  if (key == ENTER) {println (frameCount);
image (imagen2, 0,0);
noStroke();
fill (0,0,0, 170);
rect ( 50, 50, 500, 500);
fill (255);
//CREDITO 1
textFont (arial);
textSize (20); //ok esta fuente//
if (frameCount >170) {text ("BORJA GUILLAN, MOHAN RAJAGOPALAN,", 130, 260);
text ("JOHN STUMME.", 230, 280);};
if (frameCount > 210){text ("ALLEN MURRAY.", 230, 360);};
if (frameCount>250){text ("CORY AKKEMEIR, DAVID RYAN PAUL,", 130, 430); text ("LIAM ROBINSON.", 230, 450);};

textFont ( serio); 
textSize (30); //c9ambiar fuente por una del juego/
if (frameCount >130) {text ("POPCAP DUBLIN Y", 192,150);
text ("ELECTRONIC ARTS  ", 180, 180);};
if (frameCount > 150) {text ("CHIEF DESIGNER", 200, 220);};

if (frameCount >190){text ("PRODUCER IN CHIEF", 180, 330);};
if (frameCount>230){text ("ART DIRECTOR", 200, 400);};

if (frameCount>259)
//CREDITO 2
{PFont serio;
PFont arial;
PImage salvaje1;

size (600, 600);
salvaje1 = loadImage ("salvaje1.jpg");
serio = createFont ("serio.TTF", 30);
arial = loadFont ("arial.vlw" );


image (salvaje1, 0, 0);
noStroke();
fill (0,0,0, 170);
rect ( 50, 50, 500, 500);
fill (255);

textFont ( serio);
textSize (30); 
if (frameCount> 261){text ("TECHNICAL DIRECTOR", 160, 150);};
if (frameCount> 265){text("DIRECTOR OF", 210, 220);
text ("USER EXPERIENCE", 190, 250);};
if (frameCount>270){ text ("PRODUCT MANAGER", 180, 320);};

textFont (arial);
textSize (20);
if (frameCount >263){text ("TERRY FRANGUIADAKIS.", 190, 180);};
if (frameCount > 267) {text ("ADRIEN YUROZU.", 222, 280);};
if (frameCount> 272){text ("VISHAL AASDHIR, PHIL BOLUS,", 170, 350);
text ("VICNCENT CONNOLLY, DAN FRUCHTER,", 130, 375);};
if (frameCount> 276){
text ("ANDREW CAMBEL, PHIL KATZ,", 170, 400);
text ("PATRICK MCGRATH, JUSTIN WOOD,",130, 425);
text ("EMILY SHAW.", 245, 450);};
if (frameCount>280) {
 //CREDITO3
PImage piratas1;


size (600, 600);
piratas1 = loadImage ("piratas1.jpg");
serio = createFont ("serio.TTF", 30);
arial = loadFont ("arial.vlw" );


image (piratas1, 0, 0);
noStroke();
fill (0,0,0, 170);
rect ( 50, 50, 500, 500);
fill (255);

textFont ( serio);
textSize (30); 
if (frameCount>281){ text ("HEAD OF SERVER", 190, 150);
text (" ENGINEERING" ,200, 180);};
if (frameCount> 284) {text ("CHIEF DEVELOPMENT", 170, 250);
text ("DIRECTOR", 240, 280);};
if (frameCount> 288) {text("SOUND DIRECTOR", 190, 340);};
if (frameCount> 292) {text ("SOUND MANAGER", 190, 400);};

textFont (arial);

textSize (20);
if (frameCount>282){ text("RODD BAKER.", 230, 210);};
if (frameCount> 286) {text("LORIEN GREMORE.", 210,310);};
if (frameCount >290) {text ("GUY WHITMORE.",220, 370);};
if (frameCount>294) {text ("BECKY ALLEN, PAM ARONOFF.",150, 430);};
if (frameCount> 300) {
  //credito4
 PImage fondo4;

size (600, 600);
fondo4 =loadImage ("fondo4.jpg");
serio = createFont ("serio.TTF", 30);
arial = loadFont ("arial.vlw" );

image (fondo4, 0,0);
noStroke();
fill (0,0,0, 170);
rect ( 50, 50, 500, 500);
fill (255);
textFont ( serio);
textSize (30); 

if (frameCount>302 ) {text ("GAME DESIGN", 210, 150);};

if (frameCount> 308){text ("ART AND ANIMATION", 170, 300);};


textFont (arial);
textSize (20);

if (frameCount>304){ text ("SAM BEATTIE, BRETT JOHNSON," , 160,180);
text("BRIAN CHAN, ADAM MACDONELLI," ,140, 200);};
if (frameCount>306){text("JASON MAI, ROB MCDANIEL," ,170, 220);
text ("STHEPEN NOTLEY, MICHAEL RACIOPPI,", 130, 240);
text ("ELIZABETH SAMPAT, ANDY SEAVY.", 150, 260);};
if (frameCount> 310) {text ("CORY ALLEMEIR, JASON BROWN,", 150, 330);
text ("SHANE CAUCHI, MINYOUNG CHO,", 147, 350);
text ("SARAH DICKEN, RACHEL DOWNING,", 140, 370);};
if (frameCount> 312) {text ("FENG GAO, PEIXIN JIANG,", 180, 390);
text("RANDY LINDAHL, NOAH MAAS,", 150, 410);
text ("MONTE MICHAELIS, ERIN MIDDENDORF,", 120, 430);
text("CHUNXI MU, RAY OCAMPO.", 170, 450);};

};

};
};
if (frameCount > 320){
size (600, 600);
imagen2 = loadImage ("imagen2.png");
  cerebro =loadImage ("cerebro.png");
  serio = createFont ("serio.TTF", 30);
  arial = loadFont ("arial.vlw" );  
background (0);
  textFont ( serio);
   fill (58,255,0);   
 textSize(90);
  text ("THE ZOMBIES",10,120);
  textSize (90);
  text ("ATE", 140, 214);
  text ("YOUR",20,300);
  
  //b
  textFont ( serio);
   fill (58,255,0);   
 textSize(90);
 image (cerebro,  180, 180);
  text ("THE ZOMBIES",10,120);
  textSize (90);
  text ("ATE", 140, 214);
  text ("YOUR",20,300);

  fill (#C52CF5);
  rect (200,460,190, 70);
  fill (255);
textFont (arial);
textSize (30);

text ("TRY AGAIN",212,505);
};
};
};
void mouseClicked (){
if (boton2==mouseX > 200 && mouseY >460 && mouseX<190 && mouseY <70);{ frameCount= 0;
  size (600,600);
background (0);};
println (frameCount);
image (imagen2, 0,0);
noStroke();
fill (0,0,0, 170);
rect ( 50, 50, 500, 500);
fill (255);
//CREDITO 1
textFont (arial);
textSize (20); //ok esta fuente//
if (frameCount >170) {text ("BORJA GUILLAN, MOHAN RAJAGOPALAN,", 130, 260);
text ("JOHN STUMME.", 230, 280);};
if (frameCount > 210){text ("ALLEN MURRAY.", 230, 360);};
if (frameCount>250){text ("CORY AKKEMEIR, DAVID RYAN PAUL,", 130, 430); text ("LIAM ROBINSON.", 230, 450);};

textFont ( serio); 
textSize (30); //c9ambiar fuente por una del juego/
if (frameCount >130) {text ("POPCAP DUBLIN Y", 192,150);
text ("ELECTRONIC ARTS  ", 180, 180);};
if (frameCount > 150) {text ("CHIEF DESIGNER", 200, 220);};

if (frameCount >190){text ("PRODUCER IN CHIEF", 180, 330);};
if (frameCount>230){text ("ART DIRECTOR", 200, 400);};

if (frameCount>259)
//CREDITO 2
{PFont serio;
PFont arial;
PImage salvaje1;

size (600, 600);
salvaje1 = loadImage ("salvaje1.jpg");
serio = createFont ("serio.TTF", 30);
arial = loadFont ("arial.vlw" );


image (salvaje1, 0, 0);
noStroke();
fill (0,0,0, 170);
rect ( 50, 50, 500, 500);
fill (255);

textFont ( serio);
textSize (30); 
if (frameCount> 261){text ("TECHNICAL DIRECTOR", 160, 150);};
if (frameCount> 265){text("DIRECTOR OF", 210, 220);
text ("USER EXPERIENCE", 190, 250);};
if (frameCount>270){ text ("PRODUCT MANAGER", 180, 320);};

textFont (arial);
textSize (20);
if (frameCount >263){text ("TERRY FRANGUIADAKIS.", 190, 180);};
if (frameCount > 267) {text ("ADRIEN YUROZU.", 222, 280);};
if (frameCount> 272){text ("VISHAL AASDHIR, PHIL BOLUS,", 170, 350);
text ("VICNCENT CONNOLLY, DAN FRUCHTER,", 130, 375);};
if (frameCount> 276){
text ("ANDREW CAMBEL, PHIL KATZ,", 170, 400);
text ("PATRICK MCGRATH, JUSTIN WOOD,",130, 425);
text ("EMILY SHAW.", 245, 450);};
if (frameCount>280) {
 //CREDITO3
PImage piratas1;


size (600, 600);
piratas1 = loadImage ("piratas1.jpg");
serio = createFont ("serio.TTF", 30);
arial = loadFont ("arial.vlw" );


image (piratas1, 0, 0);
noStroke();
fill (0,0,0, 170);
rect ( 50, 50, 500, 500);
fill (255);

textFont ( serio);
textSize (30); 
if (frameCount>281){ text ("HEAD OF SERVER", 190, 150);
text (" ENGINEERING" ,200, 180);};
if (frameCount> 284) {text ("CHIEF DEVELOPMENT", 170, 250);
text ("DIRECTOR", 240, 280);};
if (frameCount> 288) {text("SOUND DIRECTOR", 190, 340);};
if (frameCount> 292) {text ("SOUND MANAGER", 190, 400);};

textFont (arial);

textSize (20);
if (frameCount>282){ text("RODD BAKER.", 230, 210);};
if (frameCount> 286) {text("LORIEN GREMORE.", 210,310);};
if (frameCount >290) {text ("GUY WHITMORE.",220, 370);};
if (frameCount>294) {text ("BECKY ALLEN, PAM ARONOFF.",150, 430);};
if (frameCount> 300) {
  //credito4
 PImage fondo4;

size (600, 600);
fondo4 =loadImage ("fondo4.jpg");
serio = createFont ("serio.TTF", 30);
arial = loadFont ("arial.vlw" );

image (fondo4, 0,0);
noStroke();
fill (0,0,0, 170);
rect ( 50, 50, 500, 500);
fill (255);
textFont ( serio);
textSize (30); 

if (frameCount>302 ) {text ("GAME DESIGN", 210, 150);};

if (frameCount> 308){text ("ART AND ANIMATION", 170, 300);};


textFont (arial);
textSize (20);

if (frameCount>304){ text ("SAM BEATTIE, BRETT JOHNSON," , 160,180);
text("BRIAN CHAN, ADAM MACDONELLI," ,140, 200);};
if (frameCount>306){text("JASON MAI, ROB MCDANIEL," ,170, 220);
text ("STHEPEN NOTLEY, MICHAEL RACIOPPI,", 130, 240);
text ("ELIZABETH SAMPAT, ANDY SEAVY.", 150, 260);};
if (frameCount> 310) {text ("CORY ALLEMEIR, JASON BROWN,", 150, 330);
text ("SHANE CAUCHI, MINYOUNG CHO,", 147, 350);
text ("SARAH DICKEN, RACHEL DOWNING,", 140, 370);};
if (frameCount> 312) {text ("FENG GAO, PEIXIN JIANG,", 180, 390);
text("RANDY LINDAHL, NOAH MAAS,", 150, 410);
text ("MONTE MICHAELIS, ERIN MIDDENDORF,", 120, 430);
text("CHUNXI MU, RAY OCAMPO.", 170, 450);};

};

};
};
if (frameCount > 320){
size (600, 600);
imagen2 = loadImage ("imagen2.png");
  cerebro =loadImage ("cerebro.png");
  serio = createFont ("serio.TTF", 30);
  arial = loadFont ("arial.vlw" );  
background (0);
  textFont ( serio);
   fill (58,255,0);   
 textSize(90);
  text ("THE ZOMBIES",10,120);
  textSize (90);
  text ("ATE", 140, 214);
  text ("YOUR",20,300);
  
  //b
  textFont ( serio);
   fill (58,255,0);   
 textSize(90);
 image (cerebro,  180, 180);
  text ("THE ZOMBIES",10,120);
  textSize (90);
  text ("ATE", 140, 214);
  text ("YOUR",20,300);
  
 
  fill (#C52CF5);
  rect (200,460,190, 70);
  fill (255);
textFont (arial);
textSize (30);

text ("TRY AGAIN",212,505);
};
};
