vec2 ParallaxMapping(vec2 texCoords, vec3 viewDir, float heightScale)
{
    float height =  texture(TexHeight, texCoords).r;
    vec2 p = viewDir.xy / viewDir.z * (height * heightScale);
    return texCoords - p;
}
