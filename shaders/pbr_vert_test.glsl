varying vec3 vViewPosition;
varying vec3 vNormal;

uniform sampler2D roughnessMap;
uniform sampler2D diffuseMap;
varying vec2 vUv;


void main() {

  vUv = uv;
  vec4 mvPosition = modelViewMatrix * vec4(position, 1.0);
  gl_Position = projectionMatrix * mvPosition;
  vViewPosition = -mvPosition.xyz;
  vNormal = normalMatrix * normal;

}