

function  imagenes() {
  fondo=loadImage("data/bosque.png");
  suelo=loadImage("data/suelo.png");
  for (let i= 0; i<12; i++) {
    osoCamina[i]=loadImage("data/frame_"+(i+1)+".png");
  }
}

function bosque(){
image(fondo, x1,0);
image(fondo, x2,0);

  x1 -= velFondo;
  x2 -= velFondo;
  if (x1 <= -1610) {
    x1 = 1610;
  }
  if (x2 <= -1610) {
    x2 = 1610;
}}


function piso(){
  
image(suelo, x3, 435, 803, 200);
  image(suelo, x4, 435, 803, 200);
  x3 -= velSuelo;
  x4 -= velSuelo;
  if (x3 <= -800) {
    x3 = 800;
  }
  if (x4<= -800) {
    x4 = 800;
  }
}

function osito(){
  osoMovimiento= osoMovimiento+velocidad;
  
   contador++;
   if (contador>=limite){
    i= (i+1) % 9;
    contador=0
   }
  
  image(osoCamina[i], osoMovimiento, 350, 200);
}
