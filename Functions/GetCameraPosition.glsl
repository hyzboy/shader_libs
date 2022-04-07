vec3 GetCameraPosition(in vec3 pos)
{
    return vec3(r_scene_info.view*pos);
}
