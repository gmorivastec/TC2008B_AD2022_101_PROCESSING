// así se ponen comentarios
// ARCHIVO DE GLSL

// definimos tipo de shader

//define PROCESSING_POINT_SHADER
//define PROCESSING_LINE_SHADER
//define PROCESSING_COLOR_SHADER
//define PROCESSING_LIGHT_SHADER
//define PROCESSING_TEXTURE_SHADER
//define PROCESSING_TEXLIGHT_SHADER

#define PROCESSING_COLOR_SHADER

// variables que se reciben del exterior

// UNIFORMS
// - variables que se mandan desde ambiente
// y NO cambian por vértice

// matrix de 4x4 que contiene todas las transformaciones
uniform mat4 transform;

uniform float movimiento;

// ATTRIBUTE 
// - variables que se mandan desde ambiente 
// a diferencia de uniforms estas cambian por vértice
attribute vec4 vertex;

// cada shader debe tener método main
void main(){

    // es necesario "regresar" un valor como resultado
    // el resultado es la posición del vértice modificada
    // gl_Position está predefinido para contener el resultado
    
    // gl_Position = transform * vertex;
    vec4 resultado = transform * vertex;
    gl_Position = vec4(resultado.x + movimiento, resultado.y, resultado.z, resultado.w);
}