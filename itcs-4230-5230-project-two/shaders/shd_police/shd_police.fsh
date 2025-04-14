varying vec2 v_vTexcoord;
uniform float u_time;
uniform float u_intensity;

void main() {
    vec4 baseColor = texture2D(gm_BaseTexture, v_vTexcoord);

    vec2 uv = v_vTexcoord - vec2(0.5);
    float dist = length(uv) * 1.5;
    float vignette = smoothstep(0.6, 1.0, dist);

    float t = sin(u_time * 10.0) * 0.5 + 0.5;
    vec4 flashColor = mix(vec4(1.0, 0.0, 0.0, 1.0), vec4(0.0, 0.0, 1.0, 1.0), t);

    float intensity = vignette * u_intensity;
    gl_FragColor = mix(baseColor, flashColor, intensity);
}
