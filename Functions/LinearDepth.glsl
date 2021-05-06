/**
 * @param depth depth value from gl_FragCoord.z
 */
float linearDepth(float depth)
{
	float z = depth * 2.0f - 1.0f;
	return (2.0f * ubo.nearPlane * ubo.farPlane) / (ubo.farPlane + ubo.nearPlane - z * (ubo.farPlane - ubo.nearPlane));
}
