
float general, d1b, d1p, d2b, d2p;

void setup() {
  size(1000, 1000, P3D);
  stroke(255);
  noFill();
  
  general = d1b = d1p = d2b = d2p = 0;
}


void draw() {

  background(0);
  
  // checar keypresses y actualizar valores de rotación
  
  // actualizar valores de angulo para todos 
  if(keyPressed) {
    
    if(key == 'r') general += 0.01f;
    if(key == 'f') general -= 0.01f;
    
    if(key == '1') d1b += 0.01f;
    if(key == 'q') d1b -= 0.01f;
    
    if(key == '2') d2b += 0.01f;
    if(key == 'w') d2b -= 0.01f;
    
    if(key == 'a') d1p += 0.01f;
    if(key == 'z') d1p -= 0.01f;
    
    if(key == 's') d2p += 0.01f;
    if(key == 'x') d2p -= 0.01f;
  }
  
  translate(width/2, height/2, 0);
  
  // aplicamos rotacion general
  rotateY(general);
  
  // dibujar la manita - palma
  pushMatrix();
  scale(1.5, 1.5, 1);
  box(100);
  popMatrix();
  
  pushMatrix();
  
  // EMPIEZA DEDO 1
  translate(-50, -75, 0);
  rotateX(d1b);
  translate(0, -50, 0);
  
  // base del dedito 1 
  pushMatrix();
  scale(1,2,1);
  box(50);
  popMatrix();
  
  translate(0, -50, 0);
  rotateX(d1p);
  translate(0, -50, 0);
  
  // punta del dedito 1
  pushMatrix();
  scale(1, 2, 1);
  box(50);
  popMatrix();
  popMatrix();
  
  pushMatrix();
  
  // EMPIEZA DEDO 2
  translate(50, -75, 0);
  rotateX(d2b);
  translate(0, -50, 0);
  
  // base del dedito 2 
  pushMatrix();
  scale(1,2,1);
  box(50);
  popMatrix();
  
  translate(0, -50, 0);
  rotateX(d2p);
  translate(0, -50, 0);
  
  // punta del dedito 2
  pushMatrix();
  scale(1, 2, 1);
  box(50);
  popMatrix();
  popMatrix();
}
