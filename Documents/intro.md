# 材质结构说明

Shader部分

## 1.MaterialInfo
该类Shader用于描述一个象素计算时，应该有的数据。在最简单的情况下，它通常会包含材质的基本属性，以及一部分中间计算数据。比如WorldPosition、ScreenPosition、等等，方便接下来的光照和后期计算。如：
```glsl
vec3 BaseColor;
vec3 Normal;

vec3 WorldPosition;
ivec2 ScreenPosition;
```
注：我们这里并不需要定义一个结构。Shader生成器会自动处理它。

## 2.GBuffer描述Shader
该Shader并不只是用于延迟渲染中描述GBuffer格式，也同样用于前向渲染。它用来表示一个象素在最终进行光照计算前，能够提供那些数据。而不管是前向还是延迟。

通常这个Shader分三部分：

GBuffer格式描述部分，这个部分仅用于描述构成GBuffer所需的纹理格式(不包含深度)。如：

```glsl
vec3 BaseColor;
vec2 Normal;        //normal只保存2个通道
```

GBuffer写入部分，这个部分用于将MaterialInfo数据写入GBuffer纹理。如：

```glsl
//output vec3 GBuffer_BaseColor;
//output vec2 GBuffer_Normal;

void WriteMaterialInfo(MaterialInfo MI)
{
    GBuffer_BaseColor   =MI.BaseColor;
    GBuffer_Normal      =normal3to2(MI.Normal);
}
```

GBuffer读取部分，这个部分用于从GBuffer纹理读取数据并写入MaterialInfo。如：

```glsl
//in texture2d GBuffer_BaseColor;
//in texture2d GBuffer_Normal;

void ReadMaterialInfo(MaterialInfo MI)
{
    MI.ScreenPosition=....
    MI.WorldPosition=....

    MI.BaseColor=texture2d(GBuffer_BaseColor,MI.ScreenPosition).xyz;
    MI.Normal   =normal2to3(texture2d(GBuffer_Normal,MI.ScreenPosition).xy);

    MI.Ambient  =GetAmbientColor();
}
```

## 3.光照计算Shader
该类Shader只做单纯的光照计算，同样它不关心渲染模式是前向还是延迟。它所有的数据来自MaterialInfo; 如：
```glsl
//uniform DirectionLight direction_light;

vec3 ApplyDirectionLight(DirectionLight light,MaterialInfo MI)
{
    float intensity=max(dot(MI.Normal,light.direction),0.0);
    
    return max(MI.BaseColor*intensity+MI.Ambient);
}
```
