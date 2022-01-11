/**
 * 获取Cubemap环境反射纹理坐标
 * @param nw_pos normalize化过的世界坐标
 * @param nw_normal normalize化过的世界法线
 */
vec3 GetEnvCubemapCoord(vec3 nw_pos,vec3 nw_normal)
{
    return reflect(nw_pos*vec3(1.0,-1.0,1.0),nw_normal).xzy*vec3(-1.0,-1.0,1.0);
}
