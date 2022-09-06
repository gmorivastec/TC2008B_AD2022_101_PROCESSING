// pueden necesitar definir la precisión
// no es indispensable si corren opengl en desktop
// funciona para movil y web
// NO es indispensable ponerlo en desktop
#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

// necesitamos también un método main
// que es el que va a correr
void main() {

    // guardamos en variable predeterminada
    gl_FragColor = vec4(46.0/255.0, 255.0/255.0, 53.0/255.0, 1.0);
}