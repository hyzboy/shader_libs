mat3 GetWorldNormalMatrix()
{
    return mat3(transpose(inverse(world.modelview*pc.local_to_world)));
}

vec3 GetWorldNormal()
{
    return normalize(GetWorldNormalMatrix()*Normal);
}
