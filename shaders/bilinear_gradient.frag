#version 460 core

#include <flutter/runtime_effect.glsl>

precision mediump float;

uniform vec2 resolution;
uniform vec4 topLeftColor;
uniform vec4 topRightColor;
uniform vec4 bottomLeftColor;
uniform vec4 bottomRightColor;

out vec4 fragColor;

void main() {
    vec2 st = FlutterFragCoord().xy / resolution.xy;
    vec4 topHorizontalMix = mix(topLeftColor, topRightColor, st.x);
    vec4 bottomHorizontalMix = mix(bottomLeftColor, bottomRightColor, st.x);
    fragColor = mix(topHorizontalMix,bottomHorizontalMix, st.y);
}
