vec3 GetWorldNormal()
{
    return normalize(mat3(transpose(inverse(world.modelview*pc.local_to_world)))*Normal);
}
