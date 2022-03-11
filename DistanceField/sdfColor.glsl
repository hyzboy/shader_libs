/**
 * 根据SDF函数返回值获取最终的颜色
 */
vec4 sdfColor(in float d,in vec4 Color,in vec4 InColor,in vec4 OutColor,in float width)
{
    return mix( (d>0.0) ? OutColor : InColor, Color, 1.0-smoothstep(0.0,width,abs(d)) );
}
