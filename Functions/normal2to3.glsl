// Lambert Azimuthal Equal-Area projection
// http://en.wikipedia.org/wiki/Lambert_azimuthal_equal-area_projection
vec3 normal2to3(in vec2 G)
{
    vec2 fenc=G*4-2;
    float f=dot(fenc,fenc);
    float g=sqrt(1-f/4);

    return vec3(fenc*g,1-f/2);
}
