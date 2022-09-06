
// SHADERS 
// partes programables del pipeline de render 
// tienen su propio lenguaje
// - CG (nvidia)
// - HLSL (directDraw / MS)
// - GLSL (OpenGL / Vulkan (existe un proceso de compilación))

PShader miShader;
float movimiento = 0;

// VAMOS A ESTAR USANDO GLSL
void setup() {

  size(700, 700, P3D);
  noStroke();
  fill(252, 186, 3);
  
  // cargar shaders 
  miShader = loadShader("frag.glsl", "vert.glsl");
}

void draw() {

  // utilizamos los shaders para este pase de render
  shader(miShader);
  
  // así mandamos uniforms a los shader
  miShader.set("movimiento", movimiento);
  
  movimiento += 0.1f;
  background(0);
  
  translate(width / 2, height / 2);
  sphere(200);
}
