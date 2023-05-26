#version 450
#include "compiled.inc"
in vec3 normal;
out vec4 fragColor;
uniform sampler2D envmap;
uniform vec2 screenSize;
uniform float envmapStrength;
void main() {
	vec3 n = normalize(normal);
	vec2 texco = gl_FragCoord.xy / screenSize;
	vec3 ImageTexture_Color_res = texture(envmap, vec2(texco.x, 1.0 - texco.y)).rgb * envmapStrength;
	fragColor.rgb = ImageTexture_Color_res;
	fragColor.a = 0.0;
}
