#version 430

layout(location = 0) out vec4 fragcolor;           
layout(location = 1) uniform float time;
layout(location = 2) uniform float slider = 0.5;

in vec3 pos_out; 
in vec3 vel_out; 
in float age_out;

//Checkout Tim's website: https://web.ics.purdue.edu/~tmcgraw/part/

void main(void)
{  

	float pct = abs(sin(time));
	
	
	fragcolor = mix(vec4(0.2*slider,1.0*slider,0.2*slider,0.3), vec4(0.9*slider,0.7*slider,0.7*slider,1.0),pct) ;
	//fragcolor = vec4(0.7,0.7,0.7,0.9);
	
	
	vec2 coord = gl_PointCoord.xy - vec2(0.5);
	float r = length(coord);
	if(r >= 0.5){
		discard;
	}

	
	if(r >= 0.3){
		fragcolor = mix(vec4(0.8,0.3,0.9,0.8),vec4(0.7,0.2,0.2,0.9),pct) ;
	}
	
	


}




















