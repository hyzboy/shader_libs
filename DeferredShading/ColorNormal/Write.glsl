void WriteGBuffer(in GBuffer buf)
{
    FSOutput.Color=buf.Color;
    FSOutput.Normal=Normal3to2(buf.Normal);
}
