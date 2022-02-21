/**
 * 圆角矩形
 * @see https://www.shadertoy.com/view/4llXD7
 * @param cp 当前点位置
 * @parma rect 宽高
 * @param ri 边角圆半径(top-right,bottom-right,top-left,bottom-left)
 */
float sdRoundBox( in vec2 cp, in vec2 rect, in vec4 ri ,in vec2 canvas_res)
{
    vec2 p=(cp-rect.xy+rect.zw/2.0)/canvas_res;
    vec2 b=rect.zw/canvas_res;
    vec4 r=ri/canvas_res;

    r.xy = (p.x>0.0)?r.xy : r.zw;
    r.x  = (p.y>0.0)?r.x  : r.y;
    vec2 q = abs(p)-b+r.x;
    return min(max(q.x,q.y),0.0) + length(max(q,0.0)) - r.x;
}
