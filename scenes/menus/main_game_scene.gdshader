shader_type canvas_item;

// declare the white variable bool
uniform bool is_white = false;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// reads og colours
	vec4 tex_color = texture(TEXTURE, UV);
	if (is_white) {
	// if the boolean is true
	// it will make the entire thing white
		COLOR = vec4(1.0, 1.0, 1.0, tex_color.a);
	} else {
	// if not it will make it og colour
		COLOR = tex_color;
	}
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
