/**
 * @param world_normal 当前点的世界法线
 * @param temp 整体雪强度
 * @return 当前点雪强度
 */
float GetSnowTopStrong(vec world_normal,float temp)
{
    return clamp(dot(world_normal,vec(0,0,1))*temp);
}