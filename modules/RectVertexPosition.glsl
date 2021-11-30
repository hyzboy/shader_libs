vec4 RectVertexPosition(vec4 pos)
{
    vec4 lt=vec4(pos.xy,vec2(0,1));
    vec4 rb=vec4(pos.zw,vec2(0,1));
    vec4 lt_fin=g_camera.ortho*lt;
    vec4 rb_fin=g_camera.ortho*rb;

    return vec4(lt_fin.xy,rb_fin.xy);
}
