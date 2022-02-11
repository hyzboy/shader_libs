/**
 * 获取Cubemap环境反射纹理坐标
 * @param nw_pos normalize化过的世界坐标
 * @param nw_normal normalize化过的世界法线
 */
vec3 GetEnvCubemapCoord(vec3 nw_pos,vec3 nw_normal)
{
    return normalize(reflect(nw_pos*vec3(1.0,-1.0,1.0),nw_normal).xzy*vec3(-1.0,-1.0,1.0));
}

vec2 GetEquirectangularMapCoord(vec3 nw_pos,vec3 nw_normal)
{
    vec3 reflectVec=normalize(reflect(nw_pos*vec3(1.0,-1.0,1.0),nw_normal).xzy*vec3(-1.0,1.0,1.0));

    vec2 uv;

    // Computing longitude
    uv.x = atan( -reflectVec.z, -reflectVec.x ) * 0.15915494 + 0.5;

    // Computing latitude
    uv.y = reflectVec.y * 0.5 + 0.5;

    return uv;
}
