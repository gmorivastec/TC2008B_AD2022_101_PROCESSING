
float rotacionGeneral;

void setup() {
  size(800, 800, P3D);
  stroke(255);
  noFill();
  
  rotacionGeneral = 0;
}

void draw() {
  
  background(0);
  
  // último ejercicio de la actividad hecho con funcionalidad built-in
  /*
  
  translate(2, 2, 4);
  rotateY(radians(12));
  rotateX(radians(25));
  scale(1.5, 1, 1.5);
  */
  
  // COMO AISLAR TRANSFORMACIONES 
  // utilizamos el stack de matrices! 
  
  pushMatrix();
  
  translate(width/2, height/2, 0);
  rotateY(rotacionGeneral);
  
  rotacionGeneral += 0.01f;
  // dibujar un cubo
  box(100);
  
  translate(150, 0, 0);
  sphere(50);
  
  translate(100, 0, 0);
  sphere(25);
  
  popMatrix();
  
  translate(100, 100, 0);
  scale(0.5, 1.5, 1);
  sphere(50);
}
