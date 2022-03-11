

/**
 * 2D正圆距离场
 * @param p 当前点屏幕空间坐标
 * @param r 圆半径
 * @return 当前点距离圆的距离
 */
float sdCircle( in vec2 p, in float r )
{
    return length(p)-r;
}
