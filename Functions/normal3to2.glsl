// Lambert Azimuthal Equal-Area projection
// http://en.wikipedia.org/wiki/Lambert_azimuthal_equal-area_projection
vec2 normal3to2(in vec3 N)
{
    float f=sqrt(8*N.z+8);

    return N.xy/f+0.5;
}
