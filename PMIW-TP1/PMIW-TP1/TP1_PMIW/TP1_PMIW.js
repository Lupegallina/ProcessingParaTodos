let fondo;
let velFondo=0.4;
let x1 = 0;
let x2 = 1610;

let suelo;
let velSuelo=0.4;
let x3 = 0;
let x4 = 800;

let osoCamina=[];
let i=0;
let contador=1;
let limite=8;

let osoMovimiento=-160;
let velocidad=1.5;



function preload() {
  imagenes();
}

function setup() {
  createCanvas(800, 600);
  //frameRate(10);
}

function draw() {

  bosque()
    piso()
    
    osito()

}
