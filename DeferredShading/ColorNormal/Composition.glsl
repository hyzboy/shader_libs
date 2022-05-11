void ReadGBuffer(in GBuffer buf)
{
    buf.Color=FSInput.Color;
    buf.Normal=Normal2to3(FSInput.Normal);
}
