# Shader 类型

## 1.GBuffer Shader (来自引擎或程序员)
    这个shader用于描述G-Buffer的纹理格式，它可以被用于前向渲染或延迟渲染。

## 2.光照 Shader (来自引擎或程序员)
    这些shader被用于计算光照。

## 3.用户 Shader (来自于用户)
    这些Shader全部来自于用户，它们提供数据给G-Buffer.

## 4.GBuffer 合成 Shader (来自引擎或程序员)
    这些shader是固定，它负责通过G-Buffer创建最终颜色输出。

## 5.前向 Shader (来自于任何人)
    这些shader可直接用于前向渲染或透明物体渲染。

## 6.后期 Shader (来自于任何人)
    HDR色调映射、Bloom、景深、阴影、伽马矫正、神之光、动态模糊等等。


# Shader Type

## 1.GBuffer shader (from Engine or programmer)
	the shader definition G-Buffer's texture format that can use at forwarding render or Deferreing render.

## 2.LightModel shader (from Engine or programmer)
	These shaders are used for computing light.

## 3.UserMaterial shader (from the user)
	these are from the user. It provides basic data of G-Buffer.

## 4.GBuffer composition shader (from Engine or programmer)
	the shader is fixed. It can create the Final colour from G-Buffer and light's data.

## 5.Forward shader (from anywhere)
	The forward shader is only used at forwarding render or Transparent actor.	

## 6.PostProcess shader (from anywhere)
	HDR Tonemapping, Bloom, Depth of field, Shadow mapping, Gamma correct, God ray, Motion blur.......