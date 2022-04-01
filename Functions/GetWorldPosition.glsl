vec3 GetCameraPosition()
{
    return vec3(r_scene_info.view*Position);
}
