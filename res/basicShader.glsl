#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_windowSize;
uniform vec2 u_mouse;
uniform float u_time;

void main(){
    vec2 st = gl_FragCoord.xy/u_resolution.xy;


    st.x -= u_mouse.x / u_resolution.x;
	st.y += u_mouse.y / u_resolution.y;
	st.y -= (u_windowSize.y / u_resolution.y - 1.);

    vec3 color = vec3(st.x, st.y, 0.);

    gl_FragColor = vec4(color, 0.5);
}