vec3 ToneMapping(vec3 color)
{
	color *= u_Exposure/(1. + color / u_Exposure);

	return Linear2sRGB(color);
}
