// ~/.config/hypr/shaders/warm.glsl
// A simple GLSL shader to apply a warm tint

// Especifica la precisión por defecto para tipos de punto flotante.
// highp es alta precisión, mediump es precisión media, lowp es baja precisión.
// highp es lo más común para cálculos de color en shaders de pantalla completa.
precision highp float;

void main() {
    vec4 color = gl_FragColor;
    // Multiplica los canales de color para ajustar la temperatura
    // Reduce el azul y un poco el verde para un efecto cálido
    color.r *= 1.0;  // Mantener rojo
    color.g *= 0.7; // Reducir verde
    color.b *= 0.4; // Reducir azul significativamente

    gl_FragColor = color;
}
