float Chessboard(vec2 pos)
{
    vec2 uv = floor(pos);
    return mod(uv.x + uv.y, 2.);
}
