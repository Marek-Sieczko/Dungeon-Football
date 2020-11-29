varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D lighting;
void main()
{
    vec4 mult = texture2D(lighting, v_vTexcoord);
    vec4 main = texture2D(gm_BaseTexture, v_vTexcoord);
    vec4 finalcol;
	vec4 lightcol;

	lightcol.r = mult.r * 5.;
	lightcol.b = mult.b * 5.;
	lightcol.g = mult.g * 5.;


	finalcol.r = mix(main.r,main.r*lightcol.r,mult.r);
	finalcol.g = mix(main.g,main.g*lightcol.g,mult.g);
	finalcol.b = mix(main.b,main.b*lightcol.b,mult.b);
	finalcol.a = 1.;

	float darkness = .4;

	finalcol.r = mix(finalcol.r,finalcol.r*darkness,1.-mult.r);
	finalcol.g = mix(finalcol.g,finalcol.g*darkness,1.-mult.g);
	finalcol.b = mix(finalcol.b,finalcol.b*darkness,1.-mult.b);
            
    gl_FragColor = finalcol;
} 