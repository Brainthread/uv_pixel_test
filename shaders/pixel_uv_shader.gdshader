shader_type canvas_item;

uniform sampler2D Skin;
uniform float SkinDimension = 21.0;

void fragment()
{
	//Retrieve color data at UV position
	vec4 map = texture(TEXTURE, UV); 
	
	//red and green values are going to be decimal values, so turn them into 256-valued integers instead, and create an interpolation value to steal pixels from lookup
    vec2 skinIndex = (map.rg * 255.0 + 0.5) / SkinDimension;
	
	//pick a position from SKIN, take the color from there
    vec4 color = texture(Skin, skinIndex);

	
	color.a = map.a;
	//apply color to shader
    COLOR = color;
}