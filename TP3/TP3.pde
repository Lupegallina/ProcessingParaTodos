PImage obra28;


void setup() {
  size (800, 400);

  obra28= loadImage("28.jpg");
  tamCelda=400/cantidadCuad;
  tamCelda2=400/cantidadCuad2;
}

void draw() {


  image(obra28, 0, 0, 400, 400);
  fondo();
  fondo2();
  //  grilla1();
  grilla2();
}

void mousePressed() {
  color c = get(mouseX, mouseY);
  println("R: " + red(c) + " G: " + green(c) + " B: " + blue(c));
}
