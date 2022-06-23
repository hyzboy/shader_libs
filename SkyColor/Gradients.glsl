const vec3 SkyColor;
const vec3 GroundColor;

vec3 GetSkyColor(float z)
{
    return z<=0.015?exp2(z/SkyColor):GroundColor;
}
