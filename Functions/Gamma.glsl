const float GAMMA = 2.4;
const float INV_GAMMA = 1.0 / GAMMA;

// linear to sRGB approximation
// see http://chilliant.blogspot.com/2012/08/srgb-approximations-for-hlsl.html
vec3 Linear2sRGBCheaper(vec3 linear_rgb)
{
    return pow(linear_rgb, vec3(INV_GAMMA));
}

// sRGB to linear approximation
// see http://chilliant.blogspot.com/2012/08/srgb-approximations-for-hlsl.html
vec3 sRGB2LinearCheaper(vec3 srgb)
{
    return vec3(pow(srgb.xyz, vec3(GAMMA)));
}

vec3 sRGB2LinearCheapest(vec3 srgb)
{
    return srgb*srgb;
}

vec4 sRGB2LinearCheapest(vec4 srgb)
{
    return vec4(srgb.rgb*srgb.rgb,srgb.a);
}

vec3 sRGB2Linear(vec3 srgb)
{
	vec3 lo = srgb / 12.92;
	vec3 hi = pow( (srgb + 0.055) / 1.055, vec3(GAMMA) );

	return mix(hi, lo, lessThan(_rgb, vec3(0.04045) ) );
}

vec3 Linear2sRGB(vec3 linear_rgb)
{
	vec3 lo  = linear_rgb * 12.92;
	vec3 hi  = pow(linear_rgb, vec3(INV_GAMMA) ) * 1.055 - 0.055;

	return mix(hi, lo, lessThan(linear_rgb, vec3(0.0031308) ) );
}
