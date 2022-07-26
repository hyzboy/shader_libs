#in position2f,color4f
#out color4f

void main()
{
    output.Color=Color;
    gl_Position=vec4(Position,0.0,1.0);
}
