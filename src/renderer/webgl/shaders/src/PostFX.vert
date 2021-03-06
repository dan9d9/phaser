#define SHADER_NAME PHASER_POSTFX_VS

precision mediump float;

uniform mat4 uProjectionMatrix;

attribute vec2 inPosition;
attribute vec2 inTexCoord;

varying vec2 outFragCoord;
varying vec2 outTexCoord;

void main ()
{
    gl_Position = uProjectionMatrix * vec4(inPosition, 1.0, 1.0);

    outFragCoord = inPosition;
    outTexCoord = inTexCoord;
}
