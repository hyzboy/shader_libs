/**
 * @param depth depth value from gl_FragCoord.z
 */
float linearDepth(float depth)
{
	float z = depth * 2.0f - 1.0f;
	return (2.0f * camera.znear * camera.zfar) / (camera.zfar + camera.znear - z * (camera.zfar - camera.znear));
}
