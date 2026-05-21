PImage fondo;
PImage portada;
PImage patosPreocupados;
PImage patosPreocupados2;
PImage nacimientoPatitos;
PImage patitoFeoCascaron;
PImage patosViendoPatito;
PImage patosDiscutiendo;
PImage patitoReflejo;
PImage patitoCulpable;
PImage patoJuguete;
PImage jugueteAtacando;
PImage patitoLlorando;
PImage patitosViendoPatito;

PFont texto;
float transicionTexto = 0;
float transicionTexto1 = 0;
float transicionTexto2 = 0;
float transicionTexto3 = 0;

float x1 = 0;
float x2 = 2000;
float velocidad=2;
float velDeFondo=0.5;

int imagenQuieta=0;
int imagenQuieta2=0;

int posOpuesta=930;
int dir=2;
int posX=0;
int botonX = 220;
int botonY = 400;
int ancho = 200;
int alto = 50;

int tiempoPantalla5;
int tiempoPantalla4;
int tiempoPantalla3;
int tiempoPantalla2;
int tiempoPantalla1;
int pantalla = 0;


int posXNac = 0;
int posXcasc=960;
int imagenQuietaNac = 0;
int imagenQuietaCasc = 0;
int dirNac=2;
int dirCasc=2;

int posYViendo= 0;
int imagenQuietaViendo=0;
int dirViendo=2;

int posYDisc= 0;
int posXDisc=450;
int imagenQuietaDisc=0;
int dirDisc=2;

int posYRef=0;
int imagenQuietaRef=0;
int dirRef=2;

int posCulp= 0;
int imagenQuietaCulp=0;
int dirCulp= -2;

int posXJug=0;
int imagenQuietaJug=0;
int dirJug=2;

int posXAtac=930;
int imagenQuietaAtac=0;
int dirAtac=2;


void setup() {
  size(640, 480);
  fondo=loadImage("fondo.png");
  portada=loadImage("portada.png");
  texto = loadFont("Garamond-Italic-32.vlw");
  textFont(texto);

  patosPreocupados=loadImage("patosPreocupados.png");
  patosPreocupados2=loadImage("patosPreocupados2.png");
  nacimientoPatitos=loadImage("nacimientoPatitos.png");
  patitoFeoCascaron=loadImage("patitoCascaron.png");
  patosViendoPatito=loadImage("patosViendoPatito.png");
  patosDiscutiendo=loadImage("patosDiscutiendo.png");
  patitoReflejo=loadImage("patitoViendoSuReflejo.png");
  patitoCulpable=loadImage("patitoCulpable.png");
  patoJuguete=loadImage("patoDeJuguete.png");
  jugueteAtacando=loadImage("jugueteAtacando.png");
  patitoLlorando=loadImage("patitoFeoLlorando.png");
  patitosViendoPatito=loadImage("patitosViendoAPatito.png");
}


