shader_type canvas_item;

uniform float progress : hint_range(0, 1);
uniform bool fill = true;

void fragment() {
// Called for every pixel the material is visible on.
	if (UV.x > progress){
		if (fill){
			discard;
		}
	}
	else if (!fill){
		discard;
	}
	
}