vec3 GetEnvCubemapCoord(vec3 dir,vec3 normal)
{
    vec3 I = normalize(dir);
    vec3 R = reflect (I*vec3(1,-1,1), normal);

    R=vec3(inverse(r_scene_info.l2w)*vec4(R,0.0));
    // Convert cubemap coordinates into Vulkan coordinate space
    R.y*=-1.0;

    return R.xzy;
}