void draw() {
  if (pantalla == 0) {

    imageMode(CORNER);
    image(fondo, x1, 0);
    image(fondo, x2, 0);
    x1 -= velDeFondo;
    x2 -= velDeFondo;
    if (x1 <= -2000) {
      x1 = 2000;
    }
    if (x2 <= -2000) {
      x2 = 2000;
    }

    imageMode(CENTER);
    image(portada, 320, 240, 250, 350);
    fill(#EDC2D9);
    stroke(255);
    rect(botonX, botonY, ancho, alto, 10);
    fill(255);
    textAlign(CENTER);
    textSize(40);
    text("Comenzar", 320, 435);
  }


  if (pantalla == 1) {
    imageMode(CORNER);
    image(fondo, x1, 0);
    image(fondo, x2, 0);
    x1 -= velDeFondo;
    x2 -= velDeFondo;
    if (x1 <= -2000) {
      x1 = 2000;
    }
    if (x2 <= -2000) {
      x2 = 2000;
    }


    fill(0, 0, 0, 80);
    rect(20, 350, 600, 620);

    if (transicionTexto < 255) {
      transicionTexto += 5;
    }
    fill(255, transicionTexto);
    textSize(30);
    text("Había una vez una pareja, muy ansiosa por la llegada de sus patitos",
      110, 380, 380, 380);

    imageMode(CENTER);
    image(patosPreocupados, posX - 160, 200, 360, 280);

    if (posX<=350) {
      posX+=dir;
    }
    if (posX>=350 && imagenQuieta <120) {
      posX=350;
      imagenQuieta++;
    }
    if (imagenQuieta==120) {
      dir= -2;
      posX +=dir;
    }


    image(patosPreocupados2, posOpuesta, 200, 270, 215);

    if (posOpuesta>=510) {
      posOpuesta-=dir;
    }
    if (posOpuesta<=510 && imagenQuieta2 <120) {
      posOpuesta=510;
      imagenQuieta2++;
    }
    if (imagenQuieta2==120) {
      dir= +2;
      posOpuesta -=dir;
    }


    tiempoPantalla1++;
    if (tiempoPantalla1>=450) {
      pantalla=2;
      tiempoPantalla1=0;
    }
  }



  if (pantalla == 2) {

    imageMode(CORNER);
    image(fondo, x1, 0);
    image(fondo, x2, 0);
    x1 -= velDeFondo;
    x2 -= velDeFondo;
    if (x1 <= -2000) {
      x1 = 2000;
    }
    if (x2 <= -2000) {
      x2 = 2000;
    }


    fill(0, 0, 0, 80);
    rect(20, 350, 600, 620);

    if (transicionTexto1 < 255) {
      transicionTexto1 += 5;
    }
    fill(255, transicionTexto1);
    textSize(30);
    text("Pasado el tiempo, los patitos nacieron. Estaban todos muy contentos!... hasta que el huevo más grande se abrió",
      90, 370, 480, 480);

    image(nacimientoPatitos, posXNac-350, 30, 370, 300);

    if (posXNac<=350) {
      posXNac+=dirNac;
    }
    if (posXNac>=350 && imagenQuietaNac <180) {
      posXNac=350;
      imagenQuietaNac++;
    }
    if (imagenQuietaNac==180) {
      dirNac= -2;
      posXNac +=dirNac;
    }


    image(patitoFeoCascaron, posXcasc, 185, 130, 170);

    if (posXcasc > 300 && imagenQuietaCasc == 0) {
      posXcasc -= 2;
    }
    if (posXcasc <= 400 && imagenQuietaCasc < 65) {
      posXcasc = 400;
      imagenQuietaCasc++;
    }
    if (imagenQuietaCasc >= 65) {
      posXcasc += 2;
    }

    tiempoPantalla2++;
    if (tiempoPantalla2>=450) {
      pantalla=3;
      tiempoPantalla2=0;
    }
  }


  if (pantalla == 3) {

    imageMode(CORNER);
    image(fondo, x1, 0);
    image(fondo, x2, 0);
    x1 -= velDeFondo;
    x2 -= velDeFondo;
    if (x1 <= -2000) {
      x1 = 2000;
    }
    if (x2 <= -2000) {
      x2 = 2000;
    }
    fill(0, 0, 0, 80);
    rect(20, 350, 600, 620);

    if (transicionTexto2 < 255) {
      transicionTexto2 += 5;
    }
    fill(255, transicionTexto2);
    textSize(25);
    text("Los padres, disgustados, comenzaron a discutir viendo al patito tan feo y distinto a los hermanos... El padre se dio la vuelta y se fue, la madre hizo lo mismo pero con todos sus lindos patitos",
      45, 370, 560, 520);

    imageMode(CENTER);
    image(patosViendoPatito, 190, posYViendo-200, 250, 205);

    if (posYViendo<400 && imagenQuietaViendo ==0) {
      posYViendo+=dirViendo;
    }
    if (posYViendo == 400 && imagenQuietaViendo <120) {
      posYViendo=400;
      imagenQuietaViendo++;
    }
    if (imagenQuietaViendo>= 120) {
      dirViendo=-2;
      posYViendo-=2;
    }

    image(patosDiscutiendo, posXDisc, posYDisc-420, 280, 225);


    if (posYDisc<=600 && imagenQuietaDisc ==0) {
      posYDisc+=dirDisc;
    }
    if (posYDisc == 600 && imagenQuietaDisc <60) {
      posYDisc=600;
      imagenQuietaDisc++;
    }
    if (imagenQuietaDisc>= 60 && posYDisc == 600) {
      posXDisc++;
    }

    tiempoPantalla3++;
    if (tiempoPantalla3>=560) {
      pantalla=4;
      tiempoPantalla3=0;
    }
  }



  if (pantalla == 4) {

    imageMode(CORNER);
    image(fondo, x1, 0);
    image(fondo, x2, 0);
    x1 -= velDeFondo;
    x2 -= velDeFondo;
    if (x1 <= -2000) {
      x1 = 2000;
    }
    if (x2 <= -2000) {
      x2 = 2000;
    }


    fill(0, 0, 0, 80);
    rect(20, 350, 600, 620);

    if (transicionTexto3 < 255) {
      transicionTexto3 += 5;
    }
    fill(255, transicionTexto3);
    textSize(30);
    text("El patito se quedó solo. Se miraba en un charquito de agua y (sin saber que este lo deformaba), culpaba a su reflejo. Se llamó a si mismo Patito Feo",
      50, 370, 550, 550);
    imageMode(CENTER);
    image(patitoReflejo, width/2, posYRef-100, 360, 360);

    if (posYRef<= 250 && imagenQuietaRef ==0) {
      posYRef+=dirRef;
    }
    if (posYRef == 250 && imagenQuietaRef <120) {
      posYRef=250;
      imagenQuietaRef++;
      if (imagenQuietaRef>= 120) {
        patitoReflejo= patitoCulpable;
      }
    }

    tiempoPantalla4++;
    if (tiempoPantalla4>=300) {
      pantalla=5;
      tiempoPantalla4=0;
    }
  }

  if (pantalla == 5) {

    imageMode(CORNER);
    image(fondo, x1, 0);
    image(fondo, x2, 0);
    x1 -= velDeFondo;
    x2 -= velDeFondo;
    if (x1 <= -2000) {
      x1 = 2000;
    }
    if (x2 <= -2000) {
      x2 = 2000;
    }


    fill(0, 0, 0, 80);
    rect(20, 350, 600, 620);

    if (transicionTexto3 < 255) {
      transicionTexto3 += 5;
    }
    fill(255, transicionTexto3);
    textSize(30);
    text("Al rato Patito Feo encontró a quién creyó ser su nueva madre(un pato de juguete). Hasta que se dio cuenta de lo feo que era y lo atacó.",
      40, 370, 550, 550);
    imageMode(CENTER);
    image(patoJuguete, posXJug-200, 200, 280, 280);

    if (posXJug<=320) {
      posXJug+=dirJug;
    }
    if (posXJug>=320 && imagenQuietaJug <120) {
      posXJug=320;
      imagenQuietaJug++;
    }
    if (imagenQuietaJug==120) {
      dirJug= -2;
      posXJug +=dirJug;
    }

    image(jugueteAtacando, posXAtac, 185, 280, 280);

    if (posXAtac < 400 && imagenQuietaAtac == 0) {
      posXAtac -= 2;
    }
    if (posXAtac == 400 && imagenQuietaAtac < 65) {
      posXAtac= 400;
      imagenQuietaAtac++;
    }
    if (imagenQuietaAtac >= 65) {
      posXAtac += 2;
    }

    tiempoPantalla5++;
    if (tiempoPantalla5>=300) {
      pantalla=6;
      tiempoPantalla5=0;
    }
  }

  if (pantalla == 6) {

    imageMode(CORNER);
    image(fondo, x1, 0);
    image(fondo, x2, 0);
    x1 -= velDeFondo;
    x2 -= velDeFondo;
    if (x1 <= -2000) {
      x1 = 2000;
    }
    if (x2 <= -2000) {
      x2 = 2000;
    }


    fill(0, 0, 0, 80);
    rect(20, 350, 600, 620);

    if (transicionTexto3 < 255) {
      transicionTexto3 += 5;
    }
    fill(255, transicionTexto3);
    textSize(30);
    text("El Patito Feo rompió en llanto, no tenía familia. Estába solo. Instantáneamente graznidos al unísono llamaron su atención, haciendo que abra sus ojos.",
      40, 370, 550, 550);
    imageMode(CENTER);
    image(patitoLlorando, 0, 0, 360, 360);


    image(patitosViendoPatito, 100,100,360, 360);
  }
}

void mousePressed() {
  if (mouseX > botonX && mouseX < botonX + ancho &&
    mouseY > botonY && mouseY < botonY + alto) {
    pantalla = 1;
  }
}
