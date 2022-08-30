
float rotacionGeneral = 0;
float rotacionTierra = 0;

void setup() {
  size(1000, 1000, P3D);
  
  colorMode(RGB);
  
  // maneras de expresar color
  // RGB - red, green, blue
  
  // 1era manera - se puede expresar en hex
  // pon primero 0x
  // 0xRRGGBB
  stroke(0xff9d00);
  
  // escala de grises - 1 valor entre 0 y 255
  stroke(200);
  
  // mandando 3 canales de color, 1 entero por canal
  stroke(255);
  
  //strokeWeight(10);
  //stroke(255);
  
  //noStroke();
}

void draw() {

  background(0);
  
  fill(255, 157, 0);
  translate(width/2, height/2);
  
  // presionando keys - 
  // checamos si alguna key está presionada
  if(keyPressed){
    
    // System.out.println
    if(key == 'a') {
      rotacionGeneral += 0.01f;
    }
  }
  
  rotateY(rotacionGeneral);
  // rotacionGeneral += 0.01f;
  // 1ero - aislando transformaciones 
  // 1 - existe una matrix que define el estado general de la escena 
  // 2 - existe un stack que guarda matrices
  box(100);
  
  pushMatrix();
  translate(250, 0, 0);
  rotateY(rotacionTierra);
  rotacionTierra += 0.01f;
  
  sphere(100);
  popMatrix();
  
  pushMatrix();
  
  rotateX(rotacionTierra);
  rotacionTierra += 0.01f;
  translate(0, 250, 0);
  
  sphere(100);
  popMatrix();
  
}
