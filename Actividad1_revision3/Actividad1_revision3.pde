// processing 
// herramienta de desarrollo para programar gráficos
// - si quieren investigar más 
// 1. opengl + c++ / python
// 2. vulkan + c++
// APIs gráficos - (luego hablamos más)


// EL CONCEPTO DE CICLO DE VIDA SE USA EN PROCESSING TAMBIÉN
float angulo;

// setup - es un método que se ejecuta al inicio de la vida de un sketch una sola vez
void setup() {
 
  // tamaño y renderer 
  // render - también para después! 
  // tecnología para desplegado 
  size(800, 800, P3D);
  
  // cambio de color de línea
  stroke(255);
  
  // geometría sin relleno
  noFill();
  
  angulo = 80;
}

// draw - método que se ejecuta constantemente mientras el sketch corra
// cuántas veces corra? todas las que pueda
// FPS - frames per seconds (framerate)
// cuántas veces se puede correr el ciclo en un segundo

void draw() {
  
  // fondo negro 
  // a tener en cuenta cambio de paradigma
  background(0);
  
  // vamos a empezar a hacer transformaciones
  // empezamos con matrices PERO no significa que sea la única manera
  
  // identity 
  PMatrix3D identity = new PMatrix3D(1, 0, 0, 0,
                                     0, 1, 0, 0,
                                     0, 0, 1, 0,
                                     0, 0, 0, 1);
                                     
  PMatrix3D escala = new PMatrix3D(1.5, 0, 0,   0,
                                   0,   1, 0,   0,
                                   0,   0, 1.5, 0,
                                   0,   0, 0,   1);

  angulo = radians(25);
  PMatrix3D rotacion1 = new PMatrix3D(1, 0,           0,            0,
                                      0, cos(angulo), -sin(angulo), 0,
                                      0, sin(angulo), cos(angulo),  0,
                                      0, 0,           0,            1);
  
  angulo = radians(12);
  PMatrix3D rotacion2 = new PMatrix3D(cos(angulo),  0, sin(angulo), 0,
                                      0,            1, 0,           0,
                                      -sin(angulo), 0, cos(angulo), 0,
                                      0,            0, 0,           1);
  // traslación
  float tx = 2;
  float ty = 2;
  float tz = 4;
  PMatrix3D traslacion = new PMatrix3D(1, 0, 0, tx,
                                       0, 1, 0, ty,
                                       0, 0, 1, tz,
                                       0, 0, 0, 1);
                           
  // centrar
  PMatrix3D centrar = new PMatrix3D(1, 0, 0, width/2,
                                    0, 1, 0, height/2,
                                    0, 0, 1, 0,
                                    0, 0, 0, 1);
                                 
                                     
  // angulo += 0.01f;
  // como aplicar transformación
  
  // OJO MUY IMPORTANTE PARA EL FUTURO

  // en api gráfico transformaciones van en orden inverso
  
  applyMatrix(centrar);
  applyMatrix(traslacion);
  applyMatrix(rotacion2);
  applyMatrix(rotacion1);
  applyMatrix(escala);
  
  
  // dibujo básico
  // OJO - hay maneras más fáciles
  // dibujar basado en vértices
  beginShape();
  
  // aquí van vértices!!
  vertex(-25, 25, 0);
  vertex(25, 25, 0);
  vertex(25, -25, 0);
  vertex(-25, -25, 0);
  endShape(CLOSE);
  
}
