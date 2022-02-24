// Sky Gradient by Hazel Quantock
// quick and pretty sky colour
vec3 SkyColor( float ray_z )
{
//return exp2(-ray_z/vec3(.1,.3,.6)); // blue
//    return exp2(-ray_z/vec3(.18,.2,.28))*vec3(1,.95,.8); // overcast
//    return exp2(-ray_z/vec3(.1,.2,.8))*vec3(1,.75,.5); // dusk
    return exp2(-ray_z/vec3(.03,.2,.9)); // tropical blue
//    return exp2(-ray_z/vec3(.4,.06,.01)); // orange-red
//    return exp2(-ray_z/vec3(.1,.2,.01)); // green
}
