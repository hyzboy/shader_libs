vec3 ToneMapping(vec3 color)
{
    color = exp( -1.0 / ( 2.72*color + 0.15 ) );

	return Linear2sRGB(color);
}
