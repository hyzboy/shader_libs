vec3 GetWorldNormal(in vec3 normal)
{
    return normalize(mat3(transpose(inverse(world.modelview*pc.local_to_world)))*normal);
}
