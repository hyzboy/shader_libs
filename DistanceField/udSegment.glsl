/**
 * 2D线段距离场<br>
 * The MIT License / Copyright © 2020 Inigo Quilez
 * @param p 当前象素点屏幕空间坐标
 * @param a 线段起始坐标
 * @param b 线段结束坐标
 * @return 当前点距离线段的距离
 */
float udSegment( in vec2 p, in vec2 a, in vec2 b )
{
    vec2 ba = b-a;
    vec2 pa = p-a;
    float h =clamp( dot(pa,ba)/dot(ba,ba), 0.0, 1.0 );
    return length(pa-h*ba);
}
