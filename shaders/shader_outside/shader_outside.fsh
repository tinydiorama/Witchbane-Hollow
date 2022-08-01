//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 OriginalColor = texture2D(gm_BaseTexture, v_vTexcoord);
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float Green = 0.0;
	float Red = OriginalColor.r;
	float Blue = OriginalColor.b;
	float Alpha = OriginalColor.a;
	
	vec4 Color = vec4(Red, Green, Blue, Alpha);
	gl_FragColor = Color;
}
