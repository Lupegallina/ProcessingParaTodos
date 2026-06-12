int pos=408;
int cantidadCuad=25;
int cantidadCuad2=18;
int cantElipse=25;
int tamCelda =0 ;
int tamCelda2 =0 ;



void fondo() {
  noStroke();
  for (int y=0; y<cantidadCuad; y++) {
    for (int i=0; i<8; i++) {
      fill(42 + i*14, 55 + i*14, 96 + i*14);
      rect( 688+i*tamCelda, y*tamCelda, tamCelda, tamCelda);
    }
  }
  for (int y=0; y<10; y++) {
    for (int i=0; i<25; i++) {
      fill(46 + y*18, 55 + y*18, 104 + y*18);
      rect(400 + i*tamCelda, 288 + y*tamCelda, tamCelda, tamCelda);
    }
  }

  for (int y=0; y<4; y++) {
    for (int i=0; i<8; i++) {
      fill(70+ i*20, 75+i*20, 160+i*20 );
      rect(720+i*tamCelda, 272 + y*tamCelda, tamCelda, tamCelda);
    }
  }

  for (int y=0; y<4; y++) {
    for (int i=0; i<4; i++) {
      fill(85+ i*20, 100+i*20, 150+i*20 );
      rect(736+i*tamCelda, 289 + y*tamCelda, tamCelda, tamCelda);
    }
  }
}

void fondo2() {
  noStroke();
  for (int o=0; o<cantidadCuad2; o++) {
    for (int x=0; x<cantidadCuad2; x++) {

      float distNaranja = dist(x, o, 6, 6);

      if (distNaranja <= 10) {
        float r = map(distNaranja, 0, 7, 211, 100);
        float g = map(distNaranja, 0, 7, 95, 52);
        float b = map(distNaranja, 0, 7, 0, 55);
        fill(r, g, b);
      } else {
        fill(75, 55, 63);
      }
      rect( 400+ x*tamCelda, o*tamCelda, 16, 16);
    }
  }

  for (int o=0; o<cantidadCuad2; o++) {
    for (int x=0; x<6; x++) {

      fill(75- x*5, 55-x*2, 63-x*2);
      rect(592+ x*tamCelda, o*tamCelda, 16, 16);
    }
  }
  for (int o=0; o<5; o++) {
    for (int x=0; x<cantidadCuad2-3; x++) {

      fill(75- o*5, 55-o*2, 63-o*2);
      rect(400+ x*tamCelda, 208+ o*tamCelda, 16, 16);
    }
  }
  for (int x=0; x<cantidadCuad2; x++) {
    fill(99- x*3, 57-x*1, 55);
    rect(400+ x*tamCelda, 0*tamCelda, 16, 16);
  }
}



void grilla1() {


  for (int y=0; y<cantElipse; y++) {
    for (int i=0; i<cantElipse; i++) {

      float r = map(i, 0, 25, 139, 62);
      float g = map(i, 0, 25, 159, 80);
      float b = map(i, 0, 25, 253, 186);

      float d = dist(i, y, 18, 18);

      if (d < 8) {
        r = map(d, 0, 8, 193, r);
        g = map(d, 0, 8, 229, g);
        b = map(d, 0, 8, 48, b);
      }

      fill(r, g, b);

      float distan = dist(i, y, 12, 12);
      float tam = map(distan, 0, 12, 11, 12.5);

      ellipse(pos+i*16, 8+y*16, tam, tam);
    }
  }


  for (int c=0; c<11; c++) {
    for (int v=0; v<11; v++) {


      int gx = v + 7;
      int gy = c + 7;

      float r = map(gx, 0, 25, 139, 62);
      float g = map(gx, 0, 25, 159, 80);
      float b = map(gx, 0, 25, 253, 186);

      float d = dist(gx, gy, 18, 18);

      if (d < 8) {
        r = map(d, 0, 8, 193, r);
        g = map(d, 0, 8, 229, g);
        b = map(d, 0, 8, 48, b);
      }

      fill(r, g, b);

      rect(514.5 + v*16,
        114.5 + c*16,
        11,
        11);
    }
  }
}

void grilla2() {
  for (int y=0; y<cantElipse; y++) {
    for (int i=0; i<cantElipse; i++) {
      float r= map(i, 0, 25, 139, 62);
      float g= map(i, 0, 25, 159, 80);
      float b= map(i, 0, 25, 253, 186);

      if (i>=7 && y>=7) {
        float verde = dist(i, y, 18, 18);

        r = map(verde, 1, 8, 193, 60);
        g = map(verde, 1, 8, 229, 100);
        b = map(verde, 1, 8, 48, 60);
      } 
      fill(r,g,b);
      float distan = dist(i, y, 12, 12);
      float tam = map(distan, 0, 12, 11, 12.5);

      ellipse(pos+i*16, 8+y*16, tam, tam);
    }
  }

  for (int c=0; c<11; c++) {
    for (int v=0; v<11; v++) {
      
      rect(514.5 + v*16, 114.5 + c*16, 11, 11);
    }
  }
}
