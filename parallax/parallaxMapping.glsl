vec2 parallaxMapping(vec2 uv, vec3 viewDir)
{
    float height = 1.0 - textureLod(TexHeight, uv, 0.0).r;
    vec2 p = viewDir.xy * (height * (parallax.heightScale * 0.5) + parallax.parallaxBias) / viewDir.z;
    return uv - p;
}
