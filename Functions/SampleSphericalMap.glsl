vec2 SampleSphericalMap(vec3 v)
{
    vec2 uv=vec2(atan(v.z,v.x),asin(v.y));
    uv*=vec2(0.1591,0.3183);
    uv+=0.5f;
    return uv;
}
