#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
namespace SNAP_VS {
int sc_GetStereoViewIndex()
{
return 0;
}
}
#ifndef sc_TextureRenderingLayout_Regular
#define sc_TextureRenderingLayout_Regular 0
#define sc_TextureRenderingLayout_StereoInstancedClipped 1
#define sc_TextureRenderingLayout_StereoMultiview 2
#endif
#ifdef uv2
#undef uv2
#endif
#ifdef uv3
#undef uv3
#endif
// SCC_BACKEND_SHADER_FLAGS_BEGIN__
// SCC_BACKEND_SHADER_FLAGS_END__
//SG_REFLECTION_BEGIN(200)
//attribute vec4 boneData 5
//attribute vec3 blendShape0Pos 6
//attribute vec3 blendShape0Normal 12
//attribute vec3 blendShape1Pos 7
//attribute vec3 blendShape1Normal 13
//attribute vec3 blendShape2Pos 8
//attribute vec3 blendShape2Normal 14
//attribute vec3 blendShape3Pos 9
//attribute vec3 blendShape4Pos 10
//attribute vec3 blendShape5Pos 11
//attribute vec4 position 0
//attribute vec3 normal 1
//attribute vec4 tangent 2
//attribute vec2 texture0 3
//attribute vec2 texture1 4
//attribute vec4 color 18
//attribute vec3 positionNext 15
//attribute vec3 positionPrevious 16
//attribute vec4 strandProperties 17
//output vec4 FragColor0 0
//output vec4 FragColor1 1
//output vec4 FragColor2 2
//output vec4 FragColor3 3
//output uvec4 position_and_mask 0
//output uvec4 normal_and_more 1
//sampler sampler baseTexSmpSC 0:33
//sampler sampler detailNormalTexSmpSC 0:34
//sampler sampler emissiveTexSmpSC 0:35
//sampler sampler intensityTextureSmpSC 0:36
//sampler sampler materialParamsTexSmpSC 0:37
//sampler sampler normalTexSmpSC 0:38
//sampler sampler opacityTexSmpSC 0:39
//sampler sampler reflectionModulationTexSmpSC 0:40
//sampler sampler reflectionTexSmpSC 0:41
//sampler sampler rimColorTexSmpSC 0:42
//sampler sampler sc_EnvmapDiffuseSmpSC 0:43
//sampler sampler sc_EnvmapSpecularSmpSC 0:44
//sampler sampler sc_RayTracedDiffIndTextureSmpSC 0:46
//sampler sampler sc_RayTracedShadowTextureSmpSC 0:48
//sampler sampler sc_SSAOTextureSmpSC 0:49
//sampler sampler sc_ScreenTextureSmpSC 0:50
//sampler sampler sc_ShadowTextureSmpSC 0:51
//sampler sampler z_hitIdAndBarycentricSmp 0:53
//sampler sampler z_rayDirectionsSmpSC 0:54
//texture texture2D baseTex 0:4:0:33
//texture texture2D detailNormalTex 0:5:0:34
//texture texture2D emissiveTex 0:6:0:35
//texture texture2D intensityTexture 0:7:0:36
//texture texture2D materialParamsTex 0:8:0:37
//texture texture2D normalTex 0:9:0:38
//texture texture2D opacityTex 0:10:0:39
//texture texture2D reflectionModulationTex 0:11:0:40
//texture texture2D reflectionTex 0:12:0:41
//texture texture2D rimColorTex 0:13:0:42
//texture texture2D sc_EnvmapDiffuse 0:14:0:43
//texture texture2D sc_EnvmapSpecular 0:15:0:44
//texture texture2D sc_RayTracedDiffIndTexture 0:24:0:46
//texture texture2D sc_RayTracedShadowTexture 0:26:0:48
//texture texture2D sc_SSAOTexture 0:27:0:49
//texture texture2D sc_ScreenTexture 0:28:0:50
//texture texture2D sc_ShadowTexture 0:29:0:51
//texture utexture2D z_hitIdAndBarycentric 0:31:0:53
//texture texture2D z_rayDirections 0:32:0:54
//ubo float sc_BonesUBO 0:3:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:55:5856 {
//sc_PointLight_t sc_PointLights 0:[3]:80
//bool sc_PointLights.falloffEnabled 0
//float sc_PointLights.falloffEndDistance 4
//float sc_PointLights.negRcpFalloffEndDistance4 8
//float sc_PointLights.angleScale 12
//float sc_PointLights.angleOffset 16
//float3 sc_PointLights.direction 32
//float3 sc_PointLights.position 48
//float4 sc_PointLights.color 64
//sc_DirectionalLight_t sc_DirectionalLights 240:[5]:32
//float3 sc_DirectionalLights.direction 0
//float4 sc_DirectionalLights.color 16
//sc_AmbientLight_t sc_AmbientLights 400:[3]:32
//float3 sc_AmbientLights.color 0
//float sc_AmbientLights.intensity 16
//sc_LightEstimationData_t sc_LightEstimationData 496
//sc_SphericalGaussianLight_t sc_LightEstimationData.sg 0:[12]:48
//float3 sc_LightEstimationData.sg.color 0
//float sc_LightEstimationData.sg.sharpness 16
//float3 sc_LightEstimationData.sg.axis 32
//float3 sc_LightEstimationData.ambientLight 576
//float4 sc_EnvmapDiffuseSize 1088
//float4 sc_EnvmapSpecularSize 1136
//float3 sc_EnvmapRotation 1184
//float sc_EnvmapExposure 1200
//float3 sc_Sh 1216:[9]:16
//float sc_ShIntensity 1360
//float4 sc_Time 1376
//float4 sc_UniformConstants 1392
//float4x4 sc_ViewProjectionMatrixArray 1680:[2]:64
//float4x4 sc_ModelViewMatrixArray 1936:[2]:64
//float4x4 sc_ProjectionMatrixArray 2384:[2]:64
//float4x4 sc_ProjectionMatrixInverseArray 2512:[2]:64
//float4x4 sc_ViewMatrixArray 2640:[2]:64
//float4x4 sc_PrevFrameViewProjectionMatrixArray 2896:[2]:64
//float4x4 sc_ModelMatrix 3024
//float4x4 sc_ModelMatrixInverse 3088
//float3x3 sc_NormalMatrix 3152
//float4x4 sc_PrevFrameModelMatrix 3248
//float4 sc_CurrentRenderTargetDims 3456
//sc_Camera_t sc_Camera 3472
//float3 sc_Camera.position 0
//float sc_Camera.aspect 16
//float2 sc_Camera.clipPlanes 24
//float sc_ShadowDensity 3504
//float4 sc_ShadowColor 3520
//float4x4 sc_ProjectorMatrix 3536
//float4 weights0 3616
//float4 weights1 3632
//float4 sc_StereoClipPlanes 3664:[2]:16
//float2 sc_TAAJitterOffset 3704
//bool isProxyMode 3828
//bool receivesRayTracedShadows 3832
//bool receivesRayTracedDiffuseIndirect 3836
//float receiver_mask 3984
//float3 OriginNormalizationScale 4000
//float3 OriginNormalizationOffset 4032
//int receiverId 4048
//int instance_id 4052
//int lray_triangles_last 4056
//bool noEarlyZ 4060
//bool has_animated_pn 4064
//int emitter_stride 4068
//int proxy_offset_position 4072
//int proxy_offset_normal 4076
//int proxy_offset_tangent 4080
//int proxy_offset_color 4084
//int proxy_offset_texture0 4088
//int proxy_offset_texture1 4092
//int proxy_offset_texture2 4096
//int proxy_offset_texture3 4100
//int proxy_format_position 4104
//int proxy_format_normal 4108
//int proxy_format_tangent 4112
//int proxy_format_color 4116
//int proxy_format_texture0 4120
//int proxy_format_texture1 4124
//int proxy_format_texture2 4128
//int proxy_format_texture3 4132
//float correctedIntensity 4192
//float3x3 intensityTextureTransform 4256
//float4 intensityTextureUvMinMax 4304
//float4 intensityTextureBorderColor 4320
//int PreviewEnabled 4484
//float alphaTestThreshold 4492
//float4 baseColor 4496
//float3x3 baseTexTransform 4560
//float4 baseTexUvMinMax 4608
//float4 baseTexBorderColor 4624
//float3 recolorRed 4640
//float3 recolorGreen 4656
//float3 recolorBlue 4672
//float3x3 opacityTexTransform 4736
//float4 opacityTexUvMinMax 4784
//float4 opacityTexBorderColor 4800
//float3x3 normalTexTransform 4864
//float4 normalTexUvMinMax 4912
//float4 normalTexBorderColor 4928
//float3x3 detailNormalTexTransform 4992
//float4 detailNormalTexUvMinMax 5040
//float4 detailNormalTexBorderColor 5056
//float3x3 emissiveTexTransform 5120
//float4 emissiveTexUvMinMax 5168
//float4 emissiveTexBorderColor 5184
//float3 emissiveColor 5200
//float emissiveIntensity 5216
//float3x3 reflectionTexTransform 5280
//float4 reflectionTexUvMinMax 5328
//float4 reflectionTexBorderColor 5344
//float reflectionIntensity 5360
//float3x3 reflectionModulationTexTransform 5424
//float4 reflectionModulationTexUvMinMax 5472
//float4 reflectionModulationTexBorderColor 5488
//float3 rimColor 5504
//float rimIntensity 5520
//float rimExponent 5524
//float3x3 rimColorTexTransform 5584
//float4 rimColorTexUvMinMax 5632
//float4 rimColorTexBorderColor 5648
//float3x3 materialParamsTexTransform 5728
//float4 materialParamsTexUvMinMax 5776
//float4 materialParamsTexBorderColor 5792
//float2 uv2Scale 5816
//float2 uv2Offset 5824
//float2 uv3Scale 5832
//float2 uv3Offset 5840
//float depthRef 5848
//}
//ssbo int layoutIndices 0:0:4 {
//uint _Triangles 0:[1]:4
//}
//ssbo float layoutVerticesPN 0:2:4 {
//float _VerticesPN 0:[1]:4
//}
//ssbo float layoutVertices 0:1:4 {
//float _Vertices 0:[1]:4
//}
//spec_const bool BLEND_MODE_AVERAGE 0 0
//spec_const bool BLEND_MODE_BRIGHT 1 0
//spec_const bool BLEND_MODE_COLOR_BURN 2 0
//spec_const bool BLEND_MODE_COLOR_DODGE 3 0
//spec_const bool BLEND_MODE_COLOR 4 0
//spec_const bool BLEND_MODE_DARKEN 5 0
//spec_const bool BLEND_MODE_DIFFERENCE 6 0
//spec_const bool BLEND_MODE_DIVIDE 7 0
//spec_const bool BLEND_MODE_DIVISION 8 0
//spec_const bool BLEND_MODE_EXCLUSION 9 0
//spec_const bool BLEND_MODE_FORGRAY 10 0
//spec_const bool BLEND_MODE_HARD_GLOW 11 0
//spec_const bool BLEND_MODE_HARD_LIGHT 12 0
//spec_const bool BLEND_MODE_HARD_MIX 13 0
//spec_const bool BLEND_MODE_HARD_PHOENIX 14 0
//spec_const bool BLEND_MODE_HARD_REFLECT 15 0
//spec_const bool BLEND_MODE_HUE 16 0
//spec_const bool BLEND_MODE_INTENSE 17 0
//spec_const bool BLEND_MODE_LIGHTEN 18 0
//spec_const bool BLEND_MODE_LINEAR_LIGHT 19 0
//spec_const bool BLEND_MODE_LUMINOSITY 20 0
//spec_const bool BLEND_MODE_NEGATION 21 0
//spec_const bool BLEND_MODE_NOTBRIGHT 22 0
//spec_const bool BLEND_MODE_OVERLAY 23 0
//spec_const bool BLEND_MODE_PIN_LIGHT 24 0
//spec_const bool BLEND_MODE_REALISTIC 25 0
//spec_const bool BLEND_MODE_SATURATION 26 0
//spec_const bool BLEND_MODE_SOFT_LIGHT 27 0
//spec_const bool BLEND_MODE_SUBTRACT 28 0
//spec_const bool BLEND_MODE_VIVID_LIGHT 29 0
//spec_const bool ENABLE_BASE_TEX 30 0
//spec_const bool ENABLE_DETAIL_NORMAL 31 0
//spec_const bool ENABLE_EMISSIVE 32 0
//spec_const bool ENABLE_MATERIAL_PARAM_TEX 33 0
//spec_const bool ENABLE_NORMALMAP 34 0
//spec_const bool ENABLE_OPACITY_TEX 35 0
//spec_const bool ENABLE_RECOLOR 36 0
//spec_const bool ENABLE_RIM_HIGHLIGHT 37 0
//spec_const bool ENABLE_RIM_INVERT 38 0
//spec_const bool ENABLE_SIMPLE_REFLECTION 39 0
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 40 0
//spec_const bool ENABLE_UV2 41 0
//spec_const bool ENABLE_UV3 42 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_baseTex 43 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_detailNormalTex 44 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_emissiveTex 45 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 46 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_materialParamsTex 47 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_normalTex 48 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_opacityTex 49 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_reflectionModulationTex 50 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_reflectionTex 51 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_rimColorTex 52 0
//spec_const bool SC_USE_UV_MIN_MAX_baseTex 53 0
//spec_const bool SC_USE_UV_MIN_MAX_detailNormalTex 54 0
//spec_const bool SC_USE_UV_MIN_MAX_emissiveTex 55 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 56 0
//spec_const bool SC_USE_UV_MIN_MAX_materialParamsTex 57 0
//spec_const bool SC_USE_UV_MIN_MAX_normalTex 58 0
//spec_const bool SC_USE_UV_MIN_MAX_opacityTex 59 0
//spec_const bool SC_USE_UV_MIN_MAX_reflectionModulationTex 60 0
//spec_const bool SC_USE_UV_MIN_MAX_reflectionTex 61 0
//spec_const bool SC_USE_UV_MIN_MAX_rimColorTex 62 0
//spec_const bool SC_USE_UV_TRANSFORM_baseTex 63 0
//spec_const bool SC_USE_UV_TRANSFORM_detailNormalTex 64 0
//spec_const bool SC_USE_UV_TRANSFORM_emissiveTex 65 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 66 0
//spec_const bool SC_USE_UV_TRANSFORM_materialParamsTex 67 0
//spec_const bool SC_USE_UV_TRANSFORM_normalTex 68 0
//spec_const bool SC_USE_UV_TRANSFORM_opacityTex 69 0
//spec_const bool SC_USE_UV_TRANSFORM_reflectionModulationTex 70 0
//spec_const bool SC_USE_UV_TRANSFORM_reflectionTex 71 0
//spec_const bool SC_USE_UV_TRANSFORM_rimColorTex 72 0
//spec_const bool Tweak_N177 73 0
//spec_const bool Tweak_N216 74 0
//spec_const bool UseViewSpaceDepthVariant 75 1
//spec_const bool baseTexHasSwappedViews 76 0
//spec_const bool detailNormalTexHasSwappedViews 77 0
//spec_const bool emissiveTexHasSwappedViews 78 0
//spec_const bool intensityTextureHasSwappedViews 79 0
//spec_const bool materialParamsTexHasSwappedViews 80 0
//spec_const bool normalTexHasSwappedViews 81 0
//spec_const bool opacityTexHasSwappedViews 82 0
//spec_const bool reflectionModulationTexHasSwappedViews 83 0
//spec_const bool reflectionTexHasSwappedViews 84 0
//spec_const bool rimColorTexHasSwappedViews 85 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 86 0
//spec_const bool sc_BlendMode_Add 87 0
//spec_const bool sc_BlendMode_AlphaTest 88 0
//spec_const bool sc_BlendMode_AlphaToCoverage 89 0
//spec_const bool sc_BlendMode_ColoredGlass 90 0
//spec_const bool sc_BlendMode_Custom 91 0
//spec_const bool sc_BlendMode_Max 92 0
//spec_const bool sc_BlendMode_Min 93 0
//spec_const bool sc_BlendMode_MultiplyOriginal 94 0
//spec_const bool sc_BlendMode_Multiply 95 0
//spec_const bool sc_BlendMode_Normal 96 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 97 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 98 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 99 0
//spec_const bool sc_BlendMode_Screen 100 0
//spec_const bool sc_DepthOnly 101 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 102 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 103 0
//spec_const bool sc_FramebufferFetch 104 0
//spec_const bool sc_HasDiffuseEnvmap 105 0
//spec_const bool sc_IsEditor 106 0
//spec_const bool sc_LightEstimation 107 0
//spec_const bool sc_MotionVectorsPass 108 0
//spec_const bool sc_OITCompositingPass 109 0
//spec_const bool sc_OITDepthBoundsPass 110 0
//spec_const bool sc_OITDepthGatherPass 111 0
//spec_const bool sc_ProjectiveShadowsCaster 112 0
//spec_const bool sc_ProjectiveShadowsReceiver 113 0
//spec_const bool sc_ProxyAlphaOne 114 0
//spec_const bool sc_RayTracedDiffIndTextureHasSwappedViews 115 0
//spec_const bool sc_RayTracedShadowTextureHasSwappedViews 116 0
//spec_const bool sc_RenderAlphaToColor 117 0
//spec_const bool sc_SSAOEnabled 118 0
//spec_const bool sc_ScreenTextureHasSwappedViews 119 0
//spec_const bool sc_TAAEnabled 120 0
//spec_const bool sc_VertexBlendingUseNormals 121 0
//spec_const bool sc_VertexBlending 122 0
//spec_const bool uv2EnableAnimation 123 0
//spec_const bool uv3EnableAnimation 124 0
//spec_const int NODE_13_DROPLIST_ITEM 125 0
//spec_const int NODE_181_DROPLIST_ITEM 126 0
//spec_const int NODE_184_DROPLIST_ITEM 127 0
//spec_const int NODE_221_DROPLIST_ITEM 128 0
//spec_const int NODE_228_DROPLIST_ITEM 129 0
//spec_const int NODE_27_DROPLIST_ITEM 130 0
//spec_const int NODE_315_DROPLIST_ITEM 131 0
//spec_const int NODE_38_DROPLIST_ITEM 132 0
//spec_const int NODE_49_DROPLIST_ITEM 133 0
//spec_const int NODE_69_DROPLIST_ITEM 134 0
//spec_const int NODE_76_DROPLIST_ITEM 135 0
//spec_const int SC_DEVICE_CLASS 136 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_baseTex 137 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_detailNormalTex 138 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_emissiveTex 139 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 140 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_materialParamsTex 141 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_normalTex 142 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_opacityTex 143 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex 144 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_reflectionTex 145 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_rimColorTex 146 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_baseTex 147 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_detailNormalTex 148 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_emissiveTex 149 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 150 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_materialParamsTex 151 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_normalTex 152 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_opacityTex 153 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex 154 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_reflectionTex 155 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_rimColorTex 156 -1
//spec_const int baseTexLayout 157 0
//spec_const int detailNormalTexLayout 158 0
//spec_const int emissiveTexLayout 159 0
//spec_const int intensityTextureLayout 160 0
//spec_const int materialParamsTexLayout 161 0
//spec_const int normalTexLayout 162 0
//spec_const int opacityTexLayout 163 0
//spec_const int reflectionModulationTexLayout 164 0
//spec_const int reflectionTexLayout 165 0
//spec_const int rimColorTexLayout 166 0
//spec_const int sc_AmbientLightMode0 167 0
//spec_const int sc_AmbientLightMode1 168 0
//spec_const int sc_AmbientLightMode2 169 0
//spec_const int sc_AmbientLightMode_Constant 170 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 171 0
//spec_const int sc_AmbientLightMode_FromCamera 172 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 173 0
//spec_const int sc_AmbientLightsCount 174 0
//spec_const int sc_DepthBufferMode 175 0
//spec_const int sc_DirectionalLightsCount 176 0
//spec_const int sc_EnvLightMode 177 0
//spec_const int sc_EnvmapDiffuseLayout 178 0
//spec_const int sc_EnvmapSpecularLayout 179 0
//spec_const int sc_LightEstimationSGCount 180 0
//spec_const int sc_PointLightsCount 181 0
//spec_const int sc_RayTracedDiffIndTextureLayout 182 0
//spec_const int sc_RayTracedShadowTextureLayout 183 0
//spec_const int sc_RenderingSpace 184 -1
//spec_const int sc_ScreenTextureLayout 185 0
//spec_const int sc_ShaderCacheConstant 186 0
//spec_const int sc_SkinBonesCount 187 0
//spec_const int sc_StereoRenderingMode 188 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 189 0
//SG_REFLECTION_END
constant bool BLEND_MODE_AVERAGE [[function_constant(0)]];
constant bool BLEND_MODE_AVERAGE_tmp = is_function_constant_defined(BLEND_MODE_AVERAGE) ? BLEND_MODE_AVERAGE : false;
constant bool BLEND_MODE_BRIGHT [[function_constant(1)]];
constant bool BLEND_MODE_BRIGHT_tmp = is_function_constant_defined(BLEND_MODE_BRIGHT) ? BLEND_MODE_BRIGHT : false;
constant bool BLEND_MODE_COLOR_BURN [[function_constant(2)]];
constant bool BLEND_MODE_COLOR_BURN_tmp = is_function_constant_defined(BLEND_MODE_COLOR_BURN) ? BLEND_MODE_COLOR_BURN : false;
constant bool BLEND_MODE_COLOR_DODGE [[function_constant(3)]];
constant bool BLEND_MODE_COLOR_DODGE_tmp = is_function_constant_defined(BLEND_MODE_COLOR_DODGE) ? BLEND_MODE_COLOR_DODGE : false;
constant bool BLEND_MODE_COLOR [[function_constant(4)]];
constant bool BLEND_MODE_COLOR_tmp = is_function_constant_defined(BLEND_MODE_COLOR) ? BLEND_MODE_COLOR : false;
constant bool BLEND_MODE_DARKEN [[function_constant(5)]];
constant bool BLEND_MODE_DARKEN_tmp = is_function_constant_defined(BLEND_MODE_DARKEN) ? BLEND_MODE_DARKEN : false;
constant bool BLEND_MODE_DIFFERENCE [[function_constant(6)]];
constant bool BLEND_MODE_DIFFERENCE_tmp = is_function_constant_defined(BLEND_MODE_DIFFERENCE) ? BLEND_MODE_DIFFERENCE : false;
constant bool BLEND_MODE_DIVIDE [[function_constant(7)]];
constant bool BLEND_MODE_DIVIDE_tmp = is_function_constant_defined(BLEND_MODE_DIVIDE) ? BLEND_MODE_DIVIDE : false;
constant bool BLEND_MODE_DIVISION [[function_constant(8)]];
constant bool BLEND_MODE_DIVISION_tmp = is_function_constant_defined(BLEND_MODE_DIVISION) ? BLEND_MODE_DIVISION : false;
constant bool BLEND_MODE_EXCLUSION [[function_constant(9)]];
constant bool BLEND_MODE_EXCLUSION_tmp = is_function_constant_defined(BLEND_MODE_EXCLUSION) ? BLEND_MODE_EXCLUSION : false;
constant bool BLEND_MODE_FORGRAY [[function_constant(10)]];
constant bool BLEND_MODE_FORGRAY_tmp = is_function_constant_defined(BLEND_MODE_FORGRAY) ? BLEND_MODE_FORGRAY : false;
constant bool BLEND_MODE_HARD_GLOW [[function_constant(11)]];
constant bool BLEND_MODE_HARD_GLOW_tmp = is_function_constant_defined(BLEND_MODE_HARD_GLOW) ? BLEND_MODE_HARD_GLOW : false;
constant bool BLEND_MODE_HARD_LIGHT [[function_constant(12)]];
constant bool BLEND_MODE_HARD_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_HARD_LIGHT) ? BLEND_MODE_HARD_LIGHT : false;
constant bool BLEND_MODE_HARD_MIX [[function_constant(13)]];
constant bool BLEND_MODE_HARD_MIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_MIX) ? BLEND_MODE_HARD_MIX : false;
constant bool BLEND_MODE_HARD_PHOENIX [[function_constant(14)]];
constant bool BLEND_MODE_HARD_PHOENIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_PHOENIX) ? BLEND_MODE_HARD_PHOENIX : false;
constant bool BLEND_MODE_HARD_REFLECT [[function_constant(15)]];
constant bool BLEND_MODE_HARD_REFLECT_tmp = is_function_constant_defined(BLEND_MODE_HARD_REFLECT) ? BLEND_MODE_HARD_REFLECT : false;
constant bool BLEND_MODE_HUE [[function_constant(16)]];
constant bool BLEND_MODE_HUE_tmp = is_function_constant_defined(BLEND_MODE_HUE) ? BLEND_MODE_HUE : false;
constant bool BLEND_MODE_INTENSE [[function_constant(17)]];
constant bool BLEND_MODE_INTENSE_tmp = is_function_constant_defined(BLEND_MODE_INTENSE) ? BLEND_MODE_INTENSE : false;
constant bool BLEND_MODE_LIGHTEN [[function_constant(18)]];
constant bool BLEND_MODE_LIGHTEN_tmp = is_function_constant_defined(BLEND_MODE_LIGHTEN) ? BLEND_MODE_LIGHTEN : false;
constant bool BLEND_MODE_LINEAR_LIGHT [[function_constant(19)]];
constant bool BLEND_MODE_LINEAR_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_LINEAR_LIGHT) ? BLEND_MODE_LINEAR_LIGHT : false;
constant bool BLEND_MODE_LUMINOSITY [[function_constant(20)]];
constant bool BLEND_MODE_LUMINOSITY_tmp = is_function_constant_defined(BLEND_MODE_LUMINOSITY) ? BLEND_MODE_LUMINOSITY : false;
constant bool BLEND_MODE_NEGATION [[function_constant(21)]];
constant bool BLEND_MODE_NEGATION_tmp = is_function_constant_defined(BLEND_MODE_NEGATION) ? BLEND_MODE_NEGATION : false;
constant bool BLEND_MODE_NOTBRIGHT [[function_constant(22)]];
constant bool BLEND_MODE_NOTBRIGHT_tmp = is_function_constant_defined(BLEND_MODE_NOTBRIGHT) ? BLEND_MODE_NOTBRIGHT : false;
constant bool BLEND_MODE_OVERLAY [[function_constant(23)]];
constant bool BLEND_MODE_OVERLAY_tmp = is_function_constant_defined(BLEND_MODE_OVERLAY) ? BLEND_MODE_OVERLAY : false;
constant bool BLEND_MODE_PIN_LIGHT [[function_constant(24)]];
constant bool BLEND_MODE_PIN_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_PIN_LIGHT) ? BLEND_MODE_PIN_LIGHT : false;
constant bool BLEND_MODE_REALISTIC [[function_constant(25)]];
constant bool BLEND_MODE_REALISTIC_tmp = is_function_constant_defined(BLEND_MODE_REALISTIC) ? BLEND_MODE_REALISTIC : false;
constant bool BLEND_MODE_SATURATION [[function_constant(26)]];
constant bool BLEND_MODE_SATURATION_tmp = is_function_constant_defined(BLEND_MODE_SATURATION) ? BLEND_MODE_SATURATION : false;
constant bool BLEND_MODE_SOFT_LIGHT [[function_constant(27)]];
constant bool BLEND_MODE_SOFT_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_SOFT_LIGHT) ? BLEND_MODE_SOFT_LIGHT : false;
constant bool BLEND_MODE_SUBTRACT [[function_constant(28)]];
constant bool BLEND_MODE_SUBTRACT_tmp = is_function_constant_defined(BLEND_MODE_SUBTRACT) ? BLEND_MODE_SUBTRACT : false;
constant bool BLEND_MODE_VIVID_LIGHT [[function_constant(29)]];
constant bool BLEND_MODE_VIVID_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_VIVID_LIGHT) ? BLEND_MODE_VIVID_LIGHT : false;
constant bool ENABLE_BASE_TEX [[function_constant(30)]];
constant bool ENABLE_BASE_TEX_tmp = is_function_constant_defined(ENABLE_BASE_TEX) ? ENABLE_BASE_TEX : false;
constant bool ENABLE_DETAIL_NORMAL [[function_constant(31)]];
constant bool ENABLE_DETAIL_NORMAL_tmp = is_function_constant_defined(ENABLE_DETAIL_NORMAL) ? ENABLE_DETAIL_NORMAL : false;
constant bool ENABLE_EMISSIVE [[function_constant(32)]];
constant bool ENABLE_EMISSIVE_tmp = is_function_constant_defined(ENABLE_EMISSIVE) ? ENABLE_EMISSIVE : false;
constant bool ENABLE_MATERIAL_PARAM_TEX [[function_constant(33)]];
constant bool ENABLE_MATERIAL_PARAM_TEX_tmp = is_function_constant_defined(ENABLE_MATERIAL_PARAM_TEX) ? ENABLE_MATERIAL_PARAM_TEX : false;
constant bool ENABLE_NORMALMAP [[function_constant(34)]];
constant bool ENABLE_NORMALMAP_tmp = is_function_constant_defined(ENABLE_NORMALMAP) ? ENABLE_NORMALMAP : false;
constant bool ENABLE_OPACITY_TEX [[function_constant(35)]];
constant bool ENABLE_OPACITY_TEX_tmp = is_function_constant_defined(ENABLE_OPACITY_TEX) ? ENABLE_OPACITY_TEX : false;
constant bool ENABLE_RECOLOR [[function_constant(36)]];
constant bool ENABLE_RECOLOR_tmp = is_function_constant_defined(ENABLE_RECOLOR) ? ENABLE_RECOLOR : false;
constant bool ENABLE_RIM_HIGHLIGHT [[function_constant(37)]];
constant bool ENABLE_RIM_HIGHLIGHT_tmp = is_function_constant_defined(ENABLE_RIM_HIGHLIGHT) ? ENABLE_RIM_HIGHLIGHT : false;
constant bool ENABLE_RIM_INVERT [[function_constant(38)]];
constant bool ENABLE_RIM_INVERT_tmp = is_function_constant_defined(ENABLE_RIM_INVERT) ? ENABLE_RIM_INVERT : false;
constant bool ENABLE_SIMPLE_REFLECTION [[function_constant(39)]];
constant bool ENABLE_SIMPLE_REFLECTION_tmp = is_function_constant_defined(ENABLE_SIMPLE_REFLECTION) ? ENABLE_SIMPLE_REFLECTION : false;
constant bool ENABLE_STIPPLE_PATTERN_TEST [[function_constant(40)]];
constant bool ENABLE_STIPPLE_PATTERN_TEST_tmp = is_function_constant_defined(ENABLE_STIPPLE_PATTERN_TEST) ? ENABLE_STIPPLE_PATTERN_TEST : false;
constant bool ENABLE_UV2 [[function_constant(41)]];
constant bool ENABLE_UV2_tmp = is_function_constant_defined(ENABLE_UV2) ? ENABLE_UV2 : false;
constant bool ENABLE_UV3 [[function_constant(42)]];
constant bool ENABLE_UV3_tmp = is_function_constant_defined(ENABLE_UV3) ? ENABLE_UV3 : false;
constant bool SC_USE_CLAMP_TO_BORDER_baseTex [[function_constant(43)]];
constant bool SC_USE_CLAMP_TO_BORDER_baseTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_baseTex) ? SC_USE_CLAMP_TO_BORDER_baseTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_detailNormalTex [[function_constant(44)]];
constant bool SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_detailNormalTex) ? SC_USE_CLAMP_TO_BORDER_detailNormalTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_emissiveTex [[function_constant(45)]];
constant bool SC_USE_CLAMP_TO_BORDER_emissiveTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_emissiveTex) ? SC_USE_CLAMP_TO_BORDER_emissiveTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(46)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_materialParamsTex [[function_constant(47)]];
constant bool SC_USE_CLAMP_TO_BORDER_materialParamsTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_materialParamsTex) ? SC_USE_CLAMP_TO_BORDER_materialParamsTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_normalTex [[function_constant(48)]];
constant bool SC_USE_CLAMP_TO_BORDER_normalTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_normalTex) ? SC_USE_CLAMP_TO_BORDER_normalTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_opacityTex [[function_constant(49)]];
constant bool SC_USE_CLAMP_TO_BORDER_opacityTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_opacityTex) ? SC_USE_CLAMP_TO_BORDER_opacityTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_reflectionModulationTex [[function_constant(50)]];
constant bool SC_USE_CLAMP_TO_BORDER_reflectionModulationTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex) ? SC_USE_CLAMP_TO_BORDER_reflectionModulationTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_reflectionTex [[function_constant(51)]];
constant bool SC_USE_CLAMP_TO_BORDER_reflectionTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_reflectionTex) ? SC_USE_CLAMP_TO_BORDER_reflectionTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_rimColorTex [[function_constant(52)]];
constant bool SC_USE_CLAMP_TO_BORDER_rimColorTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_rimColorTex) ? SC_USE_CLAMP_TO_BORDER_rimColorTex : false;
constant bool SC_USE_UV_MIN_MAX_baseTex [[function_constant(53)]];
constant bool SC_USE_UV_MIN_MAX_baseTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_baseTex) ? SC_USE_UV_MIN_MAX_baseTex : false;
constant bool SC_USE_UV_MIN_MAX_detailNormalTex [[function_constant(54)]];
constant bool SC_USE_UV_MIN_MAX_detailNormalTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_detailNormalTex) ? SC_USE_UV_MIN_MAX_detailNormalTex : false;
constant bool SC_USE_UV_MIN_MAX_emissiveTex [[function_constant(55)]];
constant bool SC_USE_UV_MIN_MAX_emissiveTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_emissiveTex) ? SC_USE_UV_MIN_MAX_emissiveTex : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(56)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_materialParamsTex [[function_constant(57)]];
constant bool SC_USE_UV_MIN_MAX_materialParamsTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_materialParamsTex) ? SC_USE_UV_MIN_MAX_materialParamsTex : false;
constant bool SC_USE_UV_MIN_MAX_normalTex [[function_constant(58)]];
constant bool SC_USE_UV_MIN_MAX_normalTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_normalTex) ? SC_USE_UV_MIN_MAX_normalTex : false;
constant bool SC_USE_UV_MIN_MAX_opacityTex [[function_constant(59)]];
constant bool SC_USE_UV_MIN_MAX_opacityTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_opacityTex) ? SC_USE_UV_MIN_MAX_opacityTex : false;
constant bool SC_USE_UV_MIN_MAX_reflectionModulationTex [[function_constant(60)]];
constant bool SC_USE_UV_MIN_MAX_reflectionModulationTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_reflectionModulationTex) ? SC_USE_UV_MIN_MAX_reflectionModulationTex : false;
constant bool SC_USE_UV_MIN_MAX_reflectionTex [[function_constant(61)]];
constant bool SC_USE_UV_MIN_MAX_reflectionTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_reflectionTex) ? SC_USE_UV_MIN_MAX_reflectionTex : false;
constant bool SC_USE_UV_MIN_MAX_rimColorTex [[function_constant(62)]];
constant bool SC_USE_UV_MIN_MAX_rimColorTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_rimColorTex) ? SC_USE_UV_MIN_MAX_rimColorTex : false;
constant bool SC_USE_UV_TRANSFORM_baseTex [[function_constant(63)]];
constant bool SC_USE_UV_TRANSFORM_baseTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_baseTex) ? SC_USE_UV_TRANSFORM_baseTex : false;
constant bool SC_USE_UV_TRANSFORM_detailNormalTex [[function_constant(64)]];
constant bool SC_USE_UV_TRANSFORM_detailNormalTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_detailNormalTex) ? SC_USE_UV_TRANSFORM_detailNormalTex : false;
constant bool SC_USE_UV_TRANSFORM_emissiveTex [[function_constant(65)]];
constant bool SC_USE_UV_TRANSFORM_emissiveTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_emissiveTex) ? SC_USE_UV_TRANSFORM_emissiveTex : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(66)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_materialParamsTex [[function_constant(67)]];
constant bool SC_USE_UV_TRANSFORM_materialParamsTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_materialParamsTex) ? SC_USE_UV_TRANSFORM_materialParamsTex : false;
constant bool SC_USE_UV_TRANSFORM_normalTex [[function_constant(68)]];
constant bool SC_USE_UV_TRANSFORM_normalTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_normalTex) ? SC_USE_UV_TRANSFORM_normalTex : false;
constant bool SC_USE_UV_TRANSFORM_opacityTex [[function_constant(69)]];
constant bool SC_USE_UV_TRANSFORM_opacityTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_opacityTex) ? SC_USE_UV_TRANSFORM_opacityTex : false;
constant bool SC_USE_UV_TRANSFORM_reflectionModulationTex [[function_constant(70)]];
constant bool SC_USE_UV_TRANSFORM_reflectionModulationTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_reflectionModulationTex) ? SC_USE_UV_TRANSFORM_reflectionModulationTex : false;
constant bool SC_USE_UV_TRANSFORM_reflectionTex [[function_constant(71)]];
constant bool SC_USE_UV_TRANSFORM_reflectionTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_reflectionTex) ? SC_USE_UV_TRANSFORM_reflectionTex : false;
constant bool SC_USE_UV_TRANSFORM_rimColorTex [[function_constant(72)]];
constant bool SC_USE_UV_TRANSFORM_rimColorTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_rimColorTex) ? SC_USE_UV_TRANSFORM_rimColorTex : false;
constant bool Tweak_N177 [[function_constant(73)]];
constant bool Tweak_N177_tmp = is_function_constant_defined(Tweak_N177) ? Tweak_N177 : false;
constant bool Tweak_N216 [[function_constant(74)]];
constant bool Tweak_N216_tmp = is_function_constant_defined(Tweak_N216) ? Tweak_N216 : false;
constant bool UseViewSpaceDepthVariant [[function_constant(75)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool baseTexHasSwappedViews [[function_constant(76)]];
constant bool baseTexHasSwappedViews_tmp = is_function_constant_defined(baseTexHasSwappedViews) ? baseTexHasSwappedViews : false;
constant bool detailNormalTexHasSwappedViews [[function_constant(77)]];
constant bool detailNormalTexHasSwappedViews_tmp = is_function_constant_defined(detailNormalTexHasSwappedViews) ? detailNormalTexHasSwappedViews : false;
constant bool emissiveTexHasSwappedViews [[function_constant(78)]];
constant bool emissiveTexHasSwappedViews_tmp = is_function_constant_defined(emissiveTexHasSwappedViews) ? emissiveTexHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(79)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool materialParamsTexHasSwappedViews [[function_constant(80)]];
constant bool materialParamsTexHasSwappedViews_tmp = is_function_constant_defined(materialParamsTexHasSwappedViews) ? materialParamsTexHasSwappedViews : false;
constant bool normalTexHasSwappedViews [[function_constant(81)]];
constant bool normalTexHasSwappedViews_tmp = is_function_constant_defined(normalTexHasSwappedViews) ? normalTexHasSwappedViews : false;
constant bool opacityTexHasSwappedViews [[function_constant(82)]];
constant bool opacityTexHasSwappedViews_tmp = is_function_constant_defined(opacityTexHasSwappedViews) ? opacityTexHasSwappedViews : false;
constant bool reflectionModulationTexHasSwappedViews [[function_constant(83)]];
constant bool reflectionModulationTexHasSwappedViews_tmp = is_function_constant_defined(reflectionModulationTexHasSwappedViews) ? reflectionModulationTexHasSwappedViews : false;
constant bool reflectionTexHasSwappedViews [[function_constant(84)]];
constant bool reflectionTexHasSwappedViews_tmp = is_function_constant_defined(reflectionTexHasSwappedViews) ? reflectionTexHasSwappedViews : false;
constant bool rimColorTexHasSwappedViews [[function_constant(85)]];
constant bool rimColorTexHasSwappedViews_tmp = is_function_constant_defined(rimColorTexHasSwappedViews) ? rimColorTexHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(86)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(87)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(88)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(89)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(90)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(91)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(92)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(93)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(94)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(95)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(96)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(97)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(98)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(99)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(100)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(101)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_EnvmapDiffuseHasSwappedViews [[function_constant(102)]];
constant bool sc_EnvmapDiffuseHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapDiffuseHasSwappedViews) ? sc_EnvmapDiffuseHasSwappedViews : false;
constant bool sc_EnvmapSpecularHasSwappedViews [[function_constant(103)]];
constant bool sc_EnvmapSpecularHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapSpecularHasSwappedViews) ? sc_EnvmapSpecularHasSwappedViews : false;
constant bool sc_FramebufferFetch [[function_constant(104)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_HasDiffuseEnvmap [[function_constant(105)]];
constant bool sc_HasDiffuseEnvmap_tmp = is_function_constant_defined(sc_HasDiffuseEnvmap) ? sc_HasDiffuseEnvmap : false;
constant bool sc_IsEditor [[function_constant(106)]];
constant bool sc_IsEditor_tmp = is_function_constant_defined(sc_IsEditor) ? sc_IsEditor : false;
constant bool sc_LightEstimation [[function_constant(107)]];
constant bool sc_LightEstimation_tmp = is_function_constant_defined(sc_LightEstimation) ? sc_LightEstimation : false;
constant bool sc_MotionVectorsPass [[function_constant(108)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(109)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(110)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(111)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(112)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(113)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_ProxyAlphaOne [[function_constant(114)]];
constant bool sc_ProxyAlphaOne_tmp = is_function_constant_defined(sc_ProxyAlphaOne) ? sc_ProxyAlphaOne : false;
constant bool sc_RayTracedDiffIndTextureHasSwappedViews [[function_constant(115)]];
constant bool sc_RayTracedDiffIndTextureHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracedDiffIndTextureHasSwappedViews) ? sc_RayTracedDiffIndTextureHasSwappedViews : false;
constant bool sc_RayTracedShadowTextureHasSwappedViews [[function_constant(116)]];
constant bool sc_RayTracedShadowTextureHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracedShadowTextureHasSwappedViews) ? sc_RayTracedShadowTextureHasSwappedViews : false;
constant bool sc_RenderAlphaToColor [[function_constant(117)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_SSAOEnabled [[function_constant(118)]];
constant bool sc_SSAOEnabled_tmp = is_function_constant_defined(sc_SSAOEnabled) ? sc_SSAOEnabled : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(119)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(120)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(121)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(122)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool uv2EnableAnimation [[function_constant(123)]];
constant bool uv2EnableAnimation_tmp = is_function_constant_defined(uv2EnableAnimation) ? uv2EnableAnimation : false;
constant bool uv3EnableAnimation [[function_constant(124)]];
constant bool uv3EnableAnimation_tmp = is_function_constant_defined(uv3EnableAnimation) ? uv3EnableAnimation : false;
constant int NODE_13_DROPLIST_ITEM [[function_constant(125)]];
constant int NODE_13_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_13_DROPLIST_ITEM) ? NODE_13_DROPLIST_ITEM : 0;
constant int NODE_181_DROPLIST_ITEM [[function_constant(126)]];
constant int NODE_181_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_181_DROPLIST_ITEM) ? NODE_181_DROPLIST_ITEM : 0;
constant int NODE_184_DROPLIST_ITEM [[function_constant(127)]];
constant int NODE_184_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_184_DROPLIST_ITEM) ? NODE_184_DROPLIST_ITEM : 0;
constant int NODE_221_DROPLIST_ITEM [[function_constant(128)]];
constant int NODE_221_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_221_DROPLIST_ITEM) ? NODE_221_DROPLIST_ITEM : 0;
constant int NODE_228_DROPLIST_ITEM [[function_constant(129)]];
constant int NODE_228_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_228_DROPLIST_ITEM) ? NODE_228_DROPLIST_ITEM : 0;
constant int NODE_27_DROPLIST_ITEM [[function_constant(130)]];
constant int NODE_27_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_27_DROPLIST_ITEM) ? NODE_27_DROPLIST_ITEM : 0;
constant int NODE_315_DROPLIST_ITEM [[function_constant(131)]];
constant int NODE_315_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_315_DROPLIST_ITEM) ? NODE_315_DROPLIST_ITEM : 0;
constant int NODE_38_DROPLIST_ITEM [[function_constant(132)]];
constant int NODE_38_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_38_DROPLIST_ITEM) ? NODE_38_DROPLIST_ITEM : 0;
constant int NODE_49_DROPLIST_ITEM [[function_constant(133)]];
constant int NODE_49_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_49_DROPLIST_ITEM) ? NODE_49_DROPLIST_ITEM : 0;
constant int NODE_69_DROPLIST_ITEM [[function_constant(134)]];
constant int NODE_69_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_69_DROPLIST_ITEM) ? NODE_69_DROPLIST_ITEM : 0;
constant int NODE_76_DROPLIST_ITEM [[function_constant(135)]];
constant int NODE_76_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_76_DROPLIST_ITEM) ? NODE_76_DROPLIST_ITEM : 0;
constant int SC_DEVICE_CLASS [[function_constant(136)]];
constant int SC_DEVICE_CLASS_tmp = is_function_constant_defined(SC_DEVICE_CLASS) ? SC_DEVICE_CLASS : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex [[function_constant(137)]];
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_baseTex) ? SC_SOFTWARE_WRAP_MODE_U_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_detailNormalTex [[function_constant(138)]];
constant int SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex) ? SC_SOFTWARE_WRAP_MODE_U_detailNormalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_emissiveTex [[function_constant(139)]];
constant int SC_SOFTWARE_WRAP_MODE_U_emissiveTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_emissiveTex) ? SC_SOFTWARE_WRAP_MODE_U_emissiveTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(140)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_materialParamsTex [[function_constant(141)]];
constant int SC_SOFTWARE_WRAP_MODE_U_materialParamsTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex) ? SC_SOFTWARE_WRAP_MODE_U_materialParamsTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_normalTex [[function_constant(142)]];
constant int SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_normalTex) ? SC_SOFTWARE_WRAP_MODE_U_normalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_opacityTex [[function_constant(143)]];
constant int SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_opacityTex) ? SC_SOFTWARE_WRAP_MODE_U_opacityTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex [[function_constant(144)]];
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex) ? SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionTex [[function_constant(145)]];
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_reflectionTex) ? SC_SOFTWARE_WRAP_MODE_U_reflectionTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_rimColorTex [[function_constant(146)]];
constant int SC_SOFTWARE_WRAP_MODE_U_rimColorTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_rimColorTex) ? SC_SOFTWARE_WRAP_MODE_U_rimColorTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex [[function_constant(147)]];
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_baseTex) ? SC_SOFTWARE_WRAP_MODE_V_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_detailNormalTex [[function_constant(148)]];
constant int SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_detailNormalTex) ? SC_SOFTWARE_WRAP_MODE_V_detailNormalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_emissiveTex [[function_constant(149)]];
constant int SC_SOFTWARE_WRAP_MODE_V_emissiveTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_emissiveTex) ? SC_SOFTWARE_WRAP_MODE_V_emissiveTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(150)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_materialParamsTex [[function_constant(151)]];
constant int SC_SOFTWARE_WRAP_MODE_V_materialParamsTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_materialParamsTex) ? SC_SOFTWARE_WRAP_MODE_V_materialParamsTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_normalTex [[function_constant(152)]];
constant int SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_normalTex) ? SC_SOFTWARE_WRAP_MODE_V_normalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_opacityTex [[function_constant(153)]];
constant int SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_opacityTex) ? SC_SOFTWARE_WRAP_MODE_V_opacityTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex [[function_constant(154)]];
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex) ? SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionTex [[function_constant(155)]];
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_reflectionTex) ? SC_SOFTWARE_WRAP_MODE_V_reflectionTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_rimColorTex [[function_constant(156)]];
constant int SC_SOFTWARE_WRAP_MODE_V_rimColorTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_rimColorTex) ? SC_SOFTWARE_WRAP_MODE_V_rimColorTex : -1;
constant int baseTexLayout [[function_constant(157)]];
constant int baseTexLayout_tmp = is_function_constant_defined(baseTexLayout) ? baseTexLayout : 0;
constant int detailNormalTexLayout [[function_constant(158)]];
constant int detailNormalTexLayout_tmp = is_function_constant_defined(detailNormalTexLayout) ? detailNormalTexLayout : 0;
constant int emissiveTexLayout [[function_constant(159)]];
constant int emissiveTexLayout_tmp = is_function_constant_defined(emissiveTexLayout) ? emissiveTexLayout : 0;
constant int intensityTextureLayout [[function_constant(160)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int materialParamsTexLayout [[function_constant(161)]];
constant int materialParamsTexLayout_tmp = is_function_constant_defined(materialParamsTexLayout) ? materialParamsTexLayout : 0;
constant int normalTexLayout [[function_constant(162)]];
constant int normalTexLayout_tmp = is_function_constant_defined(normalTexLayout) ? normalTexLayout : 0;
constant int opacityTexLayout [[function_constant(163)]];
constant int opacityTexLayout_tmp = is_function_constant_defined(opacityTexLayout) ? opacityTexLayout : 0;
constant int reflectionModulationTexLayout [[function_constant(164)]];
constant int reflectionModulationTexLayout_tmp = is_function_constant_defined(reflectionModulationTexLayout) ? reflectionModulationTexLayout : 0;
constant int reflectionTexLayout [[function_constant(165)]];
constant int reflectionTexLayout_tmp = is_function_constant_defined(reflectionTexLayout) ? reflectionTexLayout : 0;
constant int rimColorTexLayout [[function_constant(166)]];
constant int rimColorTexLayout_tmp = is_function_constant_defined(rimColorTexLayout) ? rimColorTexLayout : 0;
constant int sc_AmbientLightMode0 [[function_constant(167)]];
constant int sc_AmbientLightMode0_tmp = is_function_constant_defined(sc_AmbientLightMode0) ? sc_AmbientLightMode0 : 0;
constant int sc_AmbientLightMode1 [[function_constant(168)]];
constant int sc_AmbientLightMode1_tmp = is_function_constant_defined(sc_AmbientLightMode1) ? sc_AmbientLightMode1 : 0;
constant int sc_AmbientLightMode2 [[function_constant(169)]];
constant int sc_AmbientLightMode2_tmp = is_function_constant_defined(sc_AmbientLightMode2) ? sc_AmbientLightMode2 : 0;
constant int sc_AmbientLightMode_Constant [[function_constant(170)]];
constant int sc_AmbientLightMode_Constant_tmp = is_function_constant_defined(sc_AmbientLightMode_Constant) ? sc_AmbientLightMode_Constant : 0;
constant int sc_AmbientLightMode_EnvironmentMap [[function_constant(171)]];
constant int sc_AmbientLightMode_EnvironmentMap_tmp = is_function_constant_defined(sc_AmbientLightMode_EnvironmentMap) ? sc_AmbientLightMode_EnvironmentMap : 0;
constant int sc_AmbientLightMode_FromCamera [[function_constant(172)]];
constant int sc_AmbientLightMode_FromCamera_tmp = is_function_constant_defined(sc_AmbientLightMode_FromCamera) ? sc_AmbientLightMode_FromCamera : 0;
constant int sc_AmbientLightMode_SphericalHarmonics [[function_constant(173)]];
constant int sc_AmbientLightMode_SphericalHarmonics_tmp = is_function_constant_defined(sc_AmbientLightMode_SphericalHarmonics) ? sc_AmbientLightMode_SphericalHarmonics : 0;
constant int sc_AmbientLightsCount [[function_constant(174)]];
constant int sc_AmbientLightsCount_tmp = is_function_constant_defined(sc_AmbientLightsCount) ? sc_AmbientLightsCount : 0;
constant int sc_DepthBufferMode [[function_constant(175)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_DirectionalLightsCount [[function_constant(176)]];
constant int sc_DirectionalLightsCount_tmp = is_function_constant_defined(sc_DirectionalLightsCount) ? sc_DirectionalLightsCount : 0;
constant int sc_EnvLightMode [[function_constant(177)]];
constant int sc_EnvLightMode_tmp = is_function_constant_defined(sc_EnvLightMode) ? sc_EnvLightMode : 0;
constant int sc_EnvmapDiffuseLayout [[function_constant(178)]];
constant int sc_EnvmapDiffuseLayout_tmp = is_function_constant_defined(sc_EnvmapDiffuseLayout) ? sc_EnvmapDiffuseLayout : 0;
constant int sc_EnvmapSpecularLayout [[function_constant(179)]];
constant int sc_EnvmapSpecularLayout_tmp = is_function_constant_defined(sc_EnvmapSpecularLayout) ? sc_EnvmapSpecularLayout : 0;
constant int sc_LightEstimationSGCount [[function_constant(180)]];
constant int sc_LightEstimationSGCount_tmp = is_function_constant_defined(sc_LightEstimationSGCount) ? sc_LightEstimationSGCount : 0;
constant int sc_PointLightsCount [[function_constant(181)]];
constant int sc_PointLightsCount_tmp = is_function_constant_defined(sc_PointLightsCount) ? sc_PointLightsCount : 0;
constant int sc_RayTracedDiffIndTextureLayout [[function_constant(182)]];
constant int sc_RayTracedDiffIndTextureLayout_tmp = is_function_constant_defined(sc_RayTracedDiffIndTextureLayout) ? sc_RayTracedDiffIndTextureLayout : 0;
constant int sc_RayTracedShadowTextureLayout [[function_constant(183)]];
constant int sc_RayTracedShadowTextureLayout_tmp = is_function_constant_defined(sc_RayTracedShadowTextureLayout) ? sc_RayTracedShadowTextureLayout : 0;
constant int sc_RenderingSpace [[function_constant(184)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(185)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(186)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(187)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(188)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(189)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;

namespace SNAP_VS {
struct sc_Vertex_t
{
float4 position;
float3 normal;
float3 tangent;
float2 texture0;
float2 texture1;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int receivesRayTracedReflections;
int isProxyMode;
int receivesRayTracedShadows;
int receivesRayTracedDiffuseIndirect;
float4 sc_RayTracedReflectionTextureSize;
float4 sc_RayTracedReflectionTextureDims;
float4 sc_RayTracedReflectionTextureView;
float4 sc_RayTracedShadowTextureSize;
float4 sc_RayTracedShadowTextureDims;
float4 sc_RayTracedShadowTextureView;
float4 sc_RayTracedDiffIndTextureSize;
float4 sc_RayTracedDiffIndTextureDims;
float4 sc_RayTracedDiffIndTextureView;
float receiver_mask;
float3 OriginNormalizationScale;
float3 OriginNormalizationScaleInv;
float3 OriginNormalizationOffset;
int receiverId;
int instance_id;
int lray_triangles_last;
int noEarlyZ;
int has_animated_pn;
int emitter_stride;
int proxy_offset_position;
int proxy_offset_normal;
int proxy_offset_tangent;
int proxy_offset_color;
int proxy_offset_texture0;
int proxy_offset_texture1;
int proxy_offset_texture2;
int proxy_offset_texture3;
int proxy_format_position;
int proxy_format_normal;
int proxy_format_tangent;
int proxy_format_color;
int proxy_format_texture0;
int proxy_format_texture1;
int proxy_format_texture2;
int proxy_format_texture3;
float4 z_rayDirectionsSize;
float4 z_rayDirectionsDims;
float4 z_rayDirectionsView;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float4 baseColor;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float3 recolorRed;
float3 recolorGreen;
float3 recolorBlue;
float4 opacityTexSize;
float4 opacityTexDims;
float4 opacityTexView;
float3x3 opacityTexTransform;
float4 opacityTexUvMinMax;
float4 opacityTexBorderColor;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float4 detailNormalTexSize;
float4 detailNormalTexDims;
float4 detailNormalTexView;
float3x3 detailNormalTexTransform;
float4 detailNormalTexUvMinMax;
float4 detailNormalTexBorderColor;
float4 emissiveTexSize;
float4 emissiveTexDims;
float4 emissiveTexView;
float3x3 emissiveTexTransform;
float4 emissiveTexUvMinMax;
float4 emissiveTexBorderColor;
float3 emissiveColor;
float emissiveIntensity;
float4 reflectionTexSize;
float4 reflectionTexDims;
float4 reflectionTexView;
float3x3 reflectionTexTransform;
float4 reflectionTexUvMinMax;
float4 reflectionTexBorderColor;
float reflectionIntensity;
float4 reflectionModulationTexSize;
float4 reflectionModulationTexDims;
float4 reflectionModulationTexView;
float3x3 reflectionModulationTexTransform;
float4 reflectionModulationTexUvMinMax;
float4 reflectionModulationTexBorderColor;
float3 rimColor;
float rimIntensity;
float rimExponent;
float4 rimColorTexSize;
float4 rimColorTexDims;
float4 rimColorTexView;
float3x3 rimColorTexTransform;
float4 rimColorTexUvMinMax;
float4 rimColorTexBorderColor;
float metallic;
float roughness;
float4 materialParamsTexSize;
float4 materialParamsTexDims;
float4 materialParamsTexView;
float3x3 materialParamsTexTransform;
float4 materialParamsTexUvMinMax;
float4 materialParamsTexBorderColor;
float specularAoIntensity;
float specularAoDarkening;
float2 uv2Scale;
float2 uv2Offset;
float2 uv3Scale;
float2 uv3Offset;
float depthRef;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct layoutIndices_obj
{
uint _Triangles[1];
};
struct layoutVertices_obj
{
float _Vertices[1];
};
struct layoutVerticesPN_obj
{
float _VerticesPN[1];
};
struct sc_Set0
{
const device layoutIndices_obj* layoutIndices [[id(0)]];
const device layoutVertices_obj* layoutVertices [[id(1)]];
const device layoutVerticesPN_obj* layoutVerticesPN [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> baseTex [[id(4)]];
texture2d<float> detailNormalTex [[id(5)]];
texture2d<float> emissiveTex [[id(6)]];
texture2d<float> intensityTexture [[id(7)]];
texture2d<float> materialParamsTex [[id(8)]];
texture2d<float> normalTex [[id(9)]];
texture2d<float> opacityTex [[id(10)]];
texture2d<float> reflectionModulationTex [[id(11)]];
texture2d<float> reflectionTex [[id(12)]];
texture2d<float> rimColorTex [[id(13)]];
texture2d<float> sc_EnvmapDiffuse [[id(14)]];
texture2d<float> sc_EnvmapSpecular [[id(15)]];
texture2d<float> sc_RayTracedDiffIndTexture [[id(24)]];
texture2d<float> sc_RayTracedShadowTexture [[id(26)]];
texture2d<float> sc_SSAOTexture [[id(27)]];
texture2d<float> sc_ScreenTexture [[id(28)]];
texture2d<float> sc_ShadowTexture [[id(29)]];
texture2d<uint> z_hitIdAndBarycentric [[id(31)]];
texture2d<float> z_rayDirections [[id(32)]];
sampler baseTexSmpSC [[id(33)]];
sampler detailNormalTexSmpSC [[id(34)]];
sampler emissiveTexSmpSC [[id(35)]];
sampler intensityTextureSmpSC [[id(36)]];
sampler materialParamsTexSmpSC [[id(37)]];
sampler normalTexSmpSC [[id(38)]];
sampler opacityTexSmpSC [[id(39)]];
sampler reflectionModulationTexSmpSC [[id(40)]];
sampler reflectionTexSmpSC [[id(41)]];
sampler rimColorTexSmpSC [[id(42)]];
sampler sc_EnvmapDiffuseSmpSC [[id(43)]];
sampler sc_EnvmapSpecularSmpSC [[id(44)]];
sampler sc_RayTracedDiffIndTextureSmpSC [[id(46)]];
sampler sc_RayTracedShadowTextureSmpSC [[id(48)]];
sampler sc_SSAOTextureSmpSC [[id(49)]];
sampler sc_ScreenTextureSmpSC [[id(50)]];
sampler sc_ShadowTextureSmpSC [[id(51)]];
sampler z_hitIdAndBarycentricSmp [[id(53)]];
sampler z_rayDirectionsSmpSC [[id(54)]];
constant userUniformsObj* UserUniforms [[id(55)]];
};
struct main_vert_out
{
float3 varPos [[user(locn0)]];
float3 varNormal [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varPackedTex [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
float4 gl_Position [[position]];
};
struct main_vert_in
{
float4 position [[attribute(0)]];
float3 normal [[attribute(1)]];
float4 tangent [[attribute(2)]];
float2 texture0 [[attribute(3)]];
float2 texture1 [[attribute(4)]];
float4 boneData [[attribute(5)]];
float3 blendShape0Pos [[attribute(6)]];
float3 blendShape1Pos [[attribute(7)]];
float3 blendShape2Pos [[attribute(8)]];
float3 blendShape3Pos [[attribute(9)]];
float3 blendShape4Pos [[attribute(10)]];
float3 blendShape5Pos [[attribute(11)]];
float3 blendShape0Normal [[attribute(12)]];
float3 blendShape1Normal [[attribute(13)]];
float3 blendShape2Normal [[attribute(14)]];
float3 positionNext [[attribute(15)]];
float3 positionPrevious [[attribute(16)]];
float4 strandProperties [[attribute(17)]];
float4 color [[attribute(18)]];
};
vertex main_vert_out main_vert(main_vert_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],uint gl_InstanceIndex [[instance_id]])
{
main_vert_out out={};
bool l9_0=(*sc_set0.UserUniforms).isProxyMode!=0;
if (l9_0)
{
float4 param=float4(in.position.xy,(*sc_set0.UserUniforms).depthRef+(1e-10*in.position.z),1.0+(1e-10*in.position.w));
if (sc_ShaderCacheConstant_tmp!=0)
{
param.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_1=param;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_2=dot(l9_1,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_3=l9_2;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_3;
}
}
float4 l9_4=float4(param.x,-param.y,(param.z*0.5)+(param.w*0.5),param.w);
out.gl_Position=l9_4;
return out;
}
out.PreviewVertexColor=float4(0.5);
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=float4(0.5);
PreviewInfo.Saved=false;
out.PreviewVertexSaved=0.0;
sc_Vertex_t l9_6;
l9_6.position=in.position;
l9_6.normal=in.normal;
l9_6.tangent=in.tangent.xyz;
l9_6.texture0=in.texture0;
l9_6.texture1=in.texture1;
sc_Vertex_t l9_7=l9_6;
sc_Vertex_t param_1=l9_7;
sc_Vertex_t l9_8=param_1;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_9=l9_8;
float3 l9_10=in.blendShape0Pos;
float3 l9_11=in.blendShape0Normal;
float l9_12=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_13=l9_9;
float3 l9_14=l9_10;
float l9_15=l9_12;
float3 l9_16=l9_13.position.xyz+(l9_14*l9_15);
l9_13.position=float4(l9_16.x,l9_16.y,l9_16.z,l9_13.position.w);
l9_9=l9_13;
l9_9.normal+=(l9_11*l9_12);
l9_8=l9_9;
sc_Vertex_t l9_17=l9_8;
float3 l9_18=in.blendShape1Pos;
float3 l9_19=in.blendShape1Normal;
float l9_20=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_21=l9_17;
float3 l9_22=l9_18;
float l9_23=l9_20;
float3 l9_24=l9_21.position.xyz+(l9_22*l9_23);
l9_21.position=float4(l9_24.x,l9_24.y,l9_24.z,l9_21.position.w);
l9_17=l9_21;
l9_17.normal+=(l9_19*l9_20);
l9_8=l9_17;
sc_Vertex_t l9_25=l9_8;
float3 l9_26=in.blendShape2Pos;
float3 l9_27=in.blendShape2Normal;
float l9_28=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_29=l9_25;
float3 l9_30=l9_26;
float l9_31=l9_28;
float3 l9_32=l9_29.position.xyz+(l9_30*l9_31);
l9_29.position=float4(l9_32.x,l9_32.y,l9_32.z,l9_29.position.w);
l9_25=l9_29;
l9_25.normal+=(l9_27*l9_28);
l9_8=l9_25;
}
else
{
sc_Vertex_t l9_33=l9_8;
float3 l9_34=in.blendShape0Pos;
float l9_35=(*sc_set0.UserUniforms).weights0.x;
float3 l9_36=l9_33.position.xyz+(l9_34*l9_35);
l9_33.position=float4(l9_36.x,l9_36.y,l9_36.z,l9_33.position.w);
l9_8=l9_33;
sc_Vertex_t l9_37=l9_8;
float3 l9_38=in.blendShape1Pos;
float l9_39=(*sc_set0.UserUniforms).weights0.y;
float3 l9_40=l9_37.position.xyz+(l9_38*l9_39);
l9_37.position=float4(l9_40.x,l9_40.y,l9_40.z,l9_37.position.w);
l9_8=l9_37;
sc_Vertex_t l9_41=l9_8;
float3 l9_42=in.blendShape2Pos;
float l9_43=(*sc_set0.UserUniforms).weights0.z;
float3 l9_44=l9_41.position.xyz+(l9_42*l9_43);
l9_41.position=float4(l9_44.x,l9_44.y,l9_44.z,l9_41.position.w);
l9_8=l9_41;
sc_Vertex_t l9_45=l9_8;
float3 l9_46=in.blendShape3Pos;
float l9_47=(*sc_set0.UserUniforms).weights0.w;
float3 l9_48=l9_45.position.xyz+(l9_46*l9_47);
l9_45.position=float4(l9_48.x,l9_48.y,l9_48.z,l9_45.position.w);
l9_8=l9_45;
sc_Vertex_t l9_49=l9_8;
float3 l9_50=in.blendShape4Pos;
float l9_51=(*sc_set0.UserUniforms).weights1.x;
float3 l9_52=l9_49.position.xyz+(l9_50*l9_51);
l9_49.position=float4(l9_52.x,l9_52.y,l9_52.z,l9_49.position.w);
l9_8=l9_49;
sc_Vertex_t l9_53=l9_8;
float3 l9_54=in.blendShape5Pos;
float l9_55=(*sc_set0.UserUniforms).weights1.y;
float3 l9_56=l9_53.position.xyz+(l9_54*l9_55);
l9_53.position=float4(l9_56.x,l9_56.y,l9_56.z,l9_53.position.w);
l9_8=l9_53;
}
}
param_1=l9_8;
sc_Vertex_t l9_57=param_1;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_58=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_58=float4(1.0,fract(in.boneData.yzw));
l9_58.x-=dot(l9_58.yzw,float3(1.0));
}
float4 l9_59=l9_58;
float4 l9_60=l9_59;
int l9_61=int(in.boneData.x);
int l9_62=int(in.boneData.y);
int l9_63=int(in.boneData.z);
int l9_64=int(in.boneData.w);
int l9_65=l9_61;
float4 l9_66=l9_57.position;
float3 l9_67=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_68=l9_65;
float4 l9_69=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[0];
float4 l9_70=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[1];
float4 l9_71=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[2];
float4 l9_72[3];
l9_72[0]=l9_69;
l9_72[1]=l9_70;
l9_72[2]=l9_71;
l9_67=float3(dot(l9_66,l9_72[0]),dot(l9_66,l9_72[1]),dot(l9_66,l9_72[2]));
}
else
{
l9_67=l9_66.xyz;
}
float3 l9_73=l9_67;
float3 l9_74=l9_73;
float l9_75=l9_60.x;
int l9_76=l9_62;
float4 l9_77=l9_57.position;
float3 l9_78=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_79=l9_76;
float4 l9_80=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[0];
float4 l9_81=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[1];
float4 l9_82=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[2];
float4 l9_83[3];
l9_83[0]=l9_80;
l9_83[1]=l9_81;
l9_83[2]=l9_82;
l9_78=float3(dot(l9_77,l9_83[0]),dot(l9_77,l9_83[1]),dot(l9_77,l9_83[2]));
}
else
{
l9_78=l9_77.xyz;
}
float3 l9_84=l9_78;
float3 l9_85=l9_84;
float l9_86=l9_60.y;
int l9_87=l9_63;
float4 l9_88=l9_57.position;
float3 l9_89=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_90=l9_87;
float4 l9_91=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[0];
float4 l9_92=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[1];
float4 l9_93=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[2];
float4 l9_94[3];
l9_94[0]=l9_91;
l9_94[1]=l9_92;
l9_94[2]=l9_93;
l9_89=float3(dot(l9_88,l9_94[0]),dot(l9_88,l9_94[1]),dot(l9_88,l9_94[2]));
}
else
{
l9_89=l9_88.xyz;
}
float3 l9_95=l9_89;
float3 l9_96=l9_95;
float l9_97=l9_60.z;
int l9_98=l9_64;
float4 l9_99=l9_57.position;
float3 l9_100=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_101=l9_98;
float4 l9_102=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[0];
float4 l9_103=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[1];
float4 l9_104=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[2];
float4 l9_105[3];
l9_105[0]=l9_102;
l9_105[1]=l9_103;
l9_105[2]=l9_104;
l9_100=float3(dot(l9_99,l9_105[0]),dot(l9_99,l9_105[1]),dot(l9_99,l9_105[2]));
}
else
{
l9_100=l9_99.xyz;
}
float3 l9_106=l9_100;
float3 l9_107=(((l9_74*l9_75)+(l9_85*l9_86))+(l9_96*l9_97))+(l9_106*l9_60.w);
l9_57.position=float4(l9_107.x,l9_107.y,l9_107.z,l9_57.position.w);
int l9_108=l9_61;
float3x3 l9_109=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[2].xyz));
float3x3 l9_110=l9_109;
float3x3 l9_111=l9_110;
int l9_112=l9_62;
float3x3 l9_113=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[2].xyz));
float3x3 l9_114=l9_113;
float3x3 l9_115=l9_114;
int l9_116=l9_63;
float3x3 l9_117=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[2].xyz));
float3x3 l9_118=l9_117;
float3x3 l9_119=l9_118;
int l9_120=l9_64;
float3x3 l9_121=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[2].xyz));
float3x3 l9_122=l9_121;
float3x3 l9_123=l9_122;
l9_57.normal=((((l9_111*l9_57.normal)*l9_60.x)+((l9_115*l9_57.normal)*l9_60.y))+((l9_119*l9_57.normal)*l9_60.z))+((l9_123*l9_57.normal)*l9_60.w);
l9_57.tangent=((((l9_111*l9_57.tangent)*l9_60.x)+((l9_115*l9_57.tangent)*l9_60.y))+((l9_119*l9_57.tangent)*l9_60.z))+((l9_123*l9_57.tangent)*l9_60.w);
}
param_1=l9_57;
if (sc_RenderingSpace_tmp==3)
{
out.varPos=float3(0.0);
out.varNormal=param_1.normal;
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==4)
{
out.varPos=float3(0.0);
out.varNormal=param_1.normal;
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
out.varPos=param_1.position.xyz;
out.varNormal=param_1.normal;
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
out.varPos=((*sc_set0.UserUniforms).sc_ModelMatrix*param_1.position).xyz;
out.varNormal=(*sc_set0.UserUniforms).sc_NormalMatrix*param_1.normal;
float3 l9_124=(*sc_set0.UserUniforms).sc_NormalMatrix*param_1.tangent;
out.varTangent=float4(l9_124.x,l9_124.y,l9_124.z,out.varTangent.w);
}
}
}
}
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
param_1.texture0.x=1.0-param_1.texture0.x;
}
out.varColor=in.color;
sc_Vertex_t v=param_1;
float3 WorldPosition=out.varPos;
float3 WorldNormal=out.varNormal;
float3 WorldTangent=out.varTangent.xyz;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPos;
WorldNormal=out.varNormal;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_2=v;
float3 param_3=WorldPosition;
float3 param_4=WorldNormal;
float3 param_5=WorldTangent;
float4 param_6=v.position;
out.varPos=param_3;
out.varNormal=normalize(param_4);
float3 l9_125=normalize(param_5);
out.varTangent=float4(l9_125.x,l9_125.y,l9_125.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_126=param_2.position;
float4 l9_127=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_128=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_128=0;
}
else
{
l9_128=gl_InstanceIndex%2;
}
int l9_129=l9_128;
l9_127=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_129]*l9_126;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_130=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_130=0;
}
else
{
l9_130=gl_InstanceIndex%2;
}
int l9_131=l9_130;
l9_127=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_131]*l9_126;
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_132=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_132=0;
}
else
{
l9_132=gl_InstanceIndex%2;
}
int l9_133=l9_132;
l9_127=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_133]*l9_126;
}
else
{
l9_127=l9_126;
}
}
}
float4 l9_134=l9_127;
out.varViewSpaceDepth=-l9_134.z;
}
float4 l9_135=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_135=param_6;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_136=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_136=0;
}
else
{
l9_136=gl_InstanceIndex%2;
}
int l9_137=l9_136;
l9_135=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_137]*param_2.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_138=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_138=0;
}
else
{
l9_138=gl_InstanceIndex%2;
}
int l9_139=l9_138;
l9_135=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_139]*float4(out.varPos,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_140=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_140=0;
}
else
{
l9_140=gl_InstanceIndex%2;
}
int l9_141=l9_140;
l9_135=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_141]*float4(out.varPos,1.0);
}
}
}
}
out.varPackedTex=float4(param_2.texture0,param_2.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_142=param_2.position;
float4 l9_143=l9_142;
if (sc_RenderingSpace_tmp==1)
{
l9_143=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_142;
}
float4 l9_144=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_143;
float2 l9_145=((l9_144.xy/float2(l9_144.w))*0.5)+float2(0.5);
out.varShadowTex=l9_145;
}
float4 l9_146=l9_135;
if (sc_DepthBufferMode_tmp==1)
{
int l9_147=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_147=0;
}
else
{
l9_147=gl_InstanceIndex%2;
}
int l9_148=l9_147;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_148][2].w!=0.0)
{
float l9_149=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_146.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_146.w))*l9_149)-1.0)*l9_146.w;
}
}
float4 l9_150=l9_146;
l9_135=l9_150;
float4 l9_151=l9_135;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_152=l9_151.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_151.w);
l9_151=float4(l9_152.x,l9_152.y,l9_151.z,l9_151.w);
}
float4 l9_153=l9_151;
l9_135=l9_153;
float4 l9_154=l9_135;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_154.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_155=l9_154;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_156=dot(l9_155,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_157=l9_156;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_157;
}
}
float4 l9_158=float4(l9_154.x,-l9_154.y,(l9_154.z*0.5)+(l9_154.w*0.5),l9_154.w);
out.gl_Position=l9_158;
v=param_2;
if (PreviewInfo.Saved)
{
out.PreviewVertexColor=float4(PreviewInfo.Color.xyz,1.0);
out.PreviewVertexSaved=1.0;
}
return out;
}
} // VERTEX SHADER


namespace SNAP_FS {
struct RayHitPayload
{
float3 viewDirWS;
float3 positionWS;
float3 normalWS;
float4 tangentWS;
float4 color;
float2 uv0;
float2 uv1;
float2 uv2;
float2 uv3;
uint2 id;
};
struct SurfaceProperties
{
float3 albedo;
float opacity;
float3 normal;
float3 positionWS;
float3 viewDirWS;
float metallic;
float roughness;
float3 emissive;
float3 ao;
float3 specularAo;
float3 bakedShadows;
float3 specColor;
};
struct LightingComponents
{
float3 directDiffuse;
float3 directSpecular;
float3 indirectDiffuse;
float3 indirectSpecular;
float3 emitted;
float3 transmitted;
};
struct LightProperties
{
float3 direction;
float3 color;
float attenuation;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float2 N7_TransformedUV2;
float2 N7_TransformedUV3;
float3 BumpedNormal;
float3 ViewDirWS;
float3 PositionWS;
float3 VertexNormal_WorldSpace;
float3 VertexTangent_WorldSpace;
float3 VertexBinormal_WorldSpace;
float2 Surface_UVCoord0;
float2 Surface_UVCoord1;
float4 VertexColor;
float2 gScreenCoord;
float3 SurfacePosition_WorldSpace;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int receivesRayTracedReflections;
int isProxyMode;
int receivesRayTracedShadows;
int receivesRayTracedDiffuseIndirect;
float4 sc_RayTracedReflectionTextureSize;
float4 sc_RayTracedReflectionTextureDims;
float4 sc_RayTracedReflectionTextureView;
float4 sc_RayTracedShadowTextureSize;
float4 sc_RayTracedShadowTextureDims;
float4 sc_RayTracedShadowTextureView;
float4 sc_RayTracedDiffIndTextureSize;
float4 sc_RayTracedDiffIndTextureDims;
float4 sc_RayTracedDiffIndTextureView;
float receiver_mask;
float3 OriginNormalizationScale;
float3 OriginNormalizationScaleInv;
float3 OriginNormalizationOffset;
int receiverId;
int instance_id;
int lray_triangles_last;
int noEarlyZ;
int has_animated_pn;
int emitter_stride;
int proxy_offset_position;
int proxy_offset_normal;
int proxy_offset_tangent;
int proxy_offset_color;
int proxy_offset_texture0;
int proxy_offset_texture1;
int proxy_offset_texture2;
int proxy_offset_texture3;
int proxy_format_position;
int proxy_format_normal;
int proxy_format_tangent;
int proxy_format_color;
int proxy_format_texture0;
int proxy_format_texture1;
int proxy_format_texture2;
int proxy_format_texture3;
float4 z_rayDirectionsSize;
float4 z_rayDirectionsDims;
float4 z_rayDirectionsView;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float4 baseColor;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float3 recolorRed;
float3 recolorGreen;
float3 recolorBlue;
float4 opacityTexSize;
float4 opacityTexDims;
float4 opacityTexView;
float3x3 opacityTexTransform;
float4 opacityTexUvMinMax;
float4 opacityTexBorderColor;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float4 detailNormalTexSize;
float4 detailNormalTexDims;
float4 detailNormalTexView;
float3x3 detailNormalTexTransform;
float4 detailNormalTexUvMinMax;
float4 detailNormalTexBorderColor;
float4 emissiveTexSize;
float4 emissiveTexDims;
float4 emissiveTexView;
float3x3 emissiveTexTransform;
float4 emissiveTexUvMinMax;
float4 emissiveTexBorderColor;
float3 emissiveColor;
float emissiveIntensity;
float4 reflectionTexSize;
float4 reflectionTexDims;
float4 reflectionTexView;
float3x3 reflectionTexTransform;
float4 reflectionTexUvMinMax;
float4 reflectionTexBorderColor;
float reflectionIntensity;
float4 reflectionModulationTexSize;
float4 reflectionModulationTexDims;
float4 reflectionModulationTexView;
float3x3 reflectionModulationTexTransform;
float4 reflectionModulationTexUvMinMax;
float4 reflectionModulationTexBorderColor;
float3 rimColor;
float rimIntensity;
float rimExponent;
float4 rimColorTexSize;
float4 rimColorTexDims;
float4 rimColorTexView;
float3x3 rimColorTexTransform;
float4 rimColorTexUvMinMax;
float4 rimColorTexBorderColor;
float metallic;
float roughness;
float4 materialParamsTexSize;
float4 materialParamsTexDims;
float4 materialParamsTexView;
float3x3 materialParamsTexTransform;
float4 materialParamsTexUvMinMax;
float4 materialParamsTexBorderColor;
float specularAoIntensity;
float specularAoDarkening;
float2 uv2Scale;
float2 uv2Offset;
float2 uv3Scale;
float2 uv3Offset;
float depthRef;
};
struct layoutVertices_obj
{
float _Vertices[1];
};
struct layoutVerticesPN_obj
{
float _VerticesPN[1];
};
struct layoutIndices_obj
{
uint _Triangles[1];
};
struct sc_PointLight_t_1
{
bool falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct sc_Set0
{
const device layoutIndices_obj* layoutIndices [[id(0)]];
const device layoutVertices_obj* layoutVertices [[id(1)]];
const device layoutVerticesPN_obj* layoutVerticesPN [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> baseTex [[id(4)]];
texture2d<float> detailNormalTex [[id(5)]];
texture2d<float> emissiveTex [[id(6)]];
texture2d<float> intensityTexture [[id(7)]];
texture2d<float> materialParamsTex [[id(8)]];
texture2d<float> normalTex [[id(9)]];
texture2d<float> opacityTex [[id(10)]];
texture2d<float> reflectionModulationTex [[id(11)]];
texture2d<float> reflectionTex [[id(12)]];
texture2d<float> rimColorTex [[id(13)]];
texture2d<float> sc_EnvmapDiffuse [[id(14)]];
texture2d<float> sc_EnvmapSpecular [[id(15)]];
texture2d<float> sc_RayTracedDiffIndTexture [[id(24)]];
texture2d<float> sc_RayTracedShadowTexture [[id(26)]];
texture2d<float> sc_SSAOTexture [[id(27)]];
texture2d<float> sc_ScreenTexture [[id(28)]];
texture2d<float> sc_ShadowTexture [[id(29)]];
texture2d<uint> z_hitIdAndBarycentric [[id(31)]];
texture2d<float> z_rayDirections [[id(32)]];
sampler baseTexSmpSC [[id(33)]];
sampler detailNormalTexSmpSC [[id(34)]];
sampler emissiveTexSmpSC [[id(35)]];
sampler intensityTextureSmpSC [[id(36)]];
sampler materialParamsTexSmpSC [[id(37)]];
sampler normalTexSmpSC [[id(38)]];
sampler opacityTexSmpSC [[id(39)]];
sampler reflectionModulationTexSmpSC [[id(40)]];
sampler reflectionTexSmpSC [[id(41)]];
sampler rimColorTexSmpSC [[id(42)]];
sampler sc_EnvmapDiffuseSmpSC [[id(43)]];
sampler sc_EnvmapSpecularSmpSC [[id(44)]];
sampler sc_RayTracedDiffIndTextureSmpSC [[id(46)]];
sampler sc_RayTracedShadowTextureSmpSC [[id(48)]];
sampler sc_SSAOTextureSmpSC [[id(49)]];
sampler sc_ScreenTextureSmpSC [[id(50)]];
sampler sc_ShadowTextureSmpSC [[id(51)]];
sampler z_hitIdAndBarycentricSmp [[id(53)]];
sampler z_rayDirectionsSmpSC [[id(54)]];
constant userUniformsObj* UserUniforms [[id(55)]];
};
struct main_frag_out
{
float4 FragColor0 [[color(0)]];
float4 FragColor1 [[color(1)]];
float4 FragColor2 [[color(2)]];
float4 FragColor3 [[color(3)]];
};
struct main_frag_in
{
float3 varPos [[user(locn0)]];
float3 varNormal [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varPackedTex [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
RayHitPayload GetHitData(thread const int2& screenPos,constant userUniformsObj& UserUniforms,thread texture2d<float> z_rayDirections,thread sampler z_rayDirectionsSmpSC,thread texture2d<uint> z_hitIdAndBarycentric,thread sampler z_hitIdAndBarycentricSmp,const device layoutVertices_obj& layoutVertices,const device layoutVerticesPN_obj& layoutVerticesPN,const device layoutIndices_obj& layoutIndices)
{
int2 param=screenPos;
uint4 l9_0=z_hitIdAndBarycentric.read(uint2(param),0);
uint4 id_and_barycentric=l9_0;
RayHitPayload rhp;
rhp.id=id_and_barycentric.xy;
if (rhp.id.x!=uint(UserUniforms.instance_id))
{
return rhp;
}
float2 brc_vw=float2(as_type<half2>(id_and_barycentric.z|(id_and_barycentric.w<<uint(16))));
float3 brc=float3((1.0-brc_vw.x)-brc_vw.y,brc_vw);
float2 param_1=z_rayDirections.read(uint2(screenPos),0).xy;
float3 l9_1=float3(param_1.x,param_1.y,(1.0-abs(param_1.x))-abs(param_1.y));
float l9_2=fast::clamp(-l9_1.z,0.0,1.0);
float l9_3;
if (l9_1.x>=0.0)
{
l9_3=-l9_2;
}
else
{
l9_3=l9_2;
}
float l9_4=l9_3;
float l9_5;
if (l9_1.y>=0.0)
{
l9_5=-l9_2;
}
else
{
l9_5=l9_2;
}
float2 l9_6=l9_1.xy+float2(l9_4,l9_5);
l9_1=float3(l9_6.x,l9_6.y,l9_1.z);
float3 l9_7=normalize(l9_1);
float3 rayDir=l9_7;
rhp.viewDirWS=-rayDir;
uint param_2=rhp.id.y;
uint l9_8=min(param_2,uint(UserUniforms.lray_triangles_last));
uint l9_9=l9_8*6u;
uint l9_10=l9_9&4294967292u;
uint4 l9_11=(uint4(uint2(layoutIndices._Triangles[l9_10/4u]),uint2(layoutIndices._Triangles[(l9_10/4u)+1u]))&uint4(65535u,4294967295u,65535u,4294967295u))>>uint4(0u,16u,0u,16u);
int3 l9_12;
if (l9_9==l9_10)
{
l9_12=int3(l9_11.xyz);
}
else
{
l9_12=int3(l9_11.yzw);
}
int3 l9_13=l9_12;
int3 i=l9_13;
if (UserUniforms.has_animated_pn!=0)
{
float3 param_3=brc;
int3 param_4=i;
int param_5=0;
int3 l9_14=(param_4*int3(6))+int3(param_5);
int l9_15=l9_14.x;
float3 l9_16=float3(layoutVerticesPN._VerticesPN[l9_15],layoutVerticesPN._VerticesPN[l9_15+1],layoutVerticesPN._VerticesPN[l9_15+2]);
int l9_17=l9_14.y;
float3 l9_18=float3(layoutVerticesPN._VerticesPN[l9_17],layoutVerticesPN._VerticesPN[l9_17+1],layoutVerticesPN._VerticesPN[l9_17+2]);
int l9_19=l9_14.z;
float3 l9_20=float3(layoutVerticesPN._VerticesPN[l9_19],layoutVerticesPN._VerticesPN[l9_19+1],layoutVerticesPN._VerticesPN[l9_19+2]);
float3 l9_21=((l9_16*param_3.x)+(l9_18*param_3.y))+(l9_20*param_3.z);
rhp.positionWS=l9_21;
}
else
{
float3 param_6=brc;
int3 param_7=i;
int3 l9_22=int3((param_7.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_position,(param_7.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_position,(param_7.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_position);
float3 l9_23=float3(0.0);
if (UserUniforms.proxy_format_position==5)
{
int l9_24=l9_22.x;
float3 l9_25=float3(layoutVertices._Vertices[l9_24],layoutVertices._Vertices[l9_24+1],layoutVertices._Vertices[l9_24+2]);
int l9_26=l9_22.y;
float3 l9_27=float3(layoutVertices._Vertices[l9_26],layoutVertices._Vertices[l9_26+1],layoutVertices._Vertices[l9_26+2]);
int l9_28=l9_22.z;
float3 l9_29=float3(layoutVertices._Vertices[l9_28],layoutVertices._Vertices[l9_28+1],layoutVertices._Vertices[l9_28+2]);
l9_23=((l9_25*param_6.x)+(l9_27*param_6.y))+(l9_29*param_6.z);
}
else
{
if (UserUniforms.proxy_format_position==6)
{
int l9_30=l9_22.x;
float3 l9_31=float3(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_30]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_30+1]))).x);
int l9_32=l9_22.y;
float3 l9_33=float3(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_32]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_32+1]))).x);
int l9_34=l9_22.z;
float3 l9_35=float3(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_34]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_34+1]))).x);
l9_23=((l9_31*param_6.x)+(l9_33*param_6.y))+(l9_35*param_6.z);
}
else
{
l9_23=float3(1.0,0.0,0.0);
}
}
float3 l9_36=l9_23;
float3 positionOS=l9_36;
rhp.positionWS=(UserUniforms.sc_ModelMatrix*float4(positionOS,1.0)).xyz;
}
if (UserUniforms.proxy_offset_normal>0)
{
if (UserUniforms.has_animated_pn!=0)
{
float3 param_8=brc;
int3 param_9=i;
int param_10=3;
int3 l9_37=(param_9*int3(6))+int3(param_10);
int l9_38=l9_37.x;
float3 l9_39=float3(layoutVerticesPN._VerticesPN[l9_38],layoutVerticesPN._VerticesPN[l9_38+1],layoutVerticesPN._VerticesPN[l9_38+2]);
int l9_40=l9_37.y;
float3 l9_41=float3(layoutVerticesPN._VerticesPN[l9_40],layoutVerticesPN._VerticesPN[l9_40+1],layoutVerticesPN._VerticesPN[l9_40+2]);
int l9_42=l9_37.z;
float3 l9_43=float3(layoutVerticesPN._VerticesPN[l9_42],layoutVerticesPN._VerticesPN[l9_42+1],layoutVerticesPN._VerticesPN[l9_42+2]);
float3 l9_44=((l9_39*param_8.x)+(l9_41*param_8.y))+(l9_43*param_8.z);
rhp.normalWS=l9_44;
}
else
{
float3 param_11=brc;
int3 param_12=i;
int3 l9_45=int3((param_12.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_normal,(param_12.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_normal,(param_12.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_normal);
float3 l9_46=float3(0.0);
if (UserUniforms.proxy_format_normal==5)
{
int l9_47=l9_45.x;
float3 l9_48=float3(layoutVertices._Vertices[l9_47],layoutVertices._Vertices[l9_47+1],layoutVertices._Vertices[l9_47+2]);
int l9_49=l9_45.y;
float3 l9_50=float3(layoutVertices._Vertices[l9_49],layoutVertices._Vertices[l9_49+1],layoutVertices._Vertices[l9_49+2]);
int l9_51=l9_45.z;
float3 l9_52=float3(layoutVertices._Vertices[l9_51],layoutVertices._Vertices[l9_51+1],layoutVertices._Vertices[l9_51+2]);
l9_46=((l9_48*param_11.x)+(l9_50*param_11.y))+(l9_52*param_11.z);
}
else
{
if (UserUniforms.proxy_format_normal==6)
{
int l9_53=l9_45.x;
float3 l9_54=float3(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_53]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_53+1]))).x);
int l9_55=l9_45.y;
float3 l9_56=float3(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_55]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_55+1]))).x);
int l9_57=l9_45.z;
float3 l9_58=float3(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_57]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_57+1]))).x);
l9_46=((l9_54*param_11.x)+(l9_56*param_11.y))+(l9_58*param_11.z);
}
else
{
l9_46=float3(1.0,0.0,0.0);
}
}
float3 l9_59=l9_46;
float3 normalOS=l9_59;
rhp.normalWS=normalize(UserUniforms.sc_NormalMatrix*normalOS);
}
}
else
{
rhp.normalWS=float3(1.0,0.0,0.0);
}
bool l9_60=!(UserUniforms.has_animated_pn!=0);
bool l9_61;
if (l9_60)
{
l9_61=UserUniforms.proxy_offset_tangent>0;
}
else
{
l9_61=l9_60;
}
if (l9_61)
{
float3 param_13=brc;
int3 param_14=i;
int3 l9_62=int3((param_14.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_tangent,(param_14.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_tangent,(param_14.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_tangent);
float4 l9_63=float4(0.0);
if (UserUniforms.proxy_format_tangent==5)
{
int l9_64=l9_62.x;
float4 l9_65=float4(layoutVertices._Vertices[l9_64],layoutVertices._Vertices[l9_64+1],layoutVertices._Vertices[l9_64+2],layoutVertices._Vertices[l9_64+3]);
int l9_66=l9_62.y;
float4 l9_67=float4(layoutVertices._Vertices[l9_66],layoutVertices._Vertices[l9_66+1],layoutVertices._Vertices[l9_66+2],layoutVertices._Vertices[l9_66+3]);
int l9_68=l9_62.z;
float4 l9_69=float4(layoutVertices._Vertices[l9_68],layoutVertices._Vertices[l9_68+1],layoutVertices._Vertices[l9_68+2],layoutVertices._Vertices[l9_68+3]);
l9_63=((l9_65*param_13.x)+(l9_67*param_13.y))+(l9_69*param_13.z);
}
else
{
if (UserUniforms.proxy_format_tangent==6)
{
int l9_70=l9_62.x;
float4 l9_71=float4(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_70]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_70+1]))));
int l9_72=l9_62.y;
float4 l9_73=float4(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_72]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_72+1]))));
int l9_74=l9_62.z;
float4 l9_75=float4(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_74]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_74+1]))));
l9_63=((l9_71*param_13.x)+(l9_73*param_13.y))+(l9_75*param_13.z);
}
else
{
if (UserUniforms.proxy_format_tangent==2)
{
int l9_76=l9_62.x;
uint l9_77=as_type<uint>(layoutVertices._Vertices[l9_76]);
uint l9_78=l9_77&255u;
uint l9_79=(l9_77>>uint(8))&255u;
uint l9_80=(l9_77>>uint(16))&255u;
uint l9_81=(l9_77>>uint(24))&255u;
float4 l9_82=float4(float(l9_78),float(l9_79),float(l9_80),float(l9_81))/float4(255.0);
int l9_83=l9_62.y;
uint l9_84=as_type<uint>(layoutVertices._Vertices[l9_83]);
uint l9_85=l9_84&255u;
uint l9_86=(l9_84>>uint(8))&255u;
uint l9_87=(l9_84>>uint(16))&255u;
uint l9_88=(l9_84>>uint(24))&255u;
float4 l9_89=float4(float(l9_85),float(l9_86),float(l9_87),float(l9_88))/float4(255.0);
int l9_90=l9_62.z;
uint l9_91=as_type<uint>(layoutVertices._Vertices[l9_90]);
uint l9_92=l9_91&255u;
uint l9_93=(l9_91>>uint(8))&255u;
uint l9_94=(l9_91>>uint(16))&255u;
uint l9_95=(l9_91>>uint(24))&255u;
float4 l9_96=float4(float(l9_92),float(l9_93),float(l9_94),float(l9_95))/float4(255.0);
l9_63=((l9_82*param_13.x)+(l9_89*param_13.y))+(l9_96*param_13.z);
}
else
{
l9_63=float4(1.0,0.0,0.0,0.0);
}
}
}
float4 l9_97=l9_63;
float4 tangentOS=l9_97;
float3 tangentWS=normalize(UserUniforms.sc_NormalMatrix*tangentOS.xyz);
rhp.tangentWS=float4(tangentWS,tangentOS.w);
}
else
{
rhp.tangentWS=float4(1.0,0.0,0.0,1.0);
}
if (UserUniforms.proxy_format_color>0)
{
float3 param_15=brc;
int3 param_16=i;
int3 l9_98=int3((param_16.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_color,(param_16.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_color,(param_16.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_color);
float4 l9_99=float4(0.0);
if (UserUniforms.proxy_format_color==5)
{
int l9_100=l9_98.x;
float4 l9_101=float4(layoutVertices._Vertices[l9_100],layoutVertices._Vertices[l9_100+1],layoutVertices._Vertices[l9_100+2],layoutVertices._Vertices[l9_100+3]);
int l9_102=l9_98.y;
float4 l9_103=float4(layoutVertices._Vertices[l9_102],layoutVertices._Vertices[l9_102+1],layoutVertices._Vertices[l9_102+2],layoutVertices._Vertices[l9_102+3]);
int l9_104=l9_98.z;
float4 l9_105=float4(layoutVertices._Vertices[l9_104],layoutVertices._Vertices[l9_104+1],layoutVertices._Vertices[l9_104+2],layoutVertices._Vertices[l9_104+3]);
l9_99=((l9_101*param_15.x)+(l9_103*param_15.y))+(l9_105*param_15.z);
}
else
{
if (UserUniforms.proxy_format_color==6)
{
int l9_106=l9_98.x;
float4 l9_107=float4(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_106]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_106+1]))));
int l9_108=l9_98.y;
float4 l9_109=float4(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_108]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_108+1]))));
int l9_110=l9_98.z;
float4 l9_111=float4(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_110]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_110+1]))));
l9_99=((l9_107*param_15.x)+(l9_109*param_15.y))+(l9_111*param_15.z);
}
else
{
if (UserUniforms.proxy_format_color==2)
{
int l9_112=l9_98.x;
uint l9_113=as_type<uint>(layoutVertices._Vertices[l9_112]);
uint l9_114=l9_113&255u;
uint l9_115=(l9_113>>uint(8))&255u;
uint l9_116=(l9_113>>uint(16))&255u;
uint l9_117=(l9_113>>uint(24))&255u;
float4 l9_118=float4(float(l9_114),float(l9_115),float(l9_116),float(l9_117))/float4(255.0);
int l9_119=l9_98.y;
uint l9_120=as_type<uint>(layoutVertices._Vertices[l9_119]);
uint l9_121=l9_120&255u;
uint l9_122=(l9_120>>uint(8))&255u;
uint l9_123=(l9_120>>uint(16))&255u;
uint l9_124=(l9_120>>uint(24))&255u;
float4 l9_125=float4(float(l9_121),float(l9_122),float(l9_123),float(l9_124))/float4(255.0);
int l9_126=l9_98.z;
uint l9_127=as_type<uint>(layoutVertices._Vertices[l9_126]);
uint l9_128=l9_127&255u;
uint l9_129=(l9_127>>uint(8))&255u;
uint l9_130=(l9_127>>uint(16))&255u;
uint l9_131=(l9_127>>uint(24))&255u;
float4 l9_132=float4(float(l9_128),float(l9_129),float(l9_130),float(l9_131))/float4(255.0);
l9_99=((l9_118*param_15.x)+(l9_125*param_15.y))+(l9_132*param_15.z);
}
else
{
l9_99=float4(1.0,0.0,0.0,0.0);
}
}
}
float4 l9_133=l9_99;
rhp.color=l9_133;
}
float2 dummy_red_black=float2(dot(brc,float3(int3(1)-(i%int3(2)))),0.0);
if (UserUniforms.proxy_format_texture0>0)
{
float3 param_17=brc;
int3 param_18=i;
int3 l9_134=int3((param_18.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture0,(param_18.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture0,(param_18.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture0);
float2 l9_135=float2(0.0);
if (UserUniforms.proxy_format_texture0==5)
{
int l9_136=l9_134.x;
float2 l9_137=float2(layoutVertices._Vertices[l9_136],layoutVertices._Vertices[l9_136+1]);
int l9_138=l9_134.y;
float2 l9_139=float2(layoutVertices._Vertices[l9_138],layoutVertices._Vertices[l9_138+1]);
int l9_140=l9_134.z;
float2 l9_141=float2(layoutVertices._Vertices[l9_140],layoutVertices._Vertices[l9_140+1]);
l9_135=((l9_137*param_17.x)+(l9_139*param_17.y))+(l9_141*param_17.z);
}
else
{
if (UserUniforms.proxy_format_texture0==6)
{
int l9_142=l9_134.x;
float2 l9_143=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_142])));
int l9_144=l9_134.y;
float2 l9_145=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_144])));
int l9_146=l9_134.z;
float2 l9_147=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_146])));
l9_135=((l9_143*param_17.x)+(l9_145*param_17.y))+(l9_147*param_17.z);
}
else
{
l9_135=float2(1.0,0.0);
}
}
float2 l9_148=l9_135;
rhp.uv0=l9_148;
}
else
{
rhp.uv0=dummy_red_black;
}
if (UserUniforms.proxy_format_texture1>0)
{
float3 param_19=brc;
int3 param_20=i;
int3 l9_149=int3((param_20.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture1,(param_20.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture1,(param_20.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture1);
float2 l9_150=float2(0.0);
if (UserUniforms.proxy_format_texture1==5)
{
int l9_151=l9_149.x;
float2 l9_152=float2(layoutVertices._Vertices[l9_151],layoutVertices._Vertices[l9_151+1]);
int l9_153=l9_149.y;
float2 l9_154=float2(layoutVertices._Vertices[l9_153],layoutVertices._Vertices[l9_153+1]);
int l9_155=l9_149.z;
float2 l9_156=float2(layoutVertices._Vertices[l9_155],layoutVertices._Vertices[l9_155+1]);
l9_150=((l9_152*param_19.x)+(l9_154*param_19.y))+(l9_156*param_19.z);
}
else
{
if (UserUniforms.proxy_format_texture1==6)
{
int l9_157=l9_149.x;
float2 l9_158=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_157])));
int l9_159=l9_149.y;
float2 l9_160=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_159])));
int l9_161=l9_149.z;
float2 l9_162=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_161])));
l9_150=((l9_158*param_19.x)+(l9_160*param_19.y))+(l9_162*param_19.z);
}
else
{
l9_150=float2(1.0,0.0);
}
}
float2 l9_163=l9_150;
rhp.uv1=l9_163;
}
else
{
rhp.uv1=dummy_red_black;
}
if (UserUniforms.proxy_format_texture2>0)
{
float3 param_21=brc;
int3 param_22=i;
int3 l9_164=int3((param_22.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture2,(param_22.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture2,(param_22.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture2);
float2 l9_165=float2(0.0);
if (UserUniforms.proxy_format_texture2==5)
{
int l9_166=l9_164.x;
float2 l9_167=float2(layoutVertices._Vertices[l9_166],layoutVertices._Vertices[l9_166+1]);
int l9_168=l9_164.y;
float2 l9_169=float2(layoutVertices._Vertices[l9_168],layoutVertices._Vertices[l9_168+1]);
int l9_170=l9_164.z;
float2 l9_171=float2(layoutVertices._Vertices[l9_170],layoutVertices._Vertices[l9_170+1]);
l9_165=((l9_167*param_21.x)+(l9_169*param_21.y))+(l9_171*param_21.z);
}
else
{
if (UserUniforms.proxy_format_texture2==6)
{
int l9_172=l9_164.x;
float2 l9_173=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_172])));
int l9_174=l9_164.y;
float2 l9_175=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_174])));
int l9_176=l9_164.z;
float2 l9_177=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_176])));
l9_165=((l9_173*param_21.x)+(l9_175*param_21.y))+(l9_177*param_21.z);
}
else
{
l9_165=float2(1.0,0.0);
}
}
float2 l9_178=l9_165;
rhp.uv2=l9_178;
}
else
{
rhp.uv2=dummy_red_black;
}
if (UserUniforms.proxy_format_texture3>0)
{
float3 param_23=brc;
int3 param_24=i;
int3 l9_179=int3((param_24.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture3,(param_24.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture3,(param_24.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture3);
float2 l9_180=float2(0.0);
if (UserUniforms.proxy_format_texture3==5)
{
int l9_181=l9_179.x;
float2 l9_182=float2(layoutVertices._Vertices[l9_181],layoutVertices._Vertices[l9_181+1]);
int l9_183=l9_179.y;
float2 l9_184=float2(layoutVertices._Vertices[l9_183],layoutVertices._Vertices[l9_183+1]);
int l9_185=l9_179.z;
float2 l9_186=float2(layoutVertices._Vertices[l9_185],layoutVertices._Vertices[l9_185+1]);
l9_180=((l9_182*param_23.x)+(l9_184*param_23.y))+(l9_186*param_23.z);
}
else
{
if (UserUniforms.proxy_format_texture3==6)
{
int l9_187=l9_179.x;
float2 l9_188=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_187])));
int l9_189=l9_179.y;
float2 l9_190=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_189])));
int l9_191=l9_179.z;
float2 l9_192=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_191])));
l9_180=((l9_188*param_23.x)+(l9_190*param_23.y))+(l9_192*param_23.z);
}
else
{
l9_180=float2(1.0,0.0);
}
}
float2 l9_193=l9_180;
rhp.uv3=l9_193;
}
else
{
rhp.uv3=dummy_red_black;
}
return rhp;
}
float3 evaluateSSAO(thread const float3& positionWS,thread int& varStereoViewID,thread texture2d<float> sc_SSAOTexture,thread sampler sc_SSAOTextureSmpSC,constant userUniformsObj& UserUniforms)
{
if ((int(sc_SSAOEnabled_tmp)!=0))
{
int l9_0=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_0=0;
}
else
{
l9_0=varStereoViewID;
}
int l9_1=l9_0;
float4 clipSpaceCoord=UserUniforms.sc_ViewProjectionMatrixArray[l9_1]*float4(positionWS,1.0);
float3 l9_2=clipSpaceCoord.xyz/float3(clipSpaceCoord.w);
clipSpaceCoord=float4(l9_2.x,l9_2.y,l9_2.z,clipSpaceCoord.w);
float4 shadowSample=sc_SSAOTexture.sample(sc_SSAOTextureSmpSC,((clipSpaceCoord.xy*0.5)+float2(0.5)));
return float3(shadowSample.x);
}
else
{
return float3(1.0);
}
}
float3 calculateDirectSpecular(thread const SurfaceProperties& surfaceProperties,thread const float3& L,thread const float3& V,constant userUniformsObj& UserUniforms)
{
float r=fast::max(surfaceProperties.roughness,0.029999999);
float3 F0=surfaceProperties.specColor;
float3 N=surfaceProperties.normal;
float3 H=normalize(L+V);
float param=dot(N,L);
float l9_0=fast::clamp(param,0.0,1.0);
float NdotL=l9_0;
float param_1=dot(N,V);
float l9_1=fast::clamp(param_1,0.0,1.0);
float NdotV=l9_1;
float param_2=dot(N,H);
float l9_2=fast::clamp(param_2,0.0,1.0);
float NdotH=l9_2;
float param_3=dot(V,H);
float l9_3=fast::clamp(param_3,0.0,1.0);
float VdotH=l9_3;
if (SC_DEVICE_CLASS_tmp>=2)
{
float param_4=NdotH;
float param_5=r;
float l9_4=param_5*param_5;
float l9_5=l9_4*l9_4;
float l9_6=param_4*param_4;
float l9_7=(l9_6*(l9_5-1.0))+1.0;
float l9_8=l9_7*l9_7;
float l9_9=9.9999999e-09;
bool l9_10=UserUniforms.isProxyMode!=0;
if (l9_10)
{
l9_9=1e-07;
}
float l9_11=l9_5/(l9_8+l9_9);
float param_6=NdotL;
float param_7=NdotV;
float param_8=r;
float l9_12=param_6;
float l9_13=param_8;
float l9_14=l9_13+1.0;
l9_14=(l9_14*l9_14)*0.125;
float l9_15=(l9_12*(1.0-l9_14))+l9_14;
float l9_16=param_7;
float l9_17=param_8;
float l9_18=l9_17+1.0;
l9_18=(l9_18*l9_18)*0.125;
float l9_19=(l9_16*(1.0-l9_18))+l9_18;
float l9_20=1.0/(l9_15*l9_19);
float param_9=VdotH;
float3 param_10=F0;
float l9_21=param_9;
float3 l9_22=param_10;
float3 l9_23=float3(1.0);
float l9_24=1.0-l9_21;
float l9_25=l9_24*l9_24;
float l9_26=(l9_25*l9_25)*l9_24;
float3 l9_27=l9_22+((l9_23-l9_22)*l9_26);
float3 l9_28=l9_27;
return l9_28*(((l9_11*l9_20)*0.25)*NdotL);
}
else
{
float specPower=exp2(11.0-(10.0*r));
float param_11=VdotH;
float3 param_12=F0;
float l9_29=param_11;
float3 l9_30=param_12;
float3 l9_31=float3(1.0);
float l9_32=1.0-l9_29;
float l9_33=l9_32*l9_32;
float l9_34=(l9_33*l9_33)*l9_32;
float3 l9_35=l9_30+((l9_31-l9_30)*l9_34);
float3 l9_36=l9_35;
return ((l9_36*((specPower*0.125)+0.25))*pow(NdotH,specPower))*NdotL;
}
}
float computeDistanceAttenuation(thread const float& distanceToLight,thread const float& falloffEndDistance)
{
float distanceToLightSquared=distanceToLight*distanceToLight;
if (falloffEndDistance==0.0)
{
return 1.0/distanceToLightSquared;
}
float distanceToLightToTheFourth=distanceToLightSquared*distanceToLightSquared;
float falloffEndDistanceToTheFourth=pow(falloffEndDistance,4.0);
return fast::max(fast::min(1.0-(distanceToLightToTheFourth/falloffEndDistanceToTheFourth),1.0),0.0)/distanceToLightSquared;
}
float2 calcSeamlessPanoramicUvsForSampling(thread const float2& uv,thread const float2& topMipRes,thread const float& lod)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 thisMipRes=fast::max(float2(1.0),topMipRes/float2(exp2(lod)));
return ((uv*(thisMipRes-float2(1.0)))/thisMipRes)+(float2(0.5)/thisMipRes);
}
else
{
return uv;
}
}
float4 sampleRayTracedIndirectDiffuse(thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> sc_RayTracedDiffIndTexture,thread sampler sc_RayTracedDiffIndTextureSmpSC,thread float4& gl_FragCoord)
{
bool l9_0=UserUniforms.receivesRayTracedDiffuseIndirect!=0;
if (l9_0)
{
float4 l9_1=gl_FragCoord;
float2 l9_2=l9_1.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 p=l9_2;
float2 param=p;
float2 l9_3=param;
float l9_4=0.0;
int l9_5;
if ((int(sc_RayTracedDiffIndTextureHasSwappedViews_tmp)!=0))
{
int l9_6=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6=0;
}
else
{
l9_6=varStereoViewID;
}
int l9_7=l9_6;
l9_5=1-l9_7;
}
else
{
int l9_8=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8=0;
}
else
{
l9_8=varStereoViewID;
}
int l9_9=l9_8;
l9_5=l9_9;
}
int l9_10=l9_5;
float2 l9_11=l9_3;
int l9_12=sc_RayTracedDiffIndTextureLayout_tmp;
int l9_13=l9_10;
float l9_14=l9_4;
float2 l9_15=l9_11;
int l9_16=l9_12;
int l9_17=l9_13;
float3 l9_18=float3(0.0);
if (l9_16==0)
{
l9_18=float3(l9_15,0.0);
}
else
{
if (l9_16==1)
{
l9_18=float3(l9_15.x,(l9_15.y*0.5)+(0.5-(float(l9_17)*0.5)),0.0);
}
else
{
l9_18=float3(l9_15,float(l9_17));
}
}
float3 l9_19=l9_18;
float3 l9_20=l9_19;
float4 l9_21=sc_RayTracedDiffIndTexture.sample(sc_RayTracedDiffIndTextureSmpSC,l9_20.xy,bias(l9_14));
float4 l9_22=l9_21;
float4 l9_23=l9_22;
return l9_23;
}
return float4(0.0);
}
float srgbToLinear(thread const float& x)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
return pow(x,2.2);
}
else
{
return x*x;
}
}
float linearToSrgb(thread const float& x)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
return pow(x,0.45454547);
}
else
{
return sqrt(x);
}
}
float4 ngsCalculateLighting(thread const float3& albedo,thread const float& opacity,thread const float3& normal,thread const float3& position,thread const float3& viewDir,thread const float3& emissive,thread const float& metallic,thread const float& roughness,thread const float3& ao,thread const float3& specularAO,thread int& varStereoViewID,thread texture2d<float> sc_EnvmapDiffuse,thread sampler sc_EnvmapDiffuseSmpSC,thread texture2d<float> sc_EnvmapSpecular,thread sampler sc_EnvmapSpecularSmpSC,thread texture2d<float> sc_ScreenTexture,thread sampler sc_ScreenTextureSmpSC,thread texture2d<float> sc_ShadowTexture,thread sampler sc_ShadowTextureSmpSC,thread texture2d<float> sc_SSAOTexture,thread sampler sc_SSAOTextureSmpSC,constant userUniformsObj& UserUniforms,thread texture2d<float> sc_RayTracedShadowTexture,thread sampler sc_RayTracedShadowTextureSmpSC,thread texture2d<float> sc_RayTracedDiffIndTexture,thread sampler sc_RayTracedDiffIndTextureSmpSC,thread float4& gl_FragCoord,thread float2& varShadowTex,thread float4& FragColor0)
{
SurfaceProperties l9_0;
l9_0.albedo=float3(0.0);
l9_0.opacity=1.0;
l9_0.normal=float3(0.0);
l9_0.positionWS=float3(0.0);
l9_0.viewDirWS=float3(0.0);
l9_0.metallic=0.0;
l9_0.roughness=0.0;
l9_0.emissive=float3(0.0);
l9_0.ao=float3(1.0);
l9_0.specularAo=float3(1.0);
l9_0.bakedShadows=float3(1.0);
SurfaceProperties l9_1=l9_0;
SurfaceProperties surfaceProperties=l9_1;
surfaceProperties.opacity=opacity;
float3 param=albedo;
float3 l9_2;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_2=float3(pow(param.x,2.2),pow(param.y,2.2),pow(param.z,2.2));
}
else
{
l9_2=param*param;
}
float3 l9_3=l9_2;
surfaceProperties.albedo=l9_3;
surfaceProperties.normal=normalize(normal);
surfaceProperties.positionWS=position;
surfaceProperties.viewDirWS=viewDir;
float3 param_1=emissive;
float3 l9_4;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_4=float3(pow(param_1.x,2.2),pow(param_1.y,2.2),pow(param_1.z,2.2));
}
else
{
l9_4=param_1*param_1;
}
float3 l9_5=l9_4;
surfaceProperties.emissive=l9_5;
surfaceProperties.metallic=metallic;
surfaceProperties.roughness=roughness;
surfaceProperties.ao=ao;
surfaceProperties.specularAo=specularAO;
if ((int(sc_SSAOEnabled_tmp)!=0))
{
float3 param_2=surfaceProperties.positionWS;
surfaceProperties.ao=evaluateSSAO(param_2,varStereoViewID,sc_SSAOTexture,sc_SSAOTextureSmpSC,UserUniforms);
}
SurfaceProperties param_3=surfaceProperties;
SurfaceProperties l9_6=param_3;
float3 l9_7=mix(float3(0.039999999),l9_6.albedo*l9_6.metallic,float3(l9_6.metallic));
float3 l9_8=mix(l9_6.albedo*(1.0-l9_6.metallic),float3(0.0),float3(l9_6.metallic));
param_3.albedo=l9_8;
param_3.specColor=l9_7;
SurfaceProperties l9_9=param_3;
surfaceProperties=l9_9;
SurfaceProperties param_4=surfaceProperties;
LightingComponents l9_10;
l9_10.directDiffuse=float3(0.0);
l9_10.directSpecular=float3(0.0);
l9_10.indirectDiffuse=float3(1.0);
l9_10.indirectSpecular=float3(0.0);
l9_10.emitted=float3(0.0);
l9_10.transmitted=float3(0.0);
LightingComponents l9_11=l9_10;
LightingComponents l9_12=l9_11;
float3 l9_13=param_4.viewDirWS;
int l9_14=0;
float4 l9_15=float4(param_4.bakedShadows,1.0);
if (sc_DirectionalLightsCount_tmp>0)
{
sc_DirectionalLight_t l9_16;
LightProperties l9_17;
int l9_18=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_18<sc_DirectionalLightsCount_tmp)
{
l9_16.direction=UserUniforms.sc_DirectionalLights[l9_18].direction;
l9_16.color=UserUniforms.sc_DirectionalLights[l9_18].color;
l9_17.direction=l9_16.direction;
l9_17.color=l9_16.color.xyz;
l9_17.attenuation=l9_16.color.w;
l9_17.attenuation*=l9_15[(l9_14<3) ? l9_14 : 3];
l9_14++;
LightingComponents l9_19=l9_12;
LightProperties l9_20=l9_17;
SurfaceProperties l9_21=param_4;
float3 l9_22=l9_13;
SurfaceProperties l9_23=l9_21;
float3 l9_24=l9_20.direction;
float l9_25=dot(l9_23.normal,l9_24);
float l9_26=fast::clamp(l9_25,0.0,1.0);
float3 l9_27=float3(l9_26);
l9_19.directDiffuse+=((l9_27*l9_20.color)*l9_20.attenuation);
SurfaceProperties l9_28=l9_21;
float3 l9_29=l9_20.direction;
float3 l9_30=l9_22;
l9_19.directSpecular+=((calculateDirectSpecular(l9_28,l9_29,l9_30,UserUniforms)*l9_20.color)*l9_20.attenuation);
LightingComponents l9_31=l9_19;
l9_12=l9_31;
l9_18++;
continue;
}
else
{
break;
}
}
}
if (sc_PointLightsCount_tmp>0)
{
sc_PointLight_t_1 l9_32;
LightProperties l9_33;
int l9_34=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_34<sc_PointLightsCount_tmp)
{
l9_32.falloffEnabled=UserUniforms.sc_PointLights[l9_34].falloffEnabled!=0;
l9_32.falloffEndDistance=UserUniforms.sc_PointLights[l9_34].falloffEndDistance;
l9_32.negRcpFalloffEndDistance4=UserUniforms.sc_PointLights[l9_34].negRcpFalloffEndDistance4;
l9_32.angleScale=UserUniforms.sc_PointLights[l9_34].angleScale;
l9_32.angleOffset=UserUniforms.sc_PointLights[l9_34].angleOffset;
l9_32.direction=UserUniforms.sc_PointLights[l9_34].direction;
l9_32.position=UserUniforms.sc_PointLights[l9_34].position;
l9_32.color=UserUniforms.sc_PointLights[l9_34].color;
float3 l9_35=l9_32.position-param_4.positionWS;
l9_33.direction=normalize(l9_35);
l9_33.color=l9_32.color.xyz;
l9_33.attenuation=l9_32.color.w;
l9_33.attenuation*=l9_15[(l9_14<3) ? l9_14 : 3];
float3 l9_36=l9_33.direction;
float3 l9_37=l9_32.direction;
float l9_38=l9_32.angleScale;
float l9_39=l9_32.angleOffset;
float l9_40=dot(l9_36,l9_37);
float l9_41=fast::clamp((l9_40*l9_38)+l9_39,0.0,1.0);
float l9_42=l9_41*l9_41;
l9_33.attenuation*=l9_42;
if (l9_32.falloffEnabled)
{
float l9_43=length(l9_35);
float l9_44=l9_32.falloffEndDistance;
l9_33.attenuation*=computeDistanceAttenuation(l9_43,l9_44);
}
l9_14++;
LightingComponents l9_45=l9_12;
LightProperties l9_46=l9_33;
SurfaceProperties l9_47=param_4;
float3 l9_48=l9_13;
SurfaceProperties l9_49=l9_47;
float3 l9_50=l9_46.direction;
float l9_51=dot(l9_49.normal,l9_50);
float l9_52=fast::clamp(l9_51,0.0,1.0);
float3 l9_53=float3(l9_52);
l9_45.directDiffuse+=((l9_53*l9_46.color)*l9_46.attenuation);
SurfaceProperties l9_54=l9_47;
float3 l9_55=l9_46.direction;
float3 l9_56=l9_48;
l9_45.directSpecular+=((calculateDirectSpecular(l9_54,l9_55,l9_56,UserUniforms)*l9_46.color)*l9_46.attenuation);
LightingComponents l9_57=l9_45;
l9_12=l9_57;
l9_34++;
continue;
}
else
{
break;
}
}
}
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float3 l9_58=float3(0.0);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float2 l9_59=abs(varShadowTex-float2(0.5));
float l9_60=fast::max(l9_59.x,l9_59.y);
float l9_61=step(l9_60,0.5);
float4 l9_62=sc_ShadowTexture.sample(sc_ShadowTextureSmpSC,varShadowTex)*l9_61;
float3 l9_63=mix(UserUniforms.sc_ShadowColor.xyz,UserUniforms.sc_ShadowColor.xyz*l9_62.xyz,float3(UserUniforms.sc_ShadowColor.w));
float l9_64=l9_62.w*UserUniforms.sc_ShadowDensity;
l9_58=mix(float3(1.0),l9_63,float3(l9_64));
}
else
{
l9_58=float3(1.0);
}
float3 l9_65=l9_58;
float3 l9_66=l9_65;
l9_12.directDiffuse*=l9_66;
l9_12.directSpecular*=l9_66;
}
bool l9_67=UserUniforms.receivesRayTracedShadows!=0;
if (l9_67)
{
float4 l9_68=gl_FragCoord;
float2 l9_69=l9_68.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 l9_70=l9_69;
float2 l9_71=l9_70;
float2 l9_72=l9_71;
float l9_73=0.0;
int l9_74;
if ((int(sc_RayTracedShadowTextureHasSwappedViews_tmp)!=0))
{
int l9_75=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_75=0;
}
else
{
l9_75=varStereoViewID;
}
int l9_76=l9_75;
l9_74=1-l9_76;
}
else
{
int l9_77=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_77=0;
}
else
{
l9_77=varStereoViewID;
}
int l9_78=l9_77;
l9_74=l9_78;
}
int l9_79=l9_74;
float2 l9_80=l9_72;
int l9_81=sc_RayTracedShadowTextureLayout_tmp;
int l9_82=l9_79;
float l9_83=l9_73;
float2 l9_84=l9_80;
int l9_85=l9_81;
int l9_86=l9_82;
float3 l9_87=float3(0.0);
if (l9_85==0)
{
l9_87=float3(l9_84,0.0);
}
else
{
if (l9_85==1)
{
l9_87=float3(l9_84.x,(l9_84.y*0.5)+(0.5-(float(l9_86)*0.5)),0.0);
}
else
{
l9_87=float3(l9_84,float(l9_86));
}
}
float3 l9_88=l9_87;
float3 l9_89=l9_88;
float4 l9_90=sc_RayTracedShadowTexture.sample(sc_RayTracedShadowTextureSmpSC,l9_89.xy,bias(l9_83));
float4 l9_91=l9_90;
float4 l9_92=l9_91;
float l9_93=l9_92.x;
float3 l9_94=float3(l9_93);
float3 l9_95=l9_94;
l9_12.directDiffuse*=(float3(1.0)-l9_95);
l9_12.directSpecular*=(float3(1.0)-l9_95);
}
l9_12.directSpecular=float3(0.0);
SurfaceProperties l9_96=param_4;
float3 l9_97=l9_96.normal;
float3 l9_98=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
float3 l9_99=l9_97;
float3 l9_100=l9_99;
float l9_101=UserUniforms.sc_EnvmapRotation.y;
float2 l9_102=float2(0.0);
float l9_103=l9_100.x;
float l9_104=-l9_100.z;
float l9_105=(l9_103<0.0) ? (-1.0) : 1.0;
float l9_106=l9_105*acos(fast::clamp(l9_104/length(float2(l9_103,l9_104)),-1.0,1.0));
l9_102.x=l9_106-1.5707964;
l9_102.y=acos(l9_100.y);
l9_102/=float2(6.2831855,3.1415927);
l9_102.y=1.0-l9_102.y;
l9_102.x+=(l9_101/360.0);
l9_102.x=fract((l9_102.x+floor(l9_102.x))+1.0);
float2 l9_107=l9_102;
float2 l9_108=l9_107;
float4 l9_109=float4(0.0);
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 l9_110=l9_108;
float2 l9_111=UserUniforms.sc_EnvmapSpecularSize.xy;
float l9_112=5.0;
l9_108=calcSeamlessPanoramicUvsForSampling(l9_110,l9_111,l9_112);
}
float2 l9_113=l9_108;
float l9_114=13.0;
int l9_115;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_116=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_116=0;
}
else
{
l9_116=varStereoViewID;
}
int l9_117=l9_116;
l9_115=1-l9_117;
}
else
{
int l9_118=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_118=0;
}
else
{
l9_118=varStereoViewID;
}
int l9_119=l9_118;
l9_115=l9_119;
}
int l9_120=l9_115;
float2 l9_121=l9_113;
int l9_122=sc_EnvmapSpecularLayout_tmp;
int l9_123=l9_120;
float l9_124=l9_114;
float2 l9_125=l9_121;
int l9_126=l9_122;
int l9_127=l9_123;
float3 l9_128=float3(0.0);
if (l9_126==0)
{
l9_128=float3(l9_125,0.0);
}
else
{
if (l9_126==1)
{
l9_128=float3(l9_125.x,(l9_125.y*0.5)+(0.5-(float(l9_127)*0.5)),0.0);
}
else
{
l9_128=float3(l9_125,float(l9_127));
}
}
float3 l9_129=l9_128;
float3 l9_130=l9_129;
float4 l9_131=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_130.xy,bias(l9_124));
float4 l9_132=l9_131;
l9_109=l9_132;
}
else
{
if ((int(sc_HasDiffuseEnvmap_tmp)!=0))
{
float2 l9_133=l9_108;
float2 l9_134=UserUniforms.sc_EnvmapDiffuseSize.xy;
float l9_135=0.0;
l9_108=calcSeamlessPanoramicUvsForSampling(l9_133,l9_134,l9_135);
bool l9_136=UserUniforms.isProxyMode!=0;
if (l9_136)
{
float2 l9_137=l9_108;
float l9_138=0.0;
int l9_139;
if ((int(sc_EnvmapDiffuseHasSwappedViews_tmp)!=0))
{
int l9_140=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_140=0;
}
else
{
l9_140=varStereoViewID;
}
int l9_141=l9_140;
l9_139=1-l9_141;
}
else
{
int l9_142=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_142=0;
}
else
{
l9_142=varStereoViewID;
}
int l9_143=l9_142;
l9_139=l9_143;
}
int l9_144=l9_139;
float2 l9_145=l9_137;
int l9_146=sc_EnvmapDiffuseLayout_tmp;
int l9_147=l9_144;
float l9_148=l9_138;
float2 l9_149=l9_145;
int l9_150=l9_146;
int l9_151=l9_147;
float3 l9_152=float3(0.0);
if (l9_150==0)
{
l9_152=float3(l9_149,0.0);
}
else
{
if (l9_150==1)
{
l9_152=float3(l9_149.x,(l9_149.y*0.5)+(0.5-(float(l9_151)*0.5)),0.0);
}
else
{
l9_152=float3(l9_149,float(l9_151));
}
}
float3 l9_153=l9_152;
float3 l9_154=l9_153;
float4 l9_155=sc_EnvmapDiffuse.sample(sc_EnvmapDiffuseSmpSC,l9_154.xy,level(l9_148));
float4 l9_156=l9_155;
l9_109=l9_156;
}
else
{
float2 l9_157=l9_108;
float l9_158=-13.0;
int l9_159;
if ((int(sc_EnvmapDiffuseHasSwappedViews_tmp)!=0))
{
int l9_160=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_160=0;
}
else
{
l9_160=varStereoViewID;
}
int l9_161=l9_160;
l9_159=1-l9_161;
}
else
{
int l9_162=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_162=0;
}
else
{
l9_162=varStereoViewID;
}
int l9_163=l9_162;
l9_159=l9_163;
}
int l9_164=l9_159;
float2 l9_165=l9_157;
int l9_166=sc_EnvmapDiffuseLayout_tmp;
int l9_167=l9_164;
float l9_168=l9_158;
float2 l9_169=l9_165;
int l9_170=l9_166;
int l9_171=l9_167;
float3 l9_172=float3(0.0);
if (l9_170==0)
{
l9_172=float3(l9_169,0.0);
}
else
{
if (l9_170==1)
{
l9_172=float3(l9_169.x,(l9_169.y*0.5)+(0.5-(float(l9_171)*0.5)),0.0);
}
else
{
l9_172=float3(l9_169,float(l9_171));
}
}
float3 l9_173=l9_172;
float3 l9_174=l9_173;
float4 l9_175=sc_EnvmapDiffuse.sample(sc_EnvmapDiffuseSmpSC,l9_174.xy,bias(l9_168));
float4 l9_176=l9_175;
l9_109=l9_176;
}
}
else
{
float2 l9_177=l9_108;
float l9_178=13.0;
int l9_179;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_180=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_180=0;
}
else
{
l9_180=varStereoViewID;
}
int l9_181=l9_180;
l9_179=1-l9_181;
}
else
{
int l9_182=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_182=0;
}
else
{
l9_182=varStereoViewID;
}
int l9_183=l9_182;
l9_179=l9_183;
}
int l9_184=l9_179;
float2 l9_185=l9_177;
int l9_186=sc_EnvmapSpecularLayout_tmp;
int l9_187=l9_184;
float l9_188=l9_178;
float2 l9_189=l9_185;
int l9_190=l9_186;
int l9_191=l9_187;
float3 l9_192=float3(0.0);
if (l9_190==0)
{
l9_192=float3(l9_189,0.0);
}
else
{
if (l9_190==1)
{
l9_192=float3(l9_189.x,(l9_189.y*0.5)+(0.5-(float(l9_191)*0.5)),0.0);
}
else
{
l9_192=float3(l9_189,float(l9_191));
}
}
float3 l9_193=l9_192;
float3 l9_194=l9_193;
float4 l9_195=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_194.xy,bias(l9_188));
float4 l9_196=l9_195;
l9_109=l9_196;
}
}
float4 l9_197=l9_109;
float3 l9_198=l9_197.xyz*(1.0/l9_197.w);
float3 l9_199=l9_198*UserUniforms.sc_EnvmapExposure;
l9_98=l9_199;
}
else
{
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_SphericalHarmonics_tmp)
{
float3 l9_200=UserUniforms.sc_Sh[0];
float3 l9_201=UserUniforms.sc_Sh[1];
float3 l9_202=UserUniforms.sc_Sh[2];
float3 l9_203=UserUniforms.sc_Sh[3];
float3 l9_204=UserUniforms.sc_Sh[4];
float3 l9_205=UserUniforms.sc_Sh[5];
float3 l9_206=UserUniforms.sc_Sh[6];
float3 l9_207=UserUniforms.sc_Sh[7];
float3 l9_208=UserUniforms.sc_Sh[8];
float3 l9_209=-l9_97;
float l9_210=0.0;
l9_210=l9_209.x;
float l9_211=l9_209.y;
float l9_212=l9_209.z;
float l9_213=l9_210*l9_210;
float l9_214=l9_211*l9_211;
float l9_215=l9_212*l9_212;
float l9_216=l9_210*l9_211;
float l9_217=l9_211*l9_212;
float l9_218=l9_210*l9_212;
float3 l9_219=((((((l9_208*0.42904299)*(l9_213-l9_214))+((l9_206*0.74312502)*l9_215))+(l9_200*0.88622701))-(l9_206*0.24770799))+((((l9_204*l9_216)+(l9_207*l9_218))+(l9_205*l9_217))*0.85808599))+((((l9_203*l9_210)+(l9_201*l9_211))+(l9_202*l9_212))*1.0233279);
l9_98=l9_219*UserUniforms.sc_ShIntensity;
}
}
bool l9_220=UserUniforms.receivesRayTracedDiffuseIndirect!=0;
if (l9_220)
{
float4 l9_221=sampleRayTracedIndirectDiffuse(varStereoViewID,UserUniforms,sc_RayTracedDiffIndTexture,sc_RayTracedDiffIndTextureSmpSC,gl_FragCoord);
l9_98=mix(l9_98,l9_221.xyz,float3(l9_221.w));
}
if (sc_AmbientLightsCount_tmp>0)
{
if (sc_AmbientLightMode0_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_98+=(UserUniforms.sc_AmbientLights[0].color*UserUniforms.sc_AmbientLights[0].intensity);
}
else
{
l9_98.x+=(1e-06*UserUniforms.sc_AmbientLights[0].color.x);
}
}
if (sc_AmbientLightsCount_tmp>1)
{
if (sc_AmbientLightMode1_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_98+=(UserUniforms.sc_AmbientLights[1].color*UserUniforms.sc_AmbientLights[1].intensity);
}
else
{
l9_98.x+=(1e-06*UserUniforms.sc_AmbientLights[1].color.x);
}
}
if (sc_AmbientLightsCount_tmp>2)
{
if (sc_AmbientLightMode2_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_98+=(UserUniforms.sc_AmbientLights[2].color*UserUniforms.sc_AmbientLights[2].intensity);
}
else
{
l9_98.x+=(1e-06*UserUniforms.sc_AmbientLights[2].color.x);
}
}
if ((int(sc_LightEstimation_tmp)!=0))
{
float3 l9_222=l9_97;
float3 l9_223=UserUniforms.sc_LightEstimationData.ambientLight;
sc_SphericalGaussianLight_t l9_224;
float l9_225;
int l9_226=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_226<sc_LightEstimationSGCount_tmp)
{
l9_224.color=UserUniforms.sc_LightEstimationData.sg[l9_226].color;
l9_224.sharpness=UserUniforms.sc_LightEstimationData.sg[l9_226].sharpness;
l9_224.axis=UserUniforms.sc_LightEstimationData.sg[l9_226].axis;
float3 l9_227=l9_222;
float l9_228=dot(l9_224.axis,l9_227);
float l9_229=l9_224.sharpness;
float l9_230=0.36000001;
float l9_231=1.0/(4.0*l9_230);
float l9_232=exp(-l9_229);
float l9_233=l9_232*l9_232;
float l9_234=1.0/l9_229;
float l9_235=(1.0+(2.0*l9_233))-l9_234;
float l9_236=((l9_232-l9_233)*l9_234)-l9_233;
float l9_237=sqrt(1.0-l9_235);
float l9_238=l9_230*l9_228;
float l9_239=l9_231*l9_237;
float l9_240=l9_238+l9_239;
float l9_241=l9_228;
float l9_242=fast::clamp(l9_241,0.0,1.0);
float l9_243=l9_242;
if (step(abs(l9_238),l9_239)>0.5)
{
l9_225=(l9_240*l9_240)/l9_237;
}
else
{
l9_225=l9_243;
}
l9_243=l9_225;
float l9_244=(l9_235*l9_243)+l9_236;
sc_SphericalGaussianLight_t l9_245=l9_224;
float3 l9_246=(l9_245.color/float3(l9_245.sharpness))*6.2831855;
float3 l9_247=(l9_246*l9_244)/float3(3.1415927);
l9_223+=l9_247;
l9_226++;
continue;
}
else
{
break;
}
}
float3 l9_248=l9_223;
l9_98+=l9_248;
}
float3 l9_249=l9_98;
float3 l9_250=l9_249;
l9_12.indirectDiffuse=l9_250;
LightingComponents l9_251=l9_12;
LightingComponents lighting=l9_251;
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
lighting.directDiffuse=float3(0.0);
lighting.indirectDiffuse=float3(0.0);
float4 l9_252=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_253=FragColor0;
float4 l9_254=l9_253;
l9_252=l9_254;
}
else
{
float4 l9_255=gl_FragCoord;
float2 l9_256=l9_255.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 l9_257=l9_256;
float2 l9_258=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_259=1;
int l9_260=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_260=0;
}
else
{
l9_260=varStereoViewID;
}
int l9_261=l9_260;
int l9_262=l9_261;
float3 l9_263=float3(l9_257,0.0);
int l9_264=l9_259;
int l9_265=l9_262;
if (l9_264==1)
{
l9_263.y=((2.0*l9_263.y)+float(l9_265))-1.0;
}
float2 l9_266=l9_263.xy;
l9_258=l9_266;
}
else
{
l9_258=l9_257;
}
float2 l9_267=l9_258;
float2 l9_268=l9_267;
float2 l9_269=l9_268;
float2 l9_270=l9_269;
float l9_271=0.0;
int l9_272;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_273=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_273=0;
}
else
{
l9_273=varStereoViewID;
}
int l9_274=l9_273;
l9_272=1-l9_274;
}
else
{
int l9_275=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_275=0;
}
else
{
l9_275=varStereoViewID;
}
int l9_276=l9_275;
l9_272=l9_276;
}
int l9_277=l9_272;
float2 l9_278=l9_270;
int l9_279=sc_ScreenTextureLayout_tmp;
int l9_280=l9_277;
float l9_281=l9_271;
float2 l9_282=l9_278;
int l9_283=l9_279;
int l9_284=l9_280;
float3 l9_285=float3(0.0);
if (l9_283==0)
{
l9_285=float3(l9_282,0.0);
}
else
{
if (l9_283==1)
{
l9_285=float3(l9_282.x,(l9_282.y*0.5)+(0.5-(float(l9_284)*0.5)),0.0);
}
else
{
l9_285=float3(l9_282,float(l9_284));
}
}
float3 l9_286=l9_285;
float3 l9_287=l9_286;
float4 l9_288=sc_ScreenTexture.sample(sc_ScreenTextureSmpSC,l9_287.xy,bias(l9_281));
float4 l9_289=l9_288;
float4 l9_290=l9_289;
l9_252=l9_290;
}
float4 l9_291=l9_252;
float3 param_5=l9_291.xyz;
float3 l9_292;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_292=float3(pow(param_5.x,2.2),pow(param_5.y,2.2),pow(param_5.z,2.2));
}
else
{
l9_292=param_5*param_5;
}
float3 l9_293=l9_292;
float3 framebuffer=l9_293;
lighting.transmitted=framebuffer*mix(float3(1.0),surfaceProperties.albedo,float3(surfaceProperties.opacity));
surfaceProperties.opacity=1.0;
}
bool enablePremultipliedAlpha=false;
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
enablePremultipliedAlpha=true;
}
SurfaceProperties param_6=surfaceProperties;
LightingComponents param_7=lighting;
bool param_8=enablePremultipliedAlpha;
float3 l9_294=param_6.albedo*(param_7.directDiffuse+(param_7.indirectDiffuse*param_6.ao));
float3 l9_295=param_7.directSpecular+(param_7.indirectSpecular*param_6.specularAo);
float3 l9_296=param_6.emissive;
float3 l9_297=param_7.transmitted;
if (param_8)
{
float l9_298=param_6.opacity;
l9_294*=srgbToLinear(l9_298);
}
float3 l9_299=((l9_294+l9_295)+l9_296)+l9_297;
float3 l9_300=l9_299;
float4 Output=float4(l9_300,surfaceProperties.opacity);
if ((int(sc_IsEditor_tmp)!=0))
{
Output.x+=((surfaceProperties.ao.x*surfaceProperties.specularAo.x)*9.9999997e-06);
}
bool l9_301=UserUniforms.isProxyMode!=0;
if (l9_301)
{
return Output;
}
if (!(int(sc_BlendMode_Multiply_tmp)!=0))
{
float3 param_9=Output.xyz;
float l9_302=1.8;
float l9_303=1.4;
float l9_304=0.5;
float l9_305=1.5;
float3 l9_306=(param_9*((param_9*l9_302)+float3(l9_303)))/((param_9*((param_9*l9_302)+float3(l9_304)))+float3(l9_305));
Output=float4(l9_306.x,l9_306.y,l9_306.z,Output.w);
}
float3 param_10=Output.xyz;
float l9_307=param_10.x;
float l9_308=param_10.y;
float l9_309=param_10.z;
float3 l9_310=float3(linearToSrgb(l9_307),linearToSrgb(l9_308),linearToSrgb(l9_309));
Output=float4(l9_310.x,l9_310.y,l9_310.z,Output.w);
return Output;
}
float transformSingleColor(thread const float& original,thread const float& intMap,thread const float& target)
{
if (((int(BLEND_MODE_REALISTIC_tmp)!=0)||(int(BLEND_MODE_FORGRAY_tmp)!=0))||(int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
return original/pow(1.0-target,intMap);
}
else
{
if ((int(BLEND_MODE_DIVISION_tmp)!=0))
{
return original/(1.0-target);
}
else
{
if ((int(BLEND_MODE_BRIGHT_tmp)!=0))
{
return original/pow(1.0-target,2.0-(2.0*original));
}
}
}
return 0.0;
}
float3 transformColor(thread const float& yValue,thread const float3& original,thread const float3& target,thread const float& weight,thread const float& intMap)
{
if ((int(BLEND_MODE_INTENSE_tmp)!=0))
{
float3 param=original;
float3 l9_0=param;
float4 l9_1;
if (l9_0.y<l9_0.z)
{
l9_1=float4(l9_0.zy,-1.0,0.66666669);
}
else
{
l9_1=float4(l9_0.yz,0.0,-0.33333334);
}
float4 l9_2=l9_1;
float4 l9_3;
if (l9_0.x<l9_2.x)
{
l9_3=float4(l9_2.xyw,l9_0.x);
}
else
{
l9_3=float4(l9_0.x,l9_2.yzx);
}
float4 l9_4=l9_3;
float l9_5=l9_4.x-fast::min(l9_4.w,l9_4.y);
float l9_6=abs(((l9_4.w-l9_4.y)/((6.0*l9_5)+1e-07))+l9_4.z);
float l9_7=l9_4.x;
float3 l9_8=float3(l9_6,l9_5,l9_7);
float3 l9_9=l9_8;
float l9_10=l9_9.z-(l9_9.y*0.5);
float l9_11=l9_9.y/((1.0-abs((2.0*l9_10)-1.0))+1e-07);
float3 l9_12=float3(l9_9.x,l9_11,l9_10);
float3 hslOrig=l9_12;
float3 res=float3(0.0);
res.x=target.x;
res.y=target.y;
res.z=hslOrig.z;
float3 param_1=res;
float l9_13=param_1.x;
float l9_14=abs((6.0*l9_13)-3.0)-1.0;
float l9_15=2.0-abs((6.0*l9_13)-2.0);
float l9_16=2.0-abs((6.0*l9_13)-4.0);
float3 l9_17=fast::clamp(float3(l9_14,l9_15,l9_16),float3(0.0),float3(1.0));
float3 l9_18=l9_17;
float l9_19=(1.0-abs((2.0*param_1.z)-1.0))*param_1.y;
l9_18=((l9_18-float3(0.5))*l9_19)+float3(param_1.z);
float3 l9_20=l9_18;
res=l9_20;
float3 resColor=mix(original,res,float3(weight));
return resColor;
}
else
{
float3 tmpColor=float3(0.0);
float param_2=yValue;
float param_3=intMap;
float param_4=target.x;
tmpColor.x=transformSingleColor(param_2,param_3,param_4);
float param_5=yValue;
float param_6=intMap;
float param_7=target.y;
tmpColor.y=transformSingleColor(param_5,param_6,param_7);
float param_8=yValue;
float param_9=intMap;
float param_10=target.z;
tmpColor.z=transformSingleColor(param_8,param_9,param_10);
tmpColor=fast::clamp(tmpColor,float3(0.0),float3(1.0));
float3 resColor_1=mix(original,tmpColor,float3(weight));
return resColor_1;
}
}
float3 definedBlend(thread const float3& a,thread const float3& b,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> intensityTexture,thread sampler intensityTextureSmpSC)
{
if ((int(BLEND_MODE_LIGHTEN_tmp)!=0))
{
return fast::max(a,b);
}
else
{
if ((int(BLEND_MODE_DARKEN_tmp)!=0))
{
return fast::min(a,b);
}
else
{
if ((int(BLEND_MODE_DIVIDE_tmp)!=0))
{
return b/a;
}
else
{
if ((int(BLEND_MODE_AVERAGE_tmp)!=0))
{
return (a+b)*0.5;
}
else
{
if ((int(BLEND_MODE_SUBTRACT_tmp)!=0))
{
return fast::max((a+b)-float3(1.0),float3(0.0));
}
else
{
if ((int(BLEND_MODE_DIFFERENCE_tmp)!=0))
{
return abs(a-b);
}
else
{
if ((int(BLEND_MODE_NEGATION_tmp)!=0))
{
return float3(1.0)-abs((float3(1.0)-a)-b);
}
else
{
if ((int(BLEND_MODE_EXCLUSION_tmp)!=0))
{
return (a+b)-((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_OVERLAY_tmp)!=0))
{
float l9_0;
if (a.x<0.5)
{
l9_0=(2.0*a.x)*b.x;
}
else
{
l9_0=1.0-((2.0*(1.0-a.x))*(1.0-b.x));
}
float l9_1=l9_0;
float l9_2;
if (a.y<0.5)
{
l9_2=(2.0*a.y)*b.y;
}
else
{
l9_2=1.0-((2.0*(1.0-a.y))*(1.0-b.y));
}
float l9_3=l9_2;
float l9_4;
if (a.z<0.5)
{
l9_4=(2.0*a.z)*b.z;
}
else
{
l9_4=1.0-((2.0*(1.0-a.z))*(1.0-b.z));
}
return float3(l9_1,l9_3,l9_4);
}
else
{
if ((int(BLEND_MODE_SOFT_LIGHT_tmp)!=0))
{
return (((float3(1.0)-(b*2.0))*a)*a)+((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_HARD_LIGHT_tmp)!=0))
{
float l9_5;
if (b.x<0.5)
{
l9_5=(2.0*b.x)*a.x;
}
else
{
l9_5=1.0-((2.0*(1.0-b.x))*(1.0-a.x));
}
float l9_6=l9_5;
float l9_7;
if (b.y<0.5)
{
l9_7=(2.0*b.y)*a.y;
}
else
{
l9_7=1.0-((2.0*(1.0-b.y))*(1.0-a.y));
}
float l9_8=l9_7;
float l9_9;
if (b.z<0.5)
{
l9_9=(2.0*b.z)*a.z;
}
else
{
l9_9=1.0-((2.0*(1.0-b.z))*(1.0-a.z));
}
return float3(l9_6,l9_8,l9_9);
}
else
{
if ((int(BLEND_MODE_COLOR_DODGE_tmp)!=0))
{
float l9_10;
if (b.x==1.0)
{
l9_10=b.x;
}
else
{
l9_10=fast::min(a.x/(1.0-b.x),1.0);
}
float l9_11=l9_10;
float l9_12;
if (b.y==1.0)
{
l9_12=b.y;
}
else
{
l9_12=fast::min(a.y/(1.0-b.y),1.0);
}
float l9_13=l9_12;
float l9_14;
if (b.z==1.0)
{
l9_14=b.z;
}
else
{
l9_14=fast::min(a.z/(1.0-b.z),1.0);
}
return float3(l9_11,l9_13,l9_14);
}
else
{
if ((int(BLEND_MODE_COLOR_BURN_tmp)!=0))
{
float l9_15;
if (b.x==0.0)
{
l9_15=b.x;
}
else
{
l9_15=fast::max(1.0-((1.0-a.x)/b.x),0.0);
}
float l9_16=l9_15;
float l9_17;
if (b.y==0.0)
{
l9_17=b.y;
}
else
{
l9_17=fast::max(1.0-((1.0-a.y)/b.y),0.0);
}
float l9_18=l9_17;
float l9_19;
if (b.z==0.0)
{
l9_19=b.z;
}
else
{
l9_19=fast::max(1.0-((1.0-a.z)/b.z),0.0);
}
return float3(l9_16,l9_18,l9_19);
}
else
{
if ((int(BLEND_MODE_LINEAR_LIGHT_tmp)!=0))
{
float l9_20;
if (b.x<0.5)
{
l9_20=fast::max((a.x+(2.0*b.x))-1.0,0.0);
}
else
{
l9_20=fast::min(a.x+(2.0*(b.x-0.5)),1.0);
}
float l9_21=l9_20;
float l9_22;
if (b.y<0.5)
{
l9_22=fast::max((a.y+(2.0*b.y))-1.0,0.0);
}
else
{
l9_22=fast::min(a.y+(2.0*(b.y-0.5)),1.0);
}
float l9_23=l9_22;
float l9_24;
if (b.z<0.5)
{
l9_24=fast::max((a.z+(2.0*b.z))-1.0,0.0);
}
else
{
l9_24=fast::min(a.z+(2.0*(b.z-0.5)),1.0);
}
return float3(l9_21,l9_23,l9_24);
}
else
{
if ((int(BLEND_MODE_VIVID_LIGHT_tmp)!=0))
{
float l9_25;
if (b.x<0.5)
{
float l9_26;
if ((2.0*b.x)==0.0)
{
l9_26=2.0*b.x;
}
else
{
l9_26=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_25=l9_26;
}
else
{
float l9_27;
if ((2.0*(b.x-0.5))==1.0)
{
l9_27=2.0*(b.x-0.5);
}
else
{
l9_27=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_25=l9_27;
}
float l9_28=l9_25;
float l9_29;
if (b.y<0.5)
{
float l9_30;
if ((2.0*b.y)==0.0)
{
l9_30=2.0*b.y;
}
else
{
l9_30=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_29=l9_30;
}
else
{
float l9_31;
if ((2.0*(b.y-0.5))==1.0)
{
l9_31=2.0*(b.y-0.5);
}
else
{
l9_31=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_29=l9_31;
}
float l9_32=l9_29;
float l9_33;
if (b.z<0.5)
{
float l9_34;
if ((2.0*b.z)==0.0)
{
l9_34=2.0*b.z;
}
else
{
l9_34=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_33=l9_34;
}
else
{
float l9_35;
if ((2.0*(b.z-0.5))==1.0)
{
l9_35=2.0*(b.z-0.5);
}
else
{
l9_35=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_33=l9_35;
}
return float3(l9_28,l9_32,l9_33);
}
else
{
if ((int(BLEND_MODE_PIN_LIGHT_tmp)!=0))
{
float l9_36;
if (b.x<0.5)
{
l9_36=fast::min(a.x,2.0*b.x);
}
else
{
l9_36=fast::max(a.x,2.0*(b.x-0.5));
}
float l9_37=l9_36;
float l9_38;
if (b.y<0.5)
{
l9_38=fast::min(a.y,2.0*b.y);
}
else
{
l9_38=fast::max(a.y,2.0*(b.y-0.5));
}
float l9_39=l9_38;
float l9_40;
if (b.z<0.5)
{
l9_40=fast::min(a.z,2.0*b.z);
}
else
{
l9_40=fast::max(a.z,2.0*(b.z-0.5));
}
return float3(l9_37,l9_39,l9_40);
}
else
{
if ((int(BLEND_MODE_HARD_MIX_tmp)!=0))
{
float l9_41;
if (b.x<0.5)
{
float l9_42;
if ((2.0*b.x)==0.0)
{
l9_42=2.0*b.x;
}
else
{
l9_42=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_41=l9_42;
}
else
{
float l9_43;
if ((2.0*(b.x-0.5))==1.0)
{
l9_43=2.0*(b.x-0.5);
}
else
{
l9_43=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_41=l9_43;
}
float l9_44=l9_41;
float l9_45;
if (b.y<0.5)
{
float l9_46;
if ((2.0*b.y)==0.0)
{
l9_46=2.0*b.y;
}
else
{
l9_46=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_45=l9_46;
}
else
{
float l9_47;
if ((2.0*(b.y-0.5))==1.0)
{
l9_47=2.0*(b.y-0.5);
}
else
{
l9_47=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_45=l9_47;
}
float l9_48=l9_45;
float l9_49;
if (b.z<0.5)
{
float l9_50;
if ((2.0*b.z)==0.0)
{
l9_50=2.0*b.z;
}
else
{
l9_50=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_49=l9_50;
}
else
{
float l9_51;
if ((2.0*(b.z-0.5))==1.0)
{
l9_51=2.0*(b.z-0.5);
}
else
{
l9_51=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_49=l9_51;
}
return float3((l9_44<0.5) ? 0.0 : 1.0,(l9_48<0.5) ? 0.0 : 1.0,(l9_49<0.5) ? 0.0 : 1.0);
}
else
{
if ((int(BLEND_MODE_HARD_REFLECT_tmp)!=0))
{
float l9_52;
if (b.x==1.0)
{
l9_52=b.x;
}
else
{
l9_52=fast::min((a.x*a.x)/(1.0-b.x),1.0);
}
float l9_53=l9_52;
float l9_54;
if (b.y==1.0)
{
l9_54=b.y;
}
else
{
l9_54=fast::min((a.y*a.y)/(1.0-b.y),1.0);
}
float l9_55=l9_54;
float l9_56;
if (b.z==1.0)
{
l9_56=b.z;
}
else
{
l9_56=fast::min((a.z*a.z)/(1.0-b.z),1.0);
}
return float3(l9_53,l9_55,l9_56);
}
else
{
if ((int(BLEND_MODE_HARD_GLOW_tmp)!=0))
{
float l9_57;
if (a.x==1.0)
{
l9_57=a.x;
}
else
{
l9_57=fast::min((b.x*b.x)/(1.0-a.x),1.0);
}
float l9_58=l9_57;
float l9_59;
if (a.y==1.0)
{
l9_59=a.y;
}
else
{
l9_59=fast::min((b.y*b.y)/(1.0-a.y),1.0);
}
float l9_60=l9_59;
float l9_61;
if (a.z==1.0)
{
l9_61=a.z;
}
else
{
l9_61=fast::min((b.z*b.z)/(1.0-a.z),1.0);
}
return float3(l9_58,l9_60,l9_61);
}
else
{
if ((int(BLEND_MODE_HARD_PHOENIX_tmp)!=0))
{
return (fast::min(a,b)-fast::max(a,b))+float3(1.0);
}
else
{
if ((int(BLEND_MODE_HUE_tmp)!=0))
{
float3 param=a;
float3 param_1=b;
float3 l9_62=param;
float3 l9_63=l9_62;
float4 l9_64;
if (l9_63.y<l9_63.z)
{
l9_64=float4(l9_63.zy,-1.0,0.66666669);
}
else
{
l9_64=float4(l9_63.yz,0.0,-0.33333334);
}
float4 l9_65=l9_64;
float4 l9_66;
if (l9_63.x<l9_65.x)
{
l9_66=float4(l9_65.xyw,l9_63.x);
}
else
{
l9_66=float4(l9_63.x,l9_65.yzx);
}
float4 l9_67=l9_66;
float l9_68=l9_67.x-fast::min(l9_67.w,l9_67.y);
float l9_69=abs(((l9_67.w-l9_67.y)/((6.0*l9_68)+1e-07))+l9_67.z);
float l9_70=l9_67.x;
float3 l9_71=float3(l9_69,l9_68,l9_70);
float3 l9_72=l9_71;
float l9_73=l9_72.z-(l9_72.y*0.5);
float l9_74=l9_72.y/((1.0-abs((2.0*l9_73)-1.0))+1e-07);
float3 l9_75=float3(l9_72.x,l9_74,l9_73);
float3 l9_76=l9_75;
float3 l9_77=param_1;
float3 l9_78=l9_77;
float4 l9_79;
if (l9_78.y<l9_78.z)
{
l9_79=float4(l9_78.zy,-1.0,0.66666669);
}
else
{
l9_79=float4(l9_78.yz,0.0,-0.33333334);
}
float4 l9_80=l9_79;
float4 l9_81;
if (l9_78.x<l9_80.x)
{
l9_81=float4(l9_80.xyw,l9_78.x);
}
else
{
l9_81=float4(l9_78.x,l9_80.yzx);
}
float4 l9_82=l9_81;
float l9_83=l9_82.x-fast::min(l9_82.w,l9_82.y);
float l9_84=abs(((l9_82.w-l9_82.y)/((6.0*l9_83)+1e-07))+l9_82.z);
float l9_85=l9_82.x;
float3 l9_86=float3(l9_84,l9_83,l9_85);
float3 l9_87=l9_86;
float l9_88=l9_87.z-(l9_87.y*0.5);
float l9_89=l9_87.y/((1.0-abs((2.0*l9_88)-1.0))+1e-07);
float3 l9_90=float3(l9_87.x,l9_89,l9_88);
float3 l9_91=float3(l9_90.x,l9_76.y,l9_76.z);
float l9_92=l9_91.x;
float l9_93=abs((6.0*l9_92)-3.0)-1.0;
float l9_94=2.0-abs((6.0*l9_92)-2.0);
float l9_95=2.0-abs((6.0*l9_92)-4.0);
float3 l9_96=fast::clamp(float3(l9_93,l9_94,l9_95),float3(0.0),float3(1.0));
float3 l9_97=l9_96;
float l9_98=(1.0-abs((2.0*l9_91.z)-1.0))*l9_91.y;
l9_97=((l9_97-float3(0.5))*l9_98)+float3(l9_91.z);
float3 l9_99=l9_97;
float3 l9_100=l9_99;
return l9_100;
}
else
{
if ((int(BLEND_MODE_SATURATION_tmp)!=0))
{
float3 param_2=a;
float3 param_3=b;
float3 l9_101=param_2;
float3 l9_102=l9_101;
float4 l9_103;
if (l9_102.y<l9_102.z)
{
l9_103=float4(l9_102.zy,-1.0,0.66666669);
}
else
{
l9_103=float4(l9_102.yz,0.0,-0.33333334);
}
float4 l9_104=l9_103;
float4 l9_105;
if (l9_102.x<l9_104.x)
{
l9_105=float4(l9_104.xyw,l9_102.x);
}
else
{
l9_105=float4(l9_102.x,l9_104.yzx);
}
float4 l9_106=l9_105;
float l9_107=l9_106.x-fast::min(l9_106.w,l9_106.y);
float l9_108=abs(((l9_106.w-l9_106.y)/((6.0*l9_107)+1e-07))+l9_106.z);
float l9_109=l9_106.x;
float3 l9_110=float3(l9_108,l9_107,l9_109);
float3 l9_111=l9_110;
float l9_112=l9_111.z-(l9_111.y*0.5);
float l9_113=l9_111.y/((1.0-abs((2.0*l9_112)-1.0))+1e-07);
float3 l9_114=float3(l9_111.x,l9_113,l9_112);
float3 l9_115=l9_114;
float l9_116=l9_115.x;
float3 l9_117=param_3;
float3 l9_118=l9_117;
float4 l9_119;
if (l9_118.y<l9_118.z)
{
l9_119=float4(l9_118.zy,-1.0,0.66666669);
}
else
{
l9_119=float4(l9_118.yz,0.0,-0.33333334);
}
float4 l9_120=l9_119;
float4 l9_121;
if (l9_118.x<l9_120.x)
{
l9_121=float4(l9_120.xyw,l9_118.x);
}
else
{
l9_121=float4(l9_118.x,l9_120.yzx);
}
float4 l9_122=l9_121;
float l9_123=l9_122.x-fast::min(l9_122.w,l9_122.y);
float l9_124=abs(((l9_122.w-l9_122.y)/((6.0*l9_123)+1e-07))+l9_122.z);
float l9_125=l9_122.x;
float3 l9_126=float3(l9_124,l9_123,l9_125);
float3 l9_127=l9_126;
float l9_128=l9_127.z-(l9_127.y*0.5);
float l9_129=l9_127.y/((1.0-abs((2.0*l9_128)-1.0))+1e-07);
float3 l9_130=float3(l9_127.x,l9_129,l9_128);
float3 l9_131=float3(l9_116,l9_130.y,l9_115.z);
float l9_132=l9_131.x;
float l9_133=abs((6.0*l9_132)-3.0)-1.0;
float l9_134=2.0-abs((6.0*l9_132)-2.0);
float l9_135=2.0-abs((6.0*l9_132)-4.0);
float3 l9_136=fast::clamp(float3(l9_133,l9_134,l9_135),float3(0.0),float3(1.0));
float3 l9_137=l9_136;
float l9_138=(1.0-abs((2.0*l9_131.z)-1.0))*l9_131.y;
l9_137=((l9_137-float3(0.5))*l9_138)+float3(l9_131.z);
float3 l9_139=l9_137;
float3 l9_140=l9_139;
return l9_140;
}
else
{
if ((int(BLEND_MODE_COLOR_tmp)!=0))
{
float3 param_4=a;
float3 param_5=b;
float3 l9_141=param_5;
float3 l9_142=l9_141;
float4 l9_143;
if (l9_142.y<l9_142.z)
{
l9_143=float4(l9_142.zy,-1.0,0.66666669);
}
else
{
l9_143=float4(l9_142.yz,0.0,-0.33333334);
}
float4 l9_144=l9_143;
float4 l9_145;
if (l9_142.x<l9_144.x)
{
l9_145=float4(l9_144.xyw,l9_142.x);
}
else
{
l9_145=float4(l9_142.x,l9_144.yzx);
}
float4 l9_146=l9_145;
float l9_147=l9_146.x-fast::min(l9_146.w,l9_146.y);
float l9_148=abs(((l9_146.w-l9_146.y)/((6.0*l9_147)+1e-07))+l9_146.z);
float l9_149=l9_146.x;
float3 l9_150=float3(l9_148,l9_147,l9_149);
float3 l9_151=l9_150;
float l9_152=l9_151.z-(l9_151.y*0.5);
float l9_153=l9_151.y/((1.0-abs((2.0*l9_152)-1.0))+1e-07);
float3 l9_154=float3(l9_151.x,l9_153,l9_152);
float3 l9_155=l9_154;
float l9_156=l9_155.x;
float l9_157=l9_155.y;
float3 l9_158=param_4;
float3 l9_159=l9_158;
float4 l9_160;
if (l9_159.y<l9_159.z)
{
l9_160=float4(l9_159.zy,-1.0,0.66666669);
}
else
{
l9_160=float4(l9_159.yz,0.0,-0.33333334);
}
float4 l9_161=l9_160;
float4 l9_162;
if (l9_159.x<l9_161.x)
{
l9_162=float4(l9_161.xyw,l9_159.x);
}
else
{
l9_162=float4(l9_159.x,l9_161.yzx);
}
float4 l9_163=l9_162;
float l9_164=l9_163.x-fast::min(l9_163.w,l9_163.y);
float l9_165=abs(((l9_163.w-l9_163.y)/((6.0*l9_164)+1e-07))+l9_163.z);
float l9_166=l9_163.x;
float3 l9_167=float3(l9_165,l9_164,l9_166);
float3 l9_168=l9_167;
float l9_169=l9_168.z-(l9_168.y*0.5);
float l9_170=l9_168.y/((1.0-abs((2.0*l9_169)-1.0))+1e-07);
float3 l9_171=float3(l9_168.x,l9_170,l9_169);
float3 l9_172=float3(l9_156,l9_157,l9_171.z);
float l9_173=l9_172.x;
float l9_174=abs((6.0*l9_173)-3.0)-1.0;
float l9_175=2.0-abs((6.0*l9_173)-2.0);
float l9_176=2.0-abs((6.0*l9_173)-4.0);
float3 l9_177=fast::clamp(float3(l9_174,l9_175,l9_176),float3(0.0),float3(1.0));
float3 l9_178=l9_177;
float l9_179=(1.0-abs((2.0*l9_172.z)-1.0))*l9_172.y;
l9_178=((l9_178-float3(0.5))*l9_179)+float3(l9_172.z);
float3 l9_180=l9_178;
float3 l9_181=l9_180;
return l9_181;
}
else
{
if ((int(BLEND_MODE_LUMINOSITY_tmp)!=0))
{
float3 param_6=a;
float3 param_7=b;
float3 l9_182=param_6;
float3 l9_183=l9_182;
float4 l9_184;
if (l9_183.y<l9_183.z)
{
l9_184=float4(l9_183.zy,-1.0,0.66666669);
}
else
{
l9_184=float4(l9_183.yz,0.0,-0.33333334);
}
float4 l9_185=l9_184;
float4 l9_186;
if (l9_183.x<l9_185.x)
{
l9_186=float4(l9_185.xyw,l9_183.x);
}
else
{
l9_186=float4(l9_183.x,l9_185.yzx);
}
float4 l9_187=l9_186;
float l9_188=l9_187.x-fast::min(l9_187.w,l9_187.y);
float l9_189=abs(((l9_187.w-l9_187.y)/((6.0*l9_188)+1e-07))+l9_187.z);
float l9_190=l9_187.x;
float3 l9_191=float3(l9_189,l9_188,l9_190);
float3 l9_192=l9_191;
float l9_193=l9_192.z-(l9_192.y*0.5);
float l9_194=l9_192.y/((1.0-abs((2.0*l9_193)-1.0))+1e-07);
float3 l9_195=float3(l9_192.x,l9_194,l9_193);
float3 l9_196=l9_195;
float l9_197=l9_196.x;
float l9_198=l9_196.y;
float3 l9_199=param_7;
float3 l9_200=l9_199;
float4 l9_201;
if (l9_200.y<l9_200.z)
{
l9_201=float4(l9_200.zy,-1.0,0.66666669);
}
else
{
l9_201=float4(l9_200.yz,0.0,-0.33333334);
}
float4 l9_202=l9_201;
float4 l9_203;
if (l9_200.x<l9_202.x)
{
l9_203=float4(l9_202.xyw,l9_200.x);
}
else
{
l9_203=float4(l9_200.x,l9_202.yzx);
}
float4 l9_204=l9_203;
float l9_205=l9_204.x-fast::min(l9_204.w,l9_204.y);
float l9_206=abs(((l9_204.w-l9_204.y)/((6.0*l9_205)+1e-07))+l9_204.z);
float l9_207=l9_204.x;
float3 l9_208=float3(l9_206,l9_205,l9_207);
float3 l9_209=l9_208;
float l9_210=l9_209.z-(l9_209.y*0.5);
float l9_211=l9_209.y/((1.0-abs((2.0*l9_210)-1.0))+1e-07);
float3 l9_212=float3(l9_209.x,l9_211,l9_210);
float3 l9_213=float3(l9_197,l9_198,l9_212.z);
float l9_214=l9_213.x;
float l9_215=abs((6.0*l9_214)-3.0)-1.0;
float l9_216=2.0-abs((6.0*l9_214)-2.0);
float l9_217=2.0-abs((6.0*l9_214)-4.0);
float3 l9_218=fast::clamp(float3(l9_215,l9_216,l9_217),float3(0.0),float3(1.0));
float3 l9_219=l9_218;
float l9_220=(1.0-abs((2.0*l9_213.z)-1.0))*l9_213.y;
l9_219=((l9_219-float3(0.5))*l9_220)+float3(l9_213.z);
float3 l9_221=l9_219;
float3 l9_222=l9_221;
return l9_222;
}
else
{
float3 param_8=a;
float3 param_9=b;
float3 l9_223=param_8;
float l9_224=((0.29899999*l9_223.x)+(0.58700001*l9_223.y))+(0.114*l9_223.z);
float l9_225=l9_224;
float l9_226=1.0;
float l9_227=pow(l9_225,1.0/UserUniforms.correctedIntensity);
int l9_228;
if ((int(intensityTextureHasSwappedViews_tmp)!=0))
{
int l9_229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_229=0;
}
else
{
l9_229=varStereoViewID;
}
int l9_230=l9_229;
l9_228=1-l9_230;
}
else
{
int l9_231=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_231=0;
}
else
{
l9_231=varStereoViewID;
}
int l9_232=l9_231;
l9_228=l9_232;
}
int l9_233=l9_228;
int l9_234=intensityTextureLayout_tmp;
int l9_235=l9_233;
float2 l9_236=float2(l9_227,0.5);
bool l9_237=(int(SC_USE_UV_TRANSFORM_intensityTexture_tmp)!=0);
float3x3 l9_238=UserUniforms.intensityTextureTransform;
int2 l9_239=int2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp);
bool l9_240=(int(SC_USE_UV_MIN_MAX_intensityTexture_tmp)!=0);
float4 l9_241=UserUniforms.intensityTextureUvMinMax;
bool l9_242=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp)!=0);
float4 l9_243=UserUniforms.intensityTextureBorderColor;
float l9_244=0.0;
bool l9_245=l9_242&&(!l9_240);
float l9_246=1.0;
float l9_247=l9_236.x;
int l9_248=l9_239.x;
if (l9_248==1)
{
l9_247=fract(l9_247);
}
else
{
if (l9_248==2)
{
float l9_249=fract(l9_247);
float l9_250=l9_247-l9_249;
float l9_251=step(0.25,fract(l9_250*0.5));
l9_247=mix(l9_249,1.0-l9_249,fast::clamp(l9_251,0.0,1.0));
}
}
l9_236.x=l9_247;
float l9_252=l9_236.y;
int l9_253=l9_239.y;
if (l9_253==1)
{
l9_252=fract(l9_252);
}
else
{
if (l9_253==2)
{
float l9_254=fract(l9_252);
float l9_255=l9_252-l9_254;
float l9_256=step(0.25,fract(l9_255*0.5));
l9_252=mix(l9_254,1.0-l9_254,fast::clamp(l9_256,0.0,1.0));
}
}
l9_236.y=l9_252;
if (l9_240)
{
bool l9_257=l9_242;
bool l9_258;
if (l9_257)
{
l9_258=l9_239.x==3;
}
else
{
l9_258=l9_257;
}
float l9_259=l9_236.x;
float l9_260=l9_241.x;
float l9_261=l9_241.z;
bool l9_262=l9_258;
float l9_263=l9_246;
float l9_264=fast::clamp(l9_259,l9_260,l9_261);
float l9_265=step(abs(l9_259-l9_264),9.9999997e-06);
l9_263*=(l9_265+((1.0-float(l9_262))*(1.0-l9_265)));
l9_259=l9_264;
l9_236.x=l9_259;
l9_246=l9_263;
bool l9_266=l9_242;
bool l9_267;
if (l9_266)
{
l9_267=l9_239.y==3;
}
else
{
l9_267=l9_266;
}
float l9_268=l9_236.y;
float l9_269=l9_241.y;
float l9_270=l9_241.w;
bool l9_271=l9_267;
float l9_272=l9_246;
float l9_273=fast::clamp(l9_268,l9_269,l9_270);
float l9_274=step(abs(l9_268-l9_273),9.9999997e-06);
l9_272*=(l9_274+((1.0-float(l9_271))*(1.0-l9_274)));
l9_268=l9_273;
l9_236.y=l9_268;
l9_246=l9_272;
}
float2 l9_275=l9_236;
bool l9_276=l9_237;
float3x3 l9_277=l9_238;
if (l9_276)
{
l9_275=float2((l9_277*float3(l9_275,1.0)).xy);
}
float2 l9_278=l9_275;
l9_236=l9_278;
float l9_279=l9_236.x;
int l9_280=l9_239.x;
bool l9_281=l9_245;
float l9_282=l9_246;
if ((l9_280==0)||(l9_280==3))
{
float l9_283=l9_279;
float l9_284=0.0;
float l9_285=1.0;
bool l9_286=l9_281;
float l9_287=l9_282;
float l9_288=fast::clamp(l9_283,l9_284,l9_285);
float l9_289=step(abs(l9_283-l9_288),9.9999997e-06);
l9_287*=(l9_289+((1.0-float(l9_286))*(1.0-l9_289)));
l9_283=l9_288;
l9_279=l9_283;
l9_282=l9_287;
}
l9_236.x=l9_279;
l9_246=l9_282;
float l9_290=l9_236.y;
int l9_291=l9_239.y;
bool l9_292=l9_245;
float l9_293=l9_246;
if ((l9_291==0)||(l9_291==3))
{
float l9_294=l9_290;
float l9_295=0.0;
float l9_296=1.0;
bool l9_297=l9_292;
float l9_298=l9_293;
float l9_299=fast::clamp(l9_294,l9_295,l9_296);
float l9_300=step(abs(l9_294-l9_299),9.9999997e-06);
l9_298*=(l9_300+((1.0-float(l9_297))*(1.0-l9_300)));
l9_294=l9_299;
l9_290=l9_294;
l9_293=l9_298;
}
l9_236.y=l9_290;
l9_246=l9_293;
float2 l9_301=l9_236;
int l9_302=l9_234;
int l9_303=l9_235;
float l9_304=l9_244;
float2 l9_305=l9_301;
int l9_306=l9_302;
int l9_307=l9_303;
float3 l9_308=float3(0.0);
if (l9_306==0)
{
l9_308=float3(l9_305,0.0);
}
else
{
if (l9_306==1)
{
l9_308=float3(l9_305.x,(l9_305.y*0.5)+(0.5-(float(l9_307)*0.5)),0.0);
}
else
{
l9_308=float3(l9_305,float(l9_307));
}
}
float3 l9_309=l9_308;
float3 l9_310=l9_309;
float4 l9_311=intensityTexture.sample(intensityTextureSmpSC,l9_310.xy,bias(l9_304));
float4 l9_312=l9_311;
if (l9_242)
{
l9_312=mix(l9_243,l9_312,float4(l9_246));
}
float4 l9_313=l9_312;
float3 l9_314=l9_313.xyz;
float3 l9_315=l9_314;
float l9_316=16.0;
float l9_317=((((l9_315.x*256.0)+l9_315.y)+(l9_315.z/256.0))/257.00391)*l9_316;
float l9_318=l9_317;
if ((int(BLEND_MODE_FORGRAY_tmp)!=0))
{
l9_318=fast::max(l9_318,1.0);
}
if ((int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
l9_318=fast::min(l9_318,1.0);
}
float l9_319=l9_225;
float3 l9_320=param_8;
float3 l9_321=param_9;
float l9_322=l9_226;
float l9_323=l9_318;
float3 l9_324=transformColor(l9_319,l9_320,l9_321,l9_322,l9_323);
return l9_324;
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
float4 sc_OutputMotionVectorsIfNeeded(thread const float3& surfacePosWorldSpace,thread const float4& finalColor,thread int& varStereoViewID,constant userUniformsObj& UserUniforms)
{
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float3 param=surfacePosWorldSpace;
int l9_0=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_0=0;
}
else
{
l9_0=varStereoViewID;
}
int l9_1=l9_0;
float4 l9_2=UserUniforms.sc_ViewProjectionMatrixArray[l9_1]*float4(param,1.0);
float2 l9_3=l9_2.xy/float2(l9_2.w);
l9_2=float4(l9_3.x,l9_3.y,l9_2.z,l9_2.w);
int l9_4=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4=0;
}
else
{
l9_4=varStereoViewID;
}
int l9_5=l9_4;
float4 l9_6=((UserUniforms.sc_PrevFrameViewProjectionMatrixArray[l9_5]*UserUniforms.sc_PrevFrameModelMatrix)*UserUniforms.sc_ModelMatrixInverse)*float4(param,1.0);
float2 l9_7=l9_6.xy/float2(l9_6.w);
l9_6=float4(l9_7.x,l9_7.y,l9_6.z,l9_6.w);
float2 l9_8=(l9_2.xy-l9_6.xy)*0.5;
float2 l9_9=l9_8;
float l9_10=(l9_9.x*5.0)+0.5;
float l9_11=floor(l9_10*65535.0);
float l9_12=floor(l9_11*0.00390625);
float2 l9_13=float2(l9_12/255.0,(l9_11-(l9_12*256.0))/255.0);
float l9_14=(l9_9.y*5.0)+0.5;
float l9_15=floor(l9_14*65535.0);
float l9_16=floor(l9_15*0.00390625);
float2 l9_17=float2(l9_16/255.0,(l9_15-(l9_16*256.0))/255.0);
float4 l9_18=float4(l9_13,l9_17);
float4 l9_19=l9_18;
return l9_19;
}
else
{
return finalColor;
}
}
fragment main_frag_out main_frag(main_frag_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_frag_out out={};
int N7_VertexColorSwitch=0;
float4 N7_BaseColorValue=float4(0.0);
bool N7_EnableBaseTexture=false;
int N7_BaseTextureUVSwitch=0;
bool N7_EnableRecolor=false;
float3 N7_RecolorR=float3(0.0);
float3 N7_RecolorG=float3(0.0);
float3 N7_RecolorB=float3(0.0);
bool N7_EnableOpacityTexture=false;
int N7_OpacityUVSwitch=0;
bool N7_EnableNormalTexture=false;
int N7_NormalUVSwitch=0;
bool N7_EnableDetailNormal=false;
int N7_Detail_NormalUVSwitch=0;
bool N7_EnableEmissiveTexture=false;
int N7_EmissiveUVSwitch=0;
float3 N7_EmissiveColor=float3(0.0);
float N7_EmissiveIntensity=0.0;
bool N7_EnableSimpleReflection=false;
float N7_ReflectionIntensity=0.0;
bool N7_EnableModulationTexture=false;
int N7_ModuationUVSwitch=0;
bool N7_EnableRimHighlight=false;
float3 N7_RimColor=float3(0.0);
float N7_RimIntensity=0.0;
float N7_RimExponent=0.0;
bool N7_EnableRimColorTexture=false;
bool N7_EnableRimInvert=false;
int N7_RimUVSwitch=0;
bool N7_EnableMaterialParamsTexture=false;
int N7_MaterialParamsUVSwitch=0;
bool N7_EnableUV2=false;
int N7_UV2Switch=0;
float2 N7_UV2Scale=float2(0.0);
float2 N7_UV2Offset=float2(0.0);
bool N7_UV2Animation=false;
bool N7_EnableUV3=false;
int N7_UV3Switch=0;
float2 N7_UV3Scale=float2(0.0);
float2 N7_UV3Offset=float2(0.0);
bool N7_UV3Animation=false;
float4 N7_Albedo=float4(0.0);
float N7_Opacity=0.0;
float3 N7_Normal=float3(0.0);
float3 N7_Emissive=float3(0.0);
float3 N7_AO=float3(0.0);
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
if ((sc_StereoRenderingMode_tmp==1)&&(sc_StereoRendering_IsClipDistanceEnabled_tmp==0))
{
if (in.varClipDistance<0.0)
{
discard_fragment();
}
}
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=in.PreviewVertexColor;
PreviewInfo.Saved=((in.PreviewVertexSaved*1.0)!=0.0) ? true : false;
float4 FinalColor=float4(0.0,0.99144,1.0,1.0);
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
bool l9_0=(*sc_set0.UserUniforms).isProxyMode!=0;
if (l9_0)
{
float4 l9_1=gl_FragCoord;
int2 l9_2=int2(l9_1.xy);
RayHitPayload l9_3=GetHitData(l9_2,(*sc_set0.UserUniforms),sc_set0.z_rayDirections,sc_set0.z_rayDirectionsSmpSC,sc_set0.z_hitIdAndBarycentric,sc_set0.z_hitIdAndBarycentricSmp,(*sc_set0.layoutVertices),(*sc_set0.layoutVerticesPN),(*sc_set0.layoutIndices));
RayHitPayload rhp=l9_3;
bool l9_4=(*sc_set0.UserUniforms).noEarlyZ!=0;
if (l9_4)
{
if (rhp.id.x!=uint((*sc_set0.UserUniforms).instance_id))
{
return out;
}
}
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=rhp.viewDirWS;
Globals.PositionWS=rhp.positionWS;
Globals.VertexNormal_WorldSpace=rhp.normalWS;
Globals.VertexTangent_WorldSpace=rhp.tangentWS.xyz;
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*rhp.tangentWS.w;
Globals.Surface_UVCoord0=rhp.uv0;
Globals.Surface_UVCoord1=rhp.uv1;
Globals.VertexColor=rhp.color;
int l9_5=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5=0;
}
else
{
l9_5=in.varStereoViewID;
}
int l9_6=l9_5;
float4 emitterPositionCS=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_6]*float4(rhp.positionWS,1.0);
Globals.gScreenCoord=((emitterPositionCS.xy/float2(emitterPositionCS.w))*0.5)+float2(0.5);
Globals.SurfacePosition_WorldSpace=rhp.positionWS;
}
else
{
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPos);
Globals.PositionWS=in.varPos;
Globals.VertexNormal_WorldSpace=normalize(in.varNormal);
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
Globals.Surface_UVCoord0=in.varPackedTex.xy;
Globals.Surface_UVCoord1=in.varPackedTex.zw;
Globals.VertexColor=in.varColor;
float4 l9_7=gl_FragCoord;
float2 l9_8=l9_7.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_9=l9_8;
float2 l9_10=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_11=1;
int l9_12=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_12=0;
}
else
{
l9_12=in.varStereoViewID;
}
int l9_13=l9_12;
int l9_14=l9_13;
float3 l9_15=float3(l9_9,0.0);
int l9_16=l9_11;
int l9_17=l9_14;
if (l9_16==1)
{
l9_15.y=((2.0*l9_15.y)+float(l9_17))-1.0;
}
float2 l9_18=l9_15.xy;
l9_10=l9_18;
}
else
{
l9_10=l9_9;
}
float2 l9_19=l9_10;
float2 l9_20=l9_19;
Globals.gScreenCoord=l9_20;
Globals.SurfacePosition_WorldSpace=in.varPos;
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
}
float4 Output_N5=float4(0.0);
float4 param=(*sc_set0.UserUniforms).baseColor;
Output_N5=param;
float3 Output_N85=float3(0.0);
float3 param_1=(*sc_set0.UserUniforms).recolorRed;
Output_N85=param_1;
float3 Output_N86=float3(0.0);
float3 param_2=(*sc_set0.UserUniforms).recolorGreen;
Output_N86=param_2;
float3 Output_N87=float3(0.0);
float3 param_3=(*sc_set0.UserUniforms).recolorBlue;
Output_N87=param_3;
float3 Output_N236=float3(0.0);
float3 param_4=(*sc_set0.UserUniforms).emissiveColor;
Output_N236=param_4;
float Output_N233=0.0;
float param_5=(*sc_set0.UserUniforms).emissiveIntensity;
Output_N233=param_5;
float Output_N225=0.0;
float param_6=(*sc_set0.UserUniforms).reflectionIntensity;
Output_N225=param_6;
float3 Output_N309=float3(0.0);
float3 param_7=(*sc_set0.UserUniforms).rimColor;
Output_N309=param_7;
float Output_N310=0.0;
float param_8=(*sc_set0.UserUniforms).rimIntensity;
Output_N310=param_8;
float Output_N311=0.0;
float param_9=(*sc_set0.UserUniforms).rimExponent;
Output_N311=param_9;
float2 Output_N14=float2(0.0);
float2 param_10=(*sc_set0.UserUniforms).uv2Scale;
Output_N14=param_10;
float2 Output_N15=float2(0.0);
float2 param_11=(*sc_set0.UserUniforms).uv2Offset;
Output_N15=param_11;
float2 Output_N50=float2(0.0);
float2 param_12=(*sc_set0.UserUniforms).uv3Scale;
Output_N50=param_12;
float2 Output_N51=float2(0.0);
float2 param_13=(*sc_set0.UserUniforms).uv3Offset;
Output_N51=param_13;
float4 Albedo_N7=float4(0.0);
float Opacity_N7=0.0;
float3 Normal_N7=float3(0.0);
float3 Emissive_N7=float3(0.0);
float3 AO_N7=float3(0.0);
float4 param_14=Output_N5;
float3 param_15=Output_N85;
float3 param_16=Output_N86;
float3 param_17=Output_N87;
float3 param_18=Output_N236;
float param_19=Output_N233;
float param_20=Output_N225;
float3 param_21=Output_N309;
float param_22=Output_N310;
float param_23=Output_N311;
float2 param_24=Output_N14;
float2 param_25=Output_N15;
float2 param_26=Output_N50;
float2 param_27=Output_N51;
ssGlobals param_33=Globals;
ssGlobals tempGlobals=param_33;
float4 param_28=float4(0.0);
float param_29=0.0;
float3 param_30=float3(0.0);
float3 param_31=float3(0.0);
float3 param_32=float3(0.0);
N7_VertexColorSwitch=NODE_38_DROPLIST_ITEM_tmp;
N7_BaseColorValue=param_14;
N7_EnableBaseTexture=(int(ENABLE_BASE_TEX_tmp)!=0);
N7_BaseTextureUVSwitch=NODE_27_DROPLIST_ITEM_tmp;
N7_EnableRecolor=(int(ENABLE_RECOLOR_tmp)!=0);
N7_RecolorR=param_15;
N7_RecolorG=param_16;
N7_RecolorB=param_17;
N7_EnableOpacityTexture=(int(ENABLE_OPACITY_TEX_tmp)!=0);
N7_OpacityUVSwitch=NODE_69_DROPLIST_ITEM_tmp;
N7_EnableNormalTexture=(int(ENABLE_NORMALMAP_tmp)!=0);
N7_NormalUVSwitch=NODE_181_DROPLIST_ITEM_tmp;
N7_EnableDetailNormal=(int(ENABLE_DETAIL_NORMAL_tmp)!=0);
N7_Detail_NormalUVSwitch=NODE_184_DROPLIST_ITEM_tmp;
N7_EnableEmissiveTexture=(int(ENABLE_EMISSIVE_tmp)!=0);
N7_EmissiveUVSwitch=NODE_76_DROPLIST_ITEM_tmp;
N7_EmissiveColor=param_18;
N7_EmissiveIntensity=param_19;
N7_EnableSimpleReflection=(int(ENABLE_SIMPLE_REFLECTION_tmp)!=0);
N7_ReflectionIntensity=param_20;
N7_EnableModulationTexture=(int(Tweak_N177_tmp)!=0);
N7_ModuationUVSwitch=NODE_228_DROPLIST_ITEM_tmp;
N7_EnableRimHighlight=(int(ENABLE_RIM_HIGHLIGHT_tmp)!=0);
N7_RimColor=param_21;
N7_RimIntensity=param_22;
N7_RimExponent=param_23;
N7_EnableRimColorTexture=(int(Tweak_N216_tmp)!=0);
N7_EnableRimInvert=(int(ENABLE_RIM_INVERT_tmp)!=0);
N7_RimUVSwitch=NODE_315_DROPLIST_ITEM_tmp;
N7_EnableMaterialParamsTexture=(int(ENABLE_MATERIAL_PARAM_TEX_tmp)!=0);
N7_MaterialParamsUVSwitch=NODE_221_DROPLIST_ITEM_tmp;
N7_EnableUV2=(int(ENABLE_UV2_tmp)!=0);
N7_UV2Switch=NODE_13_DROPLIST_ITEM_tmp;
N7_UV2Scale=param_24;
N7_UV2Offset=param_25;
N7_UV2Animation=(int(uv2EnableAnimation_tmp)!=0);
N7_EnableUV3=(int(ENABLE_UV3_tmp)!=0);
N7_UV3Switch=NODE_49_DROPLIST_ITEM_tmp;
N7_UV3Scale=param_26;
N7_UV3Offset=param_27;
N7_UV3Animation=(int(uv3EnableAnimation_tmp)!=0);
int l9_21=N7_UV2Switch;
float2 l9_22=N7_UV2Scale;
float2 l9_23=N7_UV2Offset;
bool l9_24=N7_UV2Animation;
bool l9_25=N7_EnableUV2;
float2 l9_26=tempGlobals.Surface_UVCoord0;
float2 l9_27=l9_26;
if (l9_25==N7_EnableUV2)
{
if (l9_21==0)
{
float2 l9_28=tempGlobals.Surface_UVCoord0;
l9_27=l9_28;
}
if (l9_21==1)
{
float2 l9_29=tempGlobals.Surface_UVCoord1;
l9_27=l9_29;
}
if (l9_21==2)
{
float2 l9_30=tempGlobals.gScreenCoord;
l9_27=l9_30;
}
}
else
{
if (l9_21==0)
{
float2 l9_31=tempGlobals.Surface_UVCoord0;
l9_27=l9_31;
}
if (l9_21==1)
{
float2 l9_32=tempGlobals.Surface_UVCoord1;
l9_27=l9_32;
}
if (l9_21==2)
{
float2 l9_33=tempGlobals.gScreenCoord;
l9_27=l9_33;
}
if (l9_21==3)
{
l9_27=tempGlobals.N7_TransformedUV2;
}
}
l9_27=(l9_27*l9_22)+l9_23;
if (l9_24)
{
float l9_34=tempGlobals.gTimeElapsed;
l9_27+=(l9_23*l9_34);
}
float2 l9_35=l9_27;
tempGlobals.N7_TransformedUV2=l9_35;
int l9_36=N7_UV3Switch;
float2 l9_37=N7_UV3Scale;
float2 l9_38=N7_UV3Offset;
bool l9_39=N7_UV3Animation;
bool l9_40=N7_EnableUV3;
float2 l9_41=tempGlobals.Surface_UVCoord0;
float2 l9_42=l9_41;
if (l9_40==N7_EnableUV2)
{
if (l9_36==0)
{
float2 l9_43=tempGlobals.Surface_UVCoord0;
l9_42=l9_43;
}
if (l9_36==1)
{
float2 l9_44=tempGlobals.Surface_UVCoord1;
l9_42=l9_44;
}
if (l9_36==2)
{
float2 l9_45=tempGlobals.gScreenCoord;
l9_42=l9_45;
}
}
else
{
if (l9_36==0)
{
float2 l9_46=tempGlobals.Surface_UVCoord0;
l9_42=l9_46;
}
if (l9_36==1)
{
float2 l9_47=tempGlobals.Surface_UVCoord1;
l9_42=l9_47;
}
if (l9_36==2)
{
float2 l9_48=tempGlobals.gScreenCoord;
l9_42=l9_48;
}
if (l9_36==3)
{
l9_42=tempGlobals.N7_TransformedUV2;
}
}
l9_42=(l9_42*l9_37)+l9_38;
if (l9_39)
{
float l9_49=tempGlobals.gTimeElapsed;
l9_42+=(l9_38*l9_49);
}
float2 l9_50=l9_42;
tempGlobals.N7_TransformedUV3=l9_50;
float2 l9_51=tempGlobals.Surface_UVCoord0;
float2 l9_52=l9_51;
float2 l9_53=tempGlobals.Surface_UVCoord0;
float2 l9_54=l9_53;
N7_Opacity=1.0;
N7_Albedo=N7_BaseColorValue;
if (N7_EnableBaseTexture)
{
int l9_55=N7_BaseTextureUVSwitch;
float2 l9_56=tempGlobals.Surface_UVCoord0;
float2 l9_57=l9_56;
if (l9_55==0)
{
float2 l9_58=tempGlobals.Surface_UVCoord0;
l9_57=l9_58;
}
if (l9_55==1)
{
float2 l9_59=tempGlobals.Surface_UVCoord1;
l9_57=l9_59;
}
if (l9_55==2)
{
l9_57=tempGlobals.N7_TransformedUV2;
}
if (l9_55==3)
{
l9_57=tempGlobals.N7_TransformedUV3;
}
float2 l9_60=l9_57;
l9_52=l9_60;
float2 l9_61=l9_52;
float4 l9_62=float4(0.0);
int l9_63;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_64=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_64=0;
}
else
{
l9_64=in.varStereoViewID;
}
int l9_65=l9_64;
l9_63=1-l9_65;
}
else
{
int l9_66=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_66=0;
}
else
{
l9_66=in.varStereoViewID;
}
int l9_67=l9_66;
l9_63=l9_67;
}
int l9_68=l9_63;
int l9_69=baseTexLayout_tmp;
int l9_70=l9_68;
float2 l9_71=l9_61;
bool l9_72=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_73=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_74=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_75=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_76=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_77=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_78=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_79=0.0;
bool l9_80=l9_77&&(!l9_75);
float l9_81=1.0;
float l9_82=l9_71.x;
int l9_83=l9_74.x;
if (l9_83==1)
{
l9_82=fract(l9_82);
}
else
{
if (l9_83==2)
{
float l9_84=fract(l9_82);
float l9_85=l9_82-l9_84;
float l9_86=step(0.25,fract(l9_85*0.5));
l9_82=mix(l9_84,1.0-l9_84,fast::clamp(l9_86,0.0,1.0));
}
}
l9_71.x=l9_82;
float l9_87=l9_71.y;
int l9_88=l9_74.y;
if (l9_88==1)
{
l9_87=fract(l9_87);
}
else
{
if (l9_88==2)
{
float l9_89=fract(l9_87);
float l9_90=l9_87-l9_89;
float l9_91=step(0.25,fract(l9_90*0.5));
l9_87=mix(l9_89,1.0-l9_89,fast::clamp(l9_91,0.0,1.0));
}
}
l9_71.y=l9_87;
if (l9_75)
{
bool l9_92=l9_77;
bool l9_93;
if (l9_92)
{
l9_93=l9_74.x==3;
}
else
{
l9_93=l9_92;
}
float l9_94=l9_71.x;
float l9_95=l9_76.x;
float l9_96=l9_76.z;
bool l9_97=l9_93;
float l9_98=l9_81;
float l9_99=fast::clamp(l9_94,l9_95,l9_96);
float l9_100=step(abs(l9_94-l9_99),9.9999997e-06);
l9_98*=(l9_100+((1.0-float(l9_97))*(1.0-l9_100)));
l9_94=l9_99;
l9_71.x=l9_94;
l9_81=l9_98;
bool l9_101=l9_77;
bool l9_102;
if (l9_101)
{
l9_102=l9_74.y==3;
}
else
{
l9_102=l9_101;
}
float l9_103=l9_71.y;
float l9_104=l9_76.y;
float l9_105=l9_76.w;
bool l9_106=l9_102;
float l9_107=l9_81;
float l9_108=fast::clamp(l9_103,l9_104,l9_105);
float l9_109=step(abs(l9_103-l9_108),9.9999997e-06);
l9_107*=(l9_109+((1.0-float(l9_106))*(1.0-l9_109)));
l9_103=l9_108;
l9_71.y=l9_103;
l9_81=l9_107;
}
float2 l9_110=l9_71;
bool l9_111=l9_72;
float3x3 l9_112=l9_73;
if (l9_111)
{
l9_110=float2((l9_112*float3(l9_110,1.0)).xy);
}
float2 l9_113=l9_110;
l9_71=l9_113;
float l9_114=l9_71.x;
int l9_115=l9_74.x;
bool l9_116=l9_80;
float l9_117=l9_81;
if ((l9_115==0)||(l9_115==3))
{
float l9_118=l9_114;
float l9_119=0.0;
float l9_120=1.0;
bool l9_121=l9_116;
float l9_122=l9_117;
float l9_123=fast::clamp(l9_118,l9_119,l9_120);
float l9_124=step(abs(l9_118-l9_123),9.9999997e-06);
l9_122*=(l9_124+((1.0-float(l9_121))*(1.0-l9_124)));
l9_118=l9_123;
l9_114=l9_118;
l9_117=l9_122;
}
l9_71.x=l9_114;
l9_81=l9_117;
float l9_125=l9_71.y;
int l9_126=l9_74.y;
bool l9_127=l9_80;
float l9_128=l9_81;
if ((l9_126==0)||(l9_126==3))
{
float l9_129=l9_125;
float l9_130=0.0;
float l9_131=1.0;
bool l9_132=l9_127;
float l9_133=l9_128;
float l9_134=fast::clamp(l9_129,l9_130,l9_131);
float l9_135=step(abs(l9_129-l9_134),9.9999997e-06);
l9_133*=(l9_135+((1.0-float(l9_132))*(1.0-l9_135)));
l9_129=l9_134;
l9_125=l9_129;
l9_128=l9_133;
}
l9_71.y=l9_125;
l9_81=l9_128;
float2 l9_136=l9_71;
int l9_137=l9_69;
int l9_138=l9_70;
float l9_139=l9_79;
float2 l9_140=l9_136;
int l9_141=l9_137;
int l9_142=l9_138;
float3 l9_143=float3(0.0);
if (l9_141==0)
{
l9_143=float3(l9_140,0.0);
}
else
{
if (l9_141==1)
{
l9_143=float3(l9_140.x,(l9_140.y*0.5)+(0.5-(float(l9_142)*0.5)),0.0);
}
else
{
l9_143=float3(l9_140,float(l9_142));
}
}
float3 l9_144=l9_143;
float3 l9_145=l9_144;
float4 l9_146=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_145.xy,bias(l9_139));
float4 l9_147=l9_146;
if (l9_77)
{
l9_147=mix(l9_78,l9_147,float4(l9_81));
}
float4 l9_148=l9_147;
l9_62=l9_148;
float4 l9_149=l9_62;
N7_Albedo*=l9_149;
}
if (N7_EnableRecolor)
{
float3 l9_150=((N7_RecolorR*N7_Albedo.x)+(N7_RecolorG*N7_Albedo.y))+(N7_RecolorB*N7_Albedo.z);
N7_Albedo=float4(l9_150.x,l9_150.y,l9_150.z,N7_Albedo.w);
}
if (N7_EnableOpacityTexture)
{
int l9_151=N7_OpacityUVSwitch;
float2 l9_152=tempGlobals.Surface_UVCoord0;
float2 l9_153=l9_152;
if (l9_151==0)
{
float2 l9_154=tempGlobals.Surface_UVCoord0;
l9_153=l9_154;
}
if (l9_151==1)
{
float2 l9_155=tempGlobals.Surface_UVCoord1;
l9_153=l9_155;
}
if (l9_151==2)
{
l9_153=tempGlobals.N7_TransformedUV2;
}
if (l9_151==3)
{
l9_153=tempGlobals.N7_TransformedUV3;
}
float2 l9_156=l9_153;
l9_54=l9_156;
float2 l9_157=l9_54;
float4 l9_158=float4(0.0);
int l9_159;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_160=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_160=0;
}
else
{
l9_160=in.varStereoViewID;
}
int l9_161=l9_160;
l9_159=1-l9_161;
}
else
{
int l9_162=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_162=0;
}
else
{
l9_162=in.varStereoViewID;
}
int l9_163=l9_162;
l9_159=l9_163;
}
int l9_164=l9_159;
int l9_165=opacityTexLayout_tmp;
int l9_166=l9_164;
float2 l9_167=l9_157;
bool l9_168=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_169=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_170=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_171=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_172=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_173=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_174=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_175=0.0;
bool l9_176=l9_173&&(!l9_171);
float l9_177=1.0;
float l9_178=l9_167.x;
int l9_179=l9_170.x;
if (l9_179==1)
{
l9_178=fract(l9_178);
}
else
{
if (l9_179==2)
{
float l9_180=fract(l9_178);
float l9_181=l9_178-l9_180;
float l9_182=step(0.25,fract(l9_181*0.5));
l9_178=mix(l9_180,1.0-l9_180,fast::clamp(l9_182,0.0,1.0));
}
}
l9_167.x=l9_178;
float l9_183=l9_167.y;
int l9_184=l9_170.y;
if (l9_184==1)
{
l9_183=fract(l9_183);
}
else
{
if (l9_184==2)
{
float l9_185=fract(l9_183);
float l9_186=l9_183-l9_185;
float l9_187=step(0.25,fract(l9_186*0.5));
l9_183=mix(l9_185,1.0-l9_185,fast::clamp(l9_187,0.0,1.0));
}
}
l9_167.y=l9_183;
if (l9_171)
{
bool l9_188=l9_173;
bool l9_189;
if (l9_188)
{
l9_189=l9_170.x==3;
}
else
{
l9_189=l9_188;
}
float l9_190=l9_167.x;
float l9_191=l9_172.x;
float l9_192=l9_172.z;
bool l9_193=l9_189;
float l9_194=l9_177;
float l9_195=fast::clamp(l9_190,l9_191,l9_192);
float l9_196=step(abs(l9_190-l9_195),9.9999997e-06);
l9_194*=(l9_196+((1.0-float(l9_193))*(1.0-l9_196)));
l9_190=l9_195;
l9_167.x=l9_190;
l9_177=l9_194;
bool l9_197=l9_173;
bool l9_198;
if (l9_197)
{
l9_198=l9_170.y==3;
}
else
{
l9_198=l9_197;
}
float l9_199=l9_167.y;
float l9_200=l9_172.y;
float l9_201=l9_172.w;
bool l9_202=l9_198;
float l9_203=l9_177;
float l9_204=fast::clamp(l9_199,l9_200,l9_201);
float l9_205=step(abs(l9_199-l9_204),9.9999997e-06);
l9_203*=(l9_205+((1.0-float(l9_202))*(1.0-l9_205)));
l9_199=l9_204;
l9_167.y=l9_199;
l9_177=l9_203;
}
float2 l9_206=l9_167;
bool l9_207=l9_168;
float3x3 l9_208=l9_169;
if (l9_207)
{
l9_206=float2((l9_208*float3(l9_206,1.0)).xy);
}
float2 l9_209=l9_206;
l9_167=l9_209;
float l9_210=l9_167.x;
int l9_211=l9_170.x;
bool l9_212=l9_176;
float l9_213=l9_177;
if ((l9_211==0)||(l9_211==3))
{
float l9_214=l9_210;
float l9_215=0.0;
float l9_216=1.0;
bool l9_217=l9_212;
float l9_218=l9_213;
float l9_219=fast::clamp(l9_214,l9_215,l9_216);
float l9_220=step(abs(l9_214-l9_219),9.9999997e-06);
l9_218*=(l9_220+((1.0-float(l9_217))*(1.0-l9_220)));
l9_214=l9_219;
l9_210=l9_214;
l9_213=l9_218;
}
l9_167.x=l9_210;
l9_177=l9_213;
float l9_221=l9_167.y;
int l9_222=l9_170.y;
bool l9_223=l9_176;
float l9_224=l9_177;
if ((l9_222==0)||(l9_222==3))
{
float l9_225=l9_221;
float l9_226=0.0;
float l9_227=1.0;
bool l9_228=l9_223;
float l9_229=l9_224;
float l9_230=fast::clamp(l9_225,l9_226,l9_227);
float l9_231=step(abs(l9_225-l9_230),9.9999997e-06);
l9_229*=(l9_231+((1.0-float(l9_228))*(1.0-l9_231)));
l9_225=l9_230;
l9_221=l9_225;
l9_224=l9_229;
}
l9_167.y=l9_221;
l9_177=l9_224;
float2 l9_232=l9_167;
int l9_233=l9_165;
int l9_234=l9_166;
float l9_235=l9_175;
float2 l9_236=l9_232;
int l9_237=l9_233;
int l9_238=l9_234;
float3 l9_239=float3(0.0);
if (l9_237==0)
{
l9_239=float3(l9_236,0.0);
}
else
{
if (l9_237==1)
{
l9_239=float3(l9_236.x,(l9_236.y*0.5)+(0.5-(float(l9_238)*0.5)),0.0);
}
else
{
l9_239=float3(l9_236,float(l9_238));
}
}
float3 l9_240=l9_239;
float3 l9_241=l9_240;
float4 l9_242=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_241.xy,bias(l9_235));
float4 l9_243=l9_242;
if (l9_173)
{
l9_243=mix(l9_174,l9_243,float4(l9_177));
}
float4 l9_244=l9_243;
l9_158=l9_244;
float4 l9_245=l9_158;
N7_Opacity=l9_245.x;
}
N7_Opacity*=N7_Albedo.w;
if (N7_VertexColorSwitch==1)
{
float4 l9_246=tempGlobals.VertexColor;
N7_Albedo*=l9_246;
float4 l9_247=tempGlobals.VertexColor;
N7_Opacity*=l9_247.w;
}
if (N7_EnableNormalTexture)
{
float3 l9_248=float3(0.0,0.0,1.0);
int l9_249=N7_NormalUVSwitch;
float2 l9_250=tempGlobals.Surface_UVCoord0;
float2 l9_251=l9_250;
if (l9_249==0)
{
float2 l9_252=tempGlobals.Surface_UVCoord0;
l9_251=l9_252;
}
if (l9_249==1)
{
float2 l9_253=tempGlobals.Surface_UVCoord1;
l9_251=l9_253;
}
if (l9_249==2)
{
l9_251=tempGlobals.N7_TransformedUV2;
}
if (l9_249==3)
{
l9_251=tempGlobals.N7_TransformedUV3;
}
float2 l9_254=l9_251;
float2 l9_255=l9_254;
float2 l9_256=l9_255;
float4 l9_257=float4(0.0);
int l9_258;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_259=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_259=0;
}
else
{
l9_259=in.varStereoViewID;
}
int l9_260=l9_259;
l9_258=1-l9_260;
}
else
{
int l9_261=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_261=0;
}
else
{
l9_261=in.varStereoViewID;
}
int l9_262=l9_261;
l9_258=l9_262;
}
int l9_263=l9_258;
int l9_264=normalTexLayout_tmp;
int l9_265=l9_263;
float2 l9_266=l9_256;
bool l9_267=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_268=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_269=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_270=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_271=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_272=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_273=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_274=0.0;
bool l9_275=l9_272&&(!l9_270);
float l9_276=1.0;
float l9_277=l9_266.x;
int l9_278=l9_269.x;
if (l9_278==1)
{
l9_277=fract(l9_277);
}
else
{
if (l9_278==2)
{
float l9_279=fract(l9_277);
float l9_280=l9_277-l9_279;
float l9_281=step(0.25,fract(l9_280*0.5));
l9_277=mix(l9_279,1.0-l9_279,fast::clamp(l9_281,0.0,1.0));
}
}
l9_266.x=l9_277;
float l9_282=l9_266.y;
int l9_283=l9_269.y;
if (l9_283==1)
{
l9_282=fract(l9_282);
}
else
{
if (l9_283==2)
{
float l9_284=fract(l9_282);
float l9_285=l9_282-l9_284;
float l9_286=step(0.25,fract(l9_285*0.5));
l9_282=mix(l9_284,1.0-l9_284,fast::clamp(l9_286,0.0,1.0));
}
}
l9_266.y=l9_282;
if (l9_270)
{
bool l9_287=l9_272;
bool l9_288;
if (l9_287)
{
l9_288=l9_269.x==3;
}
else
{
l9_288=l9_287;
}
float l9_289=l9_266.x;
float l9_290=l9_271.x;
float l9_291=l9_271.z;
bool l9_292=l9_288;
float l9_293=l9_276;
float l9_294=fast::clamp(l9_289,l9_290,l9_291);
float l9_295=step(abs(l9_289-l9_294),9.9999997e-06);
l9_293*=(l9_295+((1.0-float(l9_292))*(1.0-l9_295)));
l9_289=l9_294;
l9_266.x=l9_289;
l9_276=l9_293;
bool l9_296=l9_272;
bool l9_297;
if (l9_296)
{
l9_297=l9_269.y==3;
}
else
{
l9_297=l9_296;
}
float l9_298=l9_266.y;
float l9_299=l9_271.y;
float l9_300=l9_271.w;
bool l9_301=l9_297;
float l9_302=l9_276;
float l9_303=fast::clamp(l9_298,l9_299,l9_300);
float l9_304=step(abs(l9_298-l9_303),9.9999997e-06);
l9_302*=(l9_304+((1.0-float(l9_301))*(1.0-l9_304)));
l9_298=l9_303;
l9_266.y=l9_298;
l9_276=l9_302;
}
float2 l9_305=l9_266;
bool l9_306=l9_267;
float3x3 l9_307=l9_268;
if (l9_306)
{
l9_305=float2((l9_307*float3(l9_305,1.0)).xy);
}
float2 l9_308=l9_305;
l9_266=l9_308;
float l9_309=l9_266.x;
int l9_310=l9_269.x;
bool l9_311=l9_275;
float l9_312=l9_276;
if ((l9_310==0)||(l9_310==3))
{
float l9_313=l9_309;
float l9_314=0.0;
float l9_315=1.0;
bool l9_316=l9_311;
float l9_317=l9_312;
float l9_318=fast::clamp(l9_313,l9_314,l9_315);
float l9_319=step(abs(l9_313-l9_318),9.9999997e-06);
l9_317*=(l9_319+((1.0-float(l9_316))*(1.0-l9_319)));
l9_313=l9_318;
l9_309=l9_313;
l9_312=l9_317;
}
l9_266.x=l9_309;
l9_276=l9_312;
float l9_320=l9_266.y;
int l9_321=l9_269.y;
bool l9_322=l9_275;
float l9_323=l9_276;
if ((l9_321==0)||(l9_321==3))
{
float l9_324=l9_320;
float l9_325=0.0;
float l9_326=1.0;
bool l9_327=l9_322;
float l9_328=l9_323;
float l9_329=fast::clamp(l9_324,l9_325,l9_326);
float l9_330=step(abs(l9_324-l9_329),9.9999997e-06);
l9_328*=(l9_330+((1.0-float(l9_327))*(1.0-l9_330)));
l9_324=l9_329;
l9_320=l9_324;
l9_323=l9_328;
}
l9_266.y=l9_320;
l9_276=l9_323;
float2 l9_331=l9_266;
int l9_332=l9_264;
int l9_333=l9_265;
float l9_334=l9_274;
float2 l9_335=l9_331;
int l9_336=l9_332;
int l9_337=l9_333;
float3 l9_338=float3(0.0);
if (l9_336==0)
{
l9_338=float3(l9_335,0.0);
}
else
{
if (l9_336==1)
{
l9_338=float3(l9_335.x,(l9_335.y*0.5)+(0.5-(float(l9_337)*0.5)),0.0);
}
else
{
l9_338=float3(l9_335,float(l9_337));
}
}
float3 l9_339=l9_338;
float3 l9_340=l9_339;
float4 l9_341=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_340.xy,bias(l9_334));
float4 l9_342=l9_341;
if (l9_272)
{
l9_342=mix(l9_273,l9_342,float4(l9_276));
}
float4 l9_343=l9_342;
l9_257=l9_343;
float4 l9_344=l9_257;
N7_Normal=(l9_344.xyz*1.9921875)-float3(1.0);
if (N7_EnableDetailNormal)
{
int l9_345=N7_Detail_NormalUVSwitch;
float2 l9_346=tempGlobals.Surface_UVCoord0;
float2 l9_347=l9_346;
if (l9_345==0)
{
float2 l9_348=tempGlobals.Surface_UVCoord0;
l9_347=l9_348;
}
if (l9_345==1)
{
float2 l9_349=tempGlobals.Surface_UVCoord1;
l9_347=l9_349;
}
if (l9_345==2)
{
l9_347=tempGlobals.N7_TransformedUV2;
}
if (l9_345==3)
{
l9_347=tempGlobals.N7_TransformedUV3;
}
float2 l9_350=l9_347;
float2 l9_351=l9_350;
float2 l9_352=l9_351;
float4 l9_353=float4(0.0);
int l9_354;
if ((int(detailNormalTexHasSwappedViews_tmp)!=0))
{
int l9_355=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_355=0;
}
else
{
l9_355=in.varStereoViewID;
}
int l9_356=l9_355;
l9_354=1-l9_356;
}
else
{
int l9_357=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_357=0;
}
else
{
l9_357=in.varStereoViewID;
}
int l9_358=l9_357;
l9_354=l9_358;
}
int l9_359=l9_354;
int l9_360=detailNormalTexLayout_tmp;
int l9_361=l9_359;
float2 l9_362=l9_352;
bool l9_363=(int(SC_USE_UV_TRANSFORM_detailNormalTex_tmp)!=0);
float3x3 l9_364=(*sc_set0.UserUniforms).detailNormalTexTransform;
int2 l9_365=int2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp);
bool l9_366=(int(SC_USE_UV_MIN_MAX_detailNormalTex_tmp)!=0);
float4 l9_367=(*sc_set0.UserUniforms).detailNormalTexUvMinMax;
bool l9_368=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp)!=0);
float4 l9_369=(*sc_set0.UserUniforms).detailNormalTexBorderColor;
float l9_370=0.0;
bool l9_371=l9_368&&(!l9_366);
float l9_372=1.0;
float l9_373=l9_362.x;
int l9_374=l9_365.x;
if (l9_374==1)
{
l9_373=fract(l9_373);
}
else
{
if (l9_374==2)
{
float l9_375=fract(l9_373);
float l9_376=l9_373-l9_375;
float l9_377=step(0.25,fract(l9_376*0.5));
l9_373=mix(l9_375,1.0-l9_375,fast::clamp(l9_377,0.0,1.0));
}
}
l9_362.x=l9_373;
float l9_378=l9_362.y;
int l9_379=l9_365.y;
if (l9_379==1)
{
l9_378=fract(l9_378);
}
else
{
if (l9_379==2)
{
float l9_380=fract(l9_378);
float l9_381=l9_378-l9_380;
float l9_382=step(0.25,fract(l9_381*0.5));
l9_378=mix(l9_380,1.0-l9_380,fast::clamp(l9_382,0.0,1.0));
}
}
l9_362.y=l9_378;
if (l9_366)
{
bool l9_383=l9_368;
bool l9_384;
if (l9_383)
{
l9_384=l9_365.x==3;
}
else
{
l9_384=l9_383;
}
float l9_385=l9_362.x;
float l9_386=l9_367.x;
float l9_387=l9_367.z;
bool l9_388=l9_384;
float l9_389=l9_372;
float l9_390=fast::clamp(l9_385,l9_386,l9_387);
float l9_391=step(abs(l9_385-l9_390),9.9999997e-06);
l9_389*=(l9_391+((1.0-float(l9_388))*(1.0-l9_391)));
l9_385=l9_390;
l9_362.x=l9_385;
l9_372=l9_389;
bool l9_392=l9_368;
bool l9_393;
if (l9_392)
{
l9_393=l9_365.y==3;
}
else
{
l9_393=l9_392;
}
float l9_394=l9_362.y;
float l9_395=l9_367.y;
float l9_396=l9_367.w;
bool l9_397=l9_393;
float l9_398=l9_372;
float l9_399=fast::clamp(l9_394,l9_395,l9_396);
float l9_400=step(abs(l9_394-l9_399),9.9999997e-06);
l9_398*=(l9_400+((1.0-float(l9_397))*(1.0-l9_400)));
l9_394=l9_399;
l9_362.y=l9_394;
l9_372=l9_398;
}
float2 l9_401=l9_362;
bool l9_402=l9_363;
float3x3 l9_403=l9_364;
if (l9_402)
{
l9_401=float2((l9_403*float3(l9_401,1.0)).xy);
}
float2 l9_404=l9_401;
l9_362=l9_404;
float l9_405=l9_362.x;
int l9_406=l9_365.x;
bool l9_407=l9_371;
float l9_408=l9_372;
if ((l9_406==0)||(l9_406==3))
{
float l9_409=l9_405;
float l9_410=0.0;
float l9_411=1.0;
bool l9_412=l9_407;
float l9_413=l9_408;
float l9_414=fast::clamp(l9_409,l9_410,l9_411);
float l9_415=step(abs(l9_409-l9_414),9.9999997e-06);
l9_413*=(l9_415+((1.0-float(l9_412))*(1.0-l9_415)));
l9_409=l9_414;
l9_405=l9_409;
l9_408=l9_413;
}
l9_362.x=l9_405;
l9_372=l9_408;
float l9_416=l9_362.y;
int l9_417=l9_365.y;
bool l9_418=l9_371;
float l9_419=l9_372;
if ((l9_417==0)||(l9_417==3))
{
float l9_420=l9_416;
float l9_421=0.0;
float l9_422=1.0;
bool l9_423=l9_418;
float l9_424=l9_419;
float l9_425=fast::clamp(l9_420,l9_421,l9_422);
float l9_426=step(abs(l9_420-l9_425),9.9999997e-06);
l9_424*=(l9_426+((1.0-float(l9_423))*(1.0-l9_426)));
l9_420=l9_425;
l9_416=l9_420;
l9_419=l9_424;
}
l9_362.y=l9_416;
l9_372=l9_419;
float2 l9_427=l9_362;
int l9_428=l9_360;
int l9_429=l9_361;
float l9_430=l9_370;
float2 l9_431=l9_427;
int l9_432=l9_428;
int l9_433=l9_429;
float3 l9_434=float3(0.0);
if (l9_432==0)
{
l9_434=float3(l9_431,0.0);
}
else
{
if (l9_432==1)
{
l9_434=float3(l9_431.x,(l9_431.y*0.5)+(0.5-(float(l9_433)*0.5)),0.0);
}
else
{
l9_434=float3(l9_431,float(l9_433));
}
}
float3 l9_435=l9_434;
float3 l9_436=l9_435;
float4 l9_437=sc_set0.detailNormalTex.sample(sc_set0.detailNormalTexSmpSC,l9_436.xy,bias(l9_430));
float4 l9_438=l9_437;
if (l9_368)
{
l9_438=mix(l9_369,l9_438,float4(l9_372));
}
float4 l9_439=l9_438;
l9_353=l9_439;
float4 l9_440=l9_353;
l9_248=(l9_440.xyz*1.9921875)-float3(1.0);
}
float3 l9_441=N7_Normal;
float3 l9_442=l9_248;
float3 l9_443=l9_441+float3(0.0,0.0,1.0);
float3 l9_444=l9_442*float3(-1.0,-1.0,1.0);
float3 l9_445=normalize((l9_443*dot(l9_443,l9_444))-(l9_444*l9_443.z));
N7_Normal=l9_445;
float3 l9_446=tempGlobals.VertexNormal_WorldSpace;
float3 l9_447=l9_446;
float3 l9_448=tempGlobals.VertexTangent_WorldSpace;
float3 l9_449=l9_448;
float3 l9_450=tempGlobals.VertexBinormal_WorldSpace;
float3 l9_451=l9_450;
float3x3 l9_452=float3x3(float3(l9_449),float3(l9_451),float3(l9_447));
N7_Normal=normalize(l9_452*N7_Normal);
}
else
{
float3 l9_453=tempGlobals.VertexNormal_WorldSpace;
N7_Normal=normalize(l9_453);
}
float2 l9_454=tempGlobals.Surface_UVCoord0;
float2 l9_455=l9_454;
float3 l9_456=float3(0.0);
float3 l9_457=float3(0.0);
N7_Emissive=float3(0.0);
if (N7_EnableEmissiveTexture)
{
int l9_458=N7_EmissiveUVSwitch;
float2 l9_459=tempGlobals.Surface_UVCoord0;
float2 l9_460=l9_459;
if (l9_458==0)
{
float2 l9_461=tempGlobals.Surface_UVCoord0;
l9_460=l9_461;
}
if (l9_458==1)
{
float2 l9_462=tempGlobals.Surface_UVCoord1;
l9_460=l9_462;
}
if (l9_458==2)
{
l9_460=tempGlobals.N7_TransformedUV2;
}
if (l9_458==3)
{
l9_460=tempGlobals.N7_TransformedUV3;
}
float2 l9_463=l9_460;
l9_455=l9_463;
float2 l9_464=l9_455;
float4 l9_465=float4(0.0);
int l9_466;
if ((int(emissiveTexHasSwappedViews_tmp)!=0))
{
int l9_467=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_467=0;
}
else
{
l9_467=in.varStereoViewID;
}
int l9_468=l9_467;
l9_466=1-l9_468;
}
else
{
int l9_469=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_469=0;
}
else
{
l9_469=in.varStereoViewID;
}
int l9_470=l9_469;
l9_466=l9_470;
}
int l9_471=l9_466;
int l9_472=emissiveTexLayout_tmp;
int l9_473=l9_471;
float2 l9_474=l9_464;
bool l9_475=(int(SC_USE_UV_TRANSFORM_emissiveTex_tmp)!=0);
float3x3 l9_476=(*sc_set0.UserUniforms).emissiveTexTransform;
int2 l9_477=int2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex_tmp,SC_SOFTWARE_WRAP_MODE_V_emissiveTex_tmp);
bool l9_478=(int(SC_USE_UV_MIN_MAX_emissiveTex_tmp)!=0);
float4 l9_479=(*sc_set0.UserUniforms).emissiveTexUvMinMax;
bool l9_480=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex_tmp)!=0);
float4 l9_481=(*sc_set0.UserUniforms).emissiveTexBorderColor;
float l9_482=0.0;
bool l9_483=l9_480&&(!l9_478);
float l9_484=1.0;
float l9_485=l9_474.x;
int l9_486=l9_477.x;
if (l9_486==1)
{
l9_485=fract(l9_485);
}
else
{
if (l9_486==2)
{
float l9_487=fract(l9_485);
float l9_488=l9_485-l9_487;
float l9_489=step(0.25,fract(l9_488*0.5));
l9_485=mix(l9_487,1.0-l9_487,fast::clamp(l9_489,0.0,1.0));
}
}
l9_474.x=l9_485;
float l9_490=l9_474.y;
int l9_491=l9_477.y;
if (l9_491==1)
{
l9_490=fract(l9_490);
}
else
{
if (l9_491==2)
{
float l9_492=fract(l9_490);
float l9_493=l9_490-l9_492;
float l9_494=step(0.25,fract(l9_493*0.5));
l9_490=mix(l9_492,1.0-l9_492,fast::clamp(l9_494,0.0,1.0));
}
}
l9_474.y=l9_490;
if (l9_478)
{
bool l9_495=l9_480;
bool l9_496;
if (l9_495)
{
l9_496=l9_477.x==3;
}
else
{
l9_496=l9_495;
}
float l9_497=l9_474.x;
float l9_498=l9_479.x;
float l9_499=l9_479.z;
bool l9_500=l9_496;
float l9_501=l9_484;
float l9_502=fast::clamp(l9_497,l9_498,l9_499);
float l9_503=step(abs(l9_497-l9_502),9.9999997e-06);
l9_501*=(l9_503+((1.0-float(l9_500))*(1.0-l9_503)));
l9_497=l9_502;
l9_474.x=l9_497;
l9_484=l9_501;
bool l9_504=l9_480;
bool l9_505;
if (l9_504)
{
l9_505=l9_477.y==3;
}
else
{
l9_505=l9_504;
}
float l9_506=l9_474.y;
float l9_507=l9_479.y;
float l9_508=l9_479.w;
bool l9_509=l9_505;
float l9_510=l9_484;
float l9_511=fast::clamp(l9_506,l9_507,l9_508);
float l9_512=step(abs(l9_506-l9_511),9.9999997e-06);
l9_510*=(l9_512+((1.0-float(l9_509))*(1.0-l9_512)));
l9_506=l9_511;
l9_474.y=l9_506;
l9_484=l9_510;
}
float2 l9_513=l9_474;
bool l9_514=l9_475;
float3x3 l9_515=l9_476;
if (l9_514)
{
l9_513=float2((l9_515*float3(l9_513,1.0)).xy);
}
float2 l9_516=l9_513;
l9_474=l9_516;
float l9_517=l9_474.x;
int l9_518=l9_477.x;
bool l9_519=l9_483;
float l9_520=l9_484;
if ((l9_518==0)||(l9_518==3))
{
float l9_521=l9_517;
float l9_522=0.0;
float l9_523=1.0;
bool l9_524=l9_519;
float l9_525=l9_520;
float l9_526=fast::clamp(l9_521,l9_522,l9_523);
float l9_527=step(abs(l9_521-l9_526),9.9999997e-06);
l9_525*=(l9_527+((1.0-float(l9_524))*(1.0-l9_527)));
l9_521=l9_526;
l9_517=l9_521;
l9_520=l9_525;
}
l9_474.x=l9_517;
l9_484=l9_520;
float l9_528=l9_474.y;
int l9_529=l9_477.y;
bool l9_530=l9_483;
float l9_531=l9_484;
if ((l9_529==0)||(l9_529==3))
{
float l9_532=l9_528;
float l9_533=0.0;
float l9_534=1.0;
bool l9_535=l9_530;
float l9_536=l9_531;
float l9_537=fast::clamp(l9_532,l9_533,l9_534);
float l9_538=step(abs(l9_532-l9_537),9.9999997e-06);
l9_536*=(l9_538+((1.0-float(l9_535))*(1.0-l9_538)));
l9_532=l9_537;
l9_528=l9_532;
l9_531=l9_536;
}
l9_474.y=l9_528;
l9_484=l9_531;
float2 l9_539=l9_474;
int l9_540=l9_472;
int l9_541=l9_473;
float l9_542=l9_482;
float2 l9_543=l9_539;
int l9_544=l9_540;
int l9_545=l9_541;
float3 l9_546=float3(0.0);
if (l9_544==0)
{
l9_546=float3(l9_543,0.0);
}
else
{
if (l9_544==1)
{
l9_546=float3(l9_543.x,(l9_543.y*0.5)+(0.5-(float(l9_545)*0.5)),0.0);
}
else
{
l9_546=float3(l9_543,float(l9_545));
}
}
float3 l9_547=l9_546;
float3 l9_548=l9_547;
float4 l9_549=sc_set0.emissiveTex.sample(sc_set0.emissiveTexSmpSC,l9_548.xy,bias(l9_542));
float4 l9_550=l9_549;
if (l9_480)
{
l9_550=mix(l9_481,l9_550,float4(l9_484));
}
float4 l9_551=l9_550;
l9_465=l9_551;
float4 l9_552=l9_465;
N7_Emissive=l9_552.xyz;
}
if (N7_VertexColorSwitch==2)
{
float4 l9_553=tempGlobals.VertexColor;
N7_Emissive+=l9_553.xyz;
}
if ((N7_VertexColorSwitch==2)||N7_EnableEmissiveTexture)
{
float3 l9_554=(N7_Emissive*N7_EmissiveColor)*float3(N7_EmissiveIntensity);
float3 l9_555=float3(2.2);
float l9_556;
if (l9_554.x<=0.0)
{
l9_556=0.0;
}
else
{
l9_556=pow(l9_554.x,l9_555.x);
}
float l9_557=l9_556;
float l9_558;
if (l9_554.y<=0.0)
{
l9_558=0.0;
}
else
{
l9_558=pow(l9_554.y,l9_555.y);
}
float l9_559=l9_558;
float l9_560;
if (l9_554.z<=0.0)
{
l9_560=0.0;
}
else
{
l9_560=pow(l9_554.z,l9_555.z);
}
float3 l9_561=float3(l9_557,l9_559,l9_560);
N7_Emissive=l9_561;
}
if (N7_EnableSimpleReflection)
{
float3 l9_562=tempGlobals.ViewDirWS;
float3 l9_563=l9_562;
float3 l9_564=reflect(l9_563,N7_Normal);
l9_564.z=-l9_564.z;
float3 l9_565=l9_564;
float l9_566=((l9_565.x*l9_565.x)+(l9_565.y*l9_565.y))+((l9_565.z+1.0)*(l9_565.z+1.0));
float l9_567;
if (l9_566<=0.0)
{
l9_567=0.0;
}
else
{
l9_567=sqrt(l9_566);
}
float l9_568=l9_567;
float l9_569=2.0*l9_568;
float2 l9_570=(l9_565.xy/float2(l9_569))+float2(0.5);
float2 l9_571=l9_570;
float2 l9_572=float2(1.0)-l9_571;
float2 l9_573=l9_572;
float4 l9_574=float4(0.0);
int l9_575;
if ((int(reflectionTexHasSwappedViews_tmp)!=0))
{
int l9_576=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_576=0;
}
else
{
l9_576=in.varStereoViewID;
}
int l9_577=l9_576;
l9_575=1-l9_577;
}
else
{
int l9_578=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_578=0;
}
else
{
l9_578=in.varStereoViewID;
}
int l9_579=l9_578;
l9_575=l9_579;
}
int l9_580=l9_575;
int l9_581=reflectionTexLayout_tmp;
int l9_582=l9_580;
float2 l9_583=l9_573;
bool l9_584=(int(SC_USE_UV_TRANSFORM_reflectionTex_tmp)!=0);
float3x3 l9_585=(*sc_set0.UserUniforms).reflectionTexTransform;
int2 l9_586=int2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex_tmp,SC_SOFTWARE_WRAP_MODE_V_reflectionTex_tmp);
bool l9_587=(int(SC_USE_UV_MIN_MAX_reflectionTex_tmp)!=0);
float4 l9_588=(*sc_set0.UserUniforms).reflectionTexUvMinMax;
bool l9_589=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex_tmp)!=0);
float4 l9_590=(*sc_set0.UserUniforms).reflectionTexBorderColor;
float l9_591=0.0;
bool l9_592=l9_589&&(!l9_587);
float l9_593=1.0;
float l9_594=l9_583.x;
int l9_595=l9_586.x;
if (l9_595==1)
{
l9_594=fract(l9_594);
}
else
{
if (l9_595==2)
{
float l9_596=fract(l9_594);
float l9_597=l9_594-l9_596;
float l9_598=step(0.25,fract(l9_597*0.5));
l9_594=mix(l9_596,1.0-l9_596,fast::clamp(l9_598,0.0,1.0));
}
}
l9_583.x=l9_594;
float l9_599=l9_583.y;
int l9_600=l9_586.y;
if (l9_600==1)
{
l9_599=fract(l9_599);
}
else
{
if (l9_600==2)
{
float l9_601=fract(l9_599);
float l9_602=l9_599-l9_601;
float l9_603=step(0.25,fract(l9_602*0.5));
l9_599=mix(l9_601,1.0-l9_601,fast::clamp(l9_603,0.0,1.0));
}
}
l9_583.y=l9_599;
if (l9_587)
{
bool l9_604=l9_589;
bool l9_605;
if (l9_604)
{
l9_605=l9_586.x==3;
}
else
{
l9_605=l9_604;
}
float l9_606=l9_583.x;
float l9_607=l9_588.x;
float l9_608=l9_588.z;
bool l9_609=l9_605;
float l9_610=l9_593;
float l9_611=fast::clamp(l9_606,l9_607,l9_608);
float l9_612=step(abs(l9_606-l9_611),9.9999997e-06);
l9_610*=(l9_612+((1.0-float(l9_609))*(1.0-l9_612)));
l9_606=l9_611;
l9_583.x=l9_606;
l9_593=l9_610;
bool l9_613=l9_589;
bool l9_614;
if (l9_613)
{
l9_614=l9_586.y==3;
}
else
{
l9_614=l9_613;
}
float l9_615=l9_583.y;
float l9_616=l9_588.y;
float l9_617=l9_588.w;
bool l9_618=l9_614;
float l9_619=l9_593;
float l9_620=fast::clamp(l9_615,l9_616,l9_617);
float l9_621=step(abs(l9_615-l9_620),9.9999997e-06);
l9_619*=(l9_621+((1.0-float(l9_618))*(1.0-l9_621)));
l9_615=l9_620;
l9_583.y=l9_615;
l9_593=l9_619;
}
float2 l9_622=l9_583;
bool l9_623=l9_584;
float3x3 l9_624=l9_585;
if (l9_623)
{
l9_622=float2((l9_624*float3(l9_622,1.0)).xy);
}
float2 l9_625=l9_622;
l9_583=l9_625;
float l9_626=l9_583.x;
int l9_627=l9_586.x;
bool l9_628=l9_592;
float l9_629=l9_593;
if ((l9_627==0)||(l9_627==3))
{
float l9_630=l9_626;
float l9_631=0.0;
float l9_632=1.0;
bool l9_633=l9_628;
float l9_634=l9_629;
float l9_635=fast::clamp(l9_630,l9_631,l9_632);
float l9_636=step(abs(l9_630-l9_635),9.9999997e-06);
l9_634*=(l9_636+((1.0-float(l9_633))*(1.0-l9_636)));
l9_630=l9_635;
l9_626=l9_630;
l9_629=l9_634;
}
l9_583.x=l9_626;
l9_593=l9_629;
float l9_637=l9_583.y;
int l9_638=l9_586.y;
bool l9_639=l9_592;
float l9_640=l9_593;
if ((l9_638==0)||(l9_638==3))
{
float l9_641=l9_637;
float l9_642=0.0;
float l9_643=1.0;
bool l9_644=l9_639;
float l9_645=l9_640;
float l9_646=fast::clamp(l9_641,l9_642,l9_643);
float l9_647=step(abs(l9_641-l9_646),9.9999997e-06);
l9_645*=(l9_647+((1.0-float(l9_644))*(1.0-l9_647)));
l9_641=l9_646;
l9_637=l9_641;
l9_640=l9_645;
}
l9_583.y=l9_637;
l9_593=l9_640;
float2 l9_648=l9_583;
int l9_649=l9_581;
int l9_650=l9_582;
float l9_651=l9_591;
float2 l9_652=l9_648;
int l9_653=l9_649;
int l9_654=l9_650;
float3 l9_655=float3(0.0);
if (l9_653==0)
{
l9_655=float3(l9_652,0.0);
}
else
{
if (l9_653==1)
{
l9_655=float3(l9_652.x,(l9_652.y*0.5)+(0.5-(float(l9_654)*0.5)),0.0);
}
else
{
l9_655=float3(l9_652,float(l9_654));
}
}
float3 l9_656=l9_655;
float3 l9_657=l9_656;
float4 l9_658=sc_set0.reflectionTex.sample(sc_set0.reflectionTexSmpSC,l9_657.xy,bias(l9_651));
float4 l9_659=l9_658;
if (l9_589)
{
l9_659=mix(l9_590,l9_659,float4(l9_593));
}
float4 l9_660=l9_659;
l9_574=l9_660;
float4 l9_661=l9_574;
l9_456=l9_661.xyz;
if (N7_EnableModulationTexture)
{
int l9_662=N7_ModuationUVSwitch;
float2 l9_663=tempGlobals.Surface_UVCoord0;
float2 l9_664=l9_663;
if (l9_662==0)
{
float2 l9_665=tempGlobals.Surface_UVCoord0;
l9_664=l9_665;
}
if (l9_662==1)
{
float2 l9_666=tempGlobals.Surface_UVCoord1;
l9_664=l9_666;
}
if (l9_662==2)
{
l9_664=tempGlobals.N7_TransformedUV2;
}
if (l9_662==3)
{
l9_664=tempGlobals.N7_TransformedUV3;
}
float2 l9_667=l9_664;
float2 l9_668=l9_667;
float2 l9_669=l9_668;
float4 l9_670=float4(0.0);
int l9_671;
if ((int(reflectionModulationTexHasSwappedViews_tmp)!=0))
{
int l9_672=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_672=0;
}
else
{
l9_672=in.varStereoViewID;
}
int l9_673=l9_672;
l9_671=1-l9_673;
}
else
{
int l9_674=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_674=0;
}
else
{
l9_674=in.varStereoViewID;
}
int l9_675=l9_674;
l9_671=l9_675;
}
int l9_676=l9_671;
int l9_677=reflectionModulationTexLayout_tmp;
int l9_678=l9_676;
float2 l9_679=l9_669;
bool l9_680=(int(SC_USE_UV_TRANSFORM_reflectionModulationTex_tmp)!=0);
float3x3 l9_681=(*sc_set0.UserUniforms).reflectionModulationTexTransform;
int2 l9_682=int2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex_tmp,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex_tmp);
bool l9_683=(int(SC_USE_UV_MIN_MAX_reflectionModulationTex_tmp)!=0);
float4 l9_684=(*sc_set0.UserUniforms).reflectionModulationTexUvMinMax;
bool l9_685=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex_tmp)!=0);
float4 l9_686=(*sc_set0.UserUniforms).reflectionModulationTexBorderColor;
float l9_687=0.0;
bool l9_688=l9_685&&(!l9_683);
float l9_689=1.0;
float l9_690=l9_679.x;
int l9_691=l9_682.x;
if (l9_691==1)
{
l9_690=fract(l9_690);
}
else
{
if (l9_691==2)
{
float l9_692=fract(l9_690);
float l9_693=l9_690-l9_692;
float l9_694=step(0.25,fract(l9_693*0.5));
l9_690=mix(l9_692,1.0-l9_692,fast::clamp(l9_694,0.0,1.0));
}
}
l9_679.x=l9_690;
float l9_695=l9_679.y;
int l9_696=l9_682.y;
if (l9_696==1)
{
l9_695=fract(l9_695);
}
else
{
if (l9_696==2)
{
float l9_697=fract(l9_695);
float l9_698=l9_695-l9_697;
float l9_699=step(0.25,fract(l9_698*0.5));
l9_695=mix(l9_697,1.0-l9_697,fast::clamp(l9_699,0.0,1.0));
}
}
l9_679.y=l9_695;
if (l9_683)
{
bool l9_700=l9_685;
bool l9_701;
if (l9_700)
{
l9_701=l9_682.x==3;
}
else
{
l9_701=l9_700;
}
float l9_702=l9_679.x;
float l9_703=l9_684.x;
float l9_704=l9_684.z;
bool l9_705=l9_701;
float l9_706=l9_689;
float l9_707=fast::clamp(l9_702,l9_703,l9_704);
float l9_708=step(abs(l9_702-l9_707),9.9999997e-06);
l9_706*=(l9_708+((1.0-float(l9_705))*(1.0-l9_708)));
l9_702=l9_707;
l9_679.x=l9_702;
l9_689=l9_706;
bool l9_709=l9_685;
bool l9_710;
if (l9_709)
{
l9_710=l9_682.y==3;
}
else
{
l9_710=l9_709;
}
float l9_711=l9_679.y;
float l9_712=l9_684.y;
float l9_713=l9_684.w;
bool l9_714=l9_710;
float l9_715=l9_689;
float l9_716=fast::clamp(l9_711,l9_712,l9_713);
float l9_717=step(abs(l9_711-l9_716),9.9999997e-06);
l9_715*=(l9_717+((1.0-float(l9_714))*(1.0-l9_717)));
l9_711=l9_716;
l9_679.y=l9_711;
l9_689=l9_715;
}
float2 l9_718=l9_679;
bool l9_719=l9_680;
float3x3 l9_720=l9_681;
if (l9_719)
{
l9_718=float2((l9_720*float3(l9_718,1.0)).xy);
}
float2 l9_721=l9_718;
l9_679=l9_721;
float l9_722=l9_679.x;
int l9_723=l9_682.x;
bool l9_724=l9_688;
float l9_725=l9_689;
if ((l9_723==0)||(l9_723==3))
{
float l9_726=l9_722;
float l9_727=0.0;
float l9_728=1.0;
bool l9_729=l9_724;
float l9_730=l9_725;
float l9_731=fast::clamp(l9_726,l9_727,l9_728);
float l9_732=step(abs(l9_726-l9_731),9.9999997e-06);
l9_730*=(l9_732+((1.0-float(l9_729))*(1.0-l9_732)));
l9_726=l9_731;
l9_722=l9_726;
l9_725=l9_730;
}
l9_679.x=l9_722;
l9_689=l9_725;
float l9_733=l9_679.y;
int l9_734=l9_682.y;
bool l9_735=l9_688;
float l9_736=l9_689;
if ((l9_734==0)||(l9_734==3))
{
float l9_737=l9_733;
float l9_738=0.0;
float l9_739=1.0;
bool l9_740=l9_735;
float l9_741=l9_736;
float l9_742=fast::clamp(l9_737,l9_738,l9_739);
float l9_743=step(abs(l9_737-l9_742),9.9999997e-06);
l9_741*=(l9_743+((1.0-float(l9_740))*(1.0-l9_743)));
l9_737=l9_742;
l9_733=l9_737;
l9_736=l9_741;
}
l9_679.y=l9_733;
l9_689=l9_736;
float2 l9_744=l9_679;
int l9_745=l9_677;
int l9_746=l9_678;
float l9_747=l9_687;
float2 l9_748=l9_744;
int l9_749=l9_745;
int l9_750=l9_746;
float3 l9_751=float3(0.0);
if (l9_749==0)
{
l9_751=float3(l9_748,0.0);
}
else
{
if (l9_749==1)
{
l9_751=float3(l9_748.x,(l9_748.y*0.5)+(0.5-(float(l9_750)*0.5)),0.0);
}
else
{
l9_751=float3(l9_748,float(l9_750));
}
}
float3 l9_752=l9_751;
float3 l9_753=l9_752;
float4 l9_754=sc_set0.reflectionModulationTex.sample(sc_set0.reflectionModulationTexSmpSC,l9_753.xy,bias(l9_747));
float4 l9_755=l9_754;
if (l9_685)
{
l9_755=mix(l9_686,l9_755,float4(l9_689));
}
float4 l9_756=l9_755;
l9_670=l9_756;
float4 l9_757=l9_670;
float3 l9_758=l9_757.xyz;
l9_456*=l9_758;
}
float3 l9_759=l9_456;
float3 l9_760;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_760=float3(pow(l9_759.x,2.2),pow(l9_759.y,2.2),pow(l9_759.z,2.2));
}
else
{
l9_760=l9_759*l9_759;
}
float3 l9_761=l9_760;
l9_456=l9_761;
l9_456*=N7_ReflectionIntensity;
}
if (N7_EnableRimHighlight)
{
float3 l9_762=N7_RimColor*N7_RimIntensity;
if (N7_EnableRimColorTexture)
{
int l9_763=N7_RimUVSwitch;
float2 l9_764=tempGlobals.Surface_UVCoord0;
float2 l9_765=l9_764;
if (l9_763==0)
{
float2 l9_766=tempGlobals.Surface_UVCoord0;
l9_765=l9_766;
}
if (l9_763==1)
{
float2 l9_767=tempGlobals.Surface_UVCoord1;
l9_765=l9_767;
}
if (l9_763==2)
{
l9_765=tempGlobals.N7_TransformedUV2;
}
if (l9_763==3)
{
l9_765=tempGlobals.N7_TransformedUV3;
}
float2 l9_768=l9_765;
float2 l9_769=l9_768;
float2 l9_770=l9_769;
float4 l9_771=float4(0.0);
int l9_772;
if ((int(rimColorTexHasSwappedViews_tmp)!=0))
{
int l9_773=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_773=0;
}
else
{
l9_773=in.varStereoViewID;
}
int l9_774=l9_773;
l9_772=1-l9_774;
}
else
{
int l9_775=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_775=0;
}
else
{
l9_775=in.varStereoViewID;
}
int l9_776=l9_775;
l9_772=l9_776;
}
int l9_777=l9_772;
int l9_778=rimColorTexLayout_tmp;
int l9_779=l9_777;
float2 l9_780=l9_770;
bool l9_781=(int(SC_USE_UV_TRANSFORM_rimColorTex_tmp)!=0);
float3x3 l9_782=(*sc_set0.UserUniforms).rimColorTexTransform;
int2 l9_783=int2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex_tmp,SC_SOFTWARE_WRAP_MODE_V_rimColorTex_tmp);
bool l9_784=(int(SC_USE_UV_MIN_MAX_rimColorTex_tmp)!=0);
float4 l9_785=(*sc_set0.UserUniforms).rimColorTexUvMinMax;
bool l9_786=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex_tmp)!=0);
float4 l9_787=(*sc_set0.UserUniforms).rimColorTexBorderColor;
float l9_788=0.0;
bool l9_789=l9_786&&(!l9_784);
float l9_790=1.0;
float l9_791=l9_780.x;
int l9_792=l9_783.x;
if (l9_792==1)
{
l9_791=fract(l9_791);
}
else
{
if (l9_792==2)
{
float l9_793=fract(l9_791);
float l9_794=l9_791-l9_793;
float l9_795=step(0.25,fract(l9_794*0.5));
l9_791=mix(l9_793,1.0-l9_793,fast::clamp(l9_795,0.0,1.0));
}
}
l9_780.x=l9_791;
float l9_796=l9_780.y;
int l9_797=l9_783.y;
if (l9_797==1)
{
l9_796=fract(l9_796);
}
else
{
if (l9_797==2)
{
float l9_798=fract(l9_796);
float l9_799=l9_796-l9_798;
float l9_800=step(0.25,fract(l9_799*0.5));
l9_796=mix(l9_798,1.0-l9_798,fast::clamp(l9_800,0.0,1.0));
}
}
l9_780.y=l9_796;
if (l9_784)
{
bool l9_801=l9_786;
bool l9_802;
if (l9_801)
{
l9_802=l9_783.x==3;
}
else
{
l9_802=l9_801;
}
float l9_803=l9_780.x;
float l9_804=l9_785.x;
float l9_805=l9_785.z;
bool l9_806=l9_802;
float l9_807=l9_790;
float l9_808=fast::clamp(l9_803,l9_804,l9_805);
float l9_809=step(abs(l9_803-l9_808),9.9999997e-06);
l9_807*=(l9_809+((1.0-float(l9_806))*(1.0-l9_809)));
l9_803=l9_808;
l9_780.x=l9_803;
l9_790=l9_807;
bool l9_810=l9_786;
bool l9_811;
if (l9_810)
{
l9_811=l9_783.y==3;
}
else
{
l9_811=l9_810;
}
float l9_812=l9_780.y;
float l9_813=l9_785.y;
float l9_814=l9_785.w;
bool l9_815=l9_811;
float l9_816=l9_790;
float l9_817=fast::clamp(l9_812,l9_813,l9_814);
float l9_818=step(abs(l9_812-l9_817),9.9999997e-06);
l9_816*=(l9_818+((1.0-float(l9_815))*(1.0-l9_818)));
l9_812=l9_817;
l9_780.y=l9_812;
l9_790=l9_816;
}
float2 l9_819=l9_780;
bool l9_820=l9_781;
float3x3 l9_821=l9_782;
if (l9_820)
{
l9_819=float2((l9_821*float3(l9_819,1.0)).xy);
}
float2 l9_822=l9_819;
l9_780=l9_822;
float l9_823=l9_780.x;
int l9_824=l9_783.x;
bool l9_825=l9_789;
float l9_826=l9_790;
if ((l9_824==0)||(l9_824==3))
{
float l9_827=l9_823;
float l9_828=0.0;
float l9_829=1.0;
bool l9_830=l9_825;
float l9_831=l9_826;
float l9_832=fast::clamp(l9_827,l9_828,l9_829);
float l9_833=step(abs(l9_827-l9_832),9.9999997e-06);
l9_831*=(l9_833+((1.0-float(l9_830))*(1.0-l9_833)));
l9_827=l9_832;
l9_823=l9_827;
l9_826=l9_831;
}
l9_780.x=l9_823;
l9_790=l9_826;
float l9_834=l9_780.y;
int l9_835=l9_783.y;
bool l9_836=l9_789;
float l9_837=l9_790;
if ((l9_835==0)||(l9_835==3))
{
float l9_838=l9_834;
float l9_839=0.0;
float l9_840=1.0;
bool l9_841=l9_836;
float l9_842=l9_837;
float l9_843=fast::clamp(l9_838,l9_839,l9_840);
float l9_844=step(abs(l9_838-l9_843),9.9999997e-06);
l9_842*=(l9_844+((1.0-float(l9_841))*(1.0-l9_844)));
l9_838=l9_843;
l9_834=l9_838;
l9_837=l9_842;
}
l9_780.y=l9_834;
l9_790=l9_837;
float2 l9_845=l9_780;
int l9_846=l9_778;
int l9_847=l9_779;
float l9_848=l9_788;
float2 l9_849=l9_845;
int l9_850=l9_846;
int l9_851=l9_847;
float3 l9_852=float3(0.0);
if (l9_850==0)
{
l9_852=float3(l9_849,0.0);
}
else
{
if (l9_850==1)
{
l9_852=float3(l9_849.x,(l9_849.y*0.5)+(0.5-(float(l9_851)*0.5)),0.0);
}
else
{
l9_852=float3(l9_849,float(l9_851));
}
}
float3 l9_853=l9_852;
float3 l9_854=l9_853;
float4 l9_855=sc_set0.rimColorTex.sample(sc_set0.rimColorTexSmpSC,l9_854.xy,bias(l9_848));
float4 l9_856=l9_855;
if (l9_786)
{
l9_856=mix(l9_787,l9_856,float4(l9_790));
}
float4 l9_857=l9_856;
l9_771=l9_857;
float4 l9_858=l9_771;
l9_762*=l9_858.xyz;
}
float3 l9_859=tempGlobals.ViewDirWS;
float3 l9_860=l9_859;
float l9_861=abs(dot(N7_Normal,l9_860));
if (!N7_EnableRimInvert)
{
l9_861=1.0-l9_861;
}
float l9_862=l9_861;
float l9_863=N7_RimExponent;
float l9_864;
if (l9_862<=0.0)
{
l9_864=0.0;
}
else
{
l9_864=pow(l9_862,l9_863);
}
float l9_865=l9_864;
float l9_866=l9_865;
float3 l9_867=l9_762;
float3 l9_868;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_868=float3(pow(l9_867.x,2.2),pow(l9_867.y,2.2),pow(l9_867.z,2.2));
}
else
{
l9_868=l9_867*l9_867;
}
float3 l9_869=l9_868;
l9_457+=(l9_869*l9_866);
}
float3 l9_870=(N7_Emissive+l9_456)+l9_457;
float3 l9_871=float3(0.45454547);
float l9_872;
if (l9_870.x<=0.0)
{
l9_872=0.0;
}
else
{
l9_872=pow(l9_870.x,l9_871.x);
}
float l9_873=l9_872;
float l9_874;
if (l9_870.y<=0.0)
{
l9_874=0.0;
}
else
{
l9_874=pow(l9_870.y,l9_871.y);
}
float l9_875=l9_874;
float l9_876;
if (l9_870.z<=0.0)
{
l9_876=0.0;
}
else
{
l9_876=pow(l9_870.z,l9_871.z);
}
float3 l9_877=float3(l9_873,l9_875,l9_876);
N7_Emissive=l9_877;
float3 l9_878;
if (N7_VertexColorSwitch==3)
{
float4 l9_879=tempGlobals.VertexColor;
l9_878=l9_879.xyz;
}
else
{
l9_878=float3(1.0);
}
N7_AO=l9_878;
if (N7_EnableMaterialParamsTexture)
{
int l9_880=N7_MaterialParamsUVSwitch;
float2 l9_881=tempGlobals.Surface_UVCoord0;
float2 l9_882=l9_881;
if (l9_880==0)
{
float2 l9_883=tempGlobals.Surface_UVCoord0;
l9_882=l9_883;
}
if (l9_880==1)
{
float2 l9_884=tempGlobals.Surface_UVCoord1;
l9_882=l9_884;
}
if (l9_880==2)
{
l9_882=tempGlobals.N7_TransformedUV2;
}
if (l9_880==3)
{
l9_882=tempGlobals.N7_TransformedUV3;
}
float2 l9_885=l9_882;
float2 l9_886=l9_885;
float2 l9_887=l9_886;
float4 l9_888=float4(0.0);
int l9_889;
if ((int(materialParamsTexHasSwappedViews_tmp)!=0))
{
int l9_890=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_890=0;
}
else
{
l9_890=in.varStereoViewID;
}
int l9_891=l9_890;
l9_889=1-l9_891;
}
else
{
int l9_892=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_892=0;
}
else
{
l9_892=in.varStereoViewID;
}
int l9_893=l9_892;
l9_889=l9_893;
}
int l9_894=l9_889;
int l9_895=materialParamsTexLayout_tmp;
int l9_896=l9_894;
float2 l9_897=l9_887;
bool l9_898=(int(SC_USE_UV_TRANSFORM_materialParamsTex_tmp)!=0);
float3x3 l9_899=(*sc_set0.UserUniforms).materialParamsTexTransform;
int2 l9_900=int2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex_tmp,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex_tmp);
bool l9_901=(int(SC_USE_UV_MIN_MAX_materialParamsTex_tmp)!=0);
float4 l9_902=(*sc_set0.UserUniforms).materialParamsTexUvMinMax;
bool l9_903=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex_tmp)!=0);
float4 l9_904=(*sc_set0.UserUniforms).materialParamsTexBorderColor;
float l9_905=0.0;
bool l9_906=l9_903&&(!l9_901);
float l9_907=1.0;
float l9_908=l9_897.x;
int l9_909=l9_900.x;
if (l9_909==1)
{
l9_908=fract(l9_908);
}
else
{
if (l9_909==2)
{
float l9_910=fract(l9_908);
float l9_911=l9_908-l9_910;
float l9_912=step(0.25,fract(l9_911*0.5));
l9_908=mix(l9_910,1.0-l9_910,fast::clamp(l9_912,0.0,1.0));
}
}
l9_897.x=l9_908;
float l9_913=l9_897.y;
int l9_914=l9_900.y;
if (l9_914==1)
{
l9_913=fract(l9_913);
}
else
{
if (l9_914==2)
{
float l9_915=fract(l9_913);
float l9_916=l9_913-l9_915;
float l9_917=step(0.25,fract(l9_916*0.5));
l9_913=mix(l9_915,1.0-l9_915,fast::clamp(l9_917,0.0,1.0));
}
}
l9_897.y=l9_913;
if (l9_901)
{
bool l9_918=l9_903;
bool l9_919;
if (l9_918)
{
l9_919=l9_900.x==3;
}
else
{
l9_919=l9_918;
}
float l9_920=l9_897.x;
float l9_921=l9_902.x;
float l9_922=l9_902.z;
bool l9_923=l9_919;
float l9_924=l9_907;
float l9_925=fast::clamp(l9_920,l9_921,l9_922);
float l9_926=step(abs(l9_920-l9_925),9.9999997e-06);
l9_924*=(l9_926+((1.0-float(l9_923))*(1.0-l9_926)));
l9_920=l9_925;
l9_897.x=l9_920;
l9_907=l9_924;
bool l9_927=l9_903;
bool l9_928;
if (l9_927)
{
l9_928=l9_900.y==3;
}
else
{
l9_928=l9_927;
}
float l9_929=l9_897.y;
float l9_930=l9_902.y;
float l9_931=l9_902.w;
bool l9_932=l9_928;
float l9_933=l9_907;
float l9_934=fast::clamp(l9_929,l9_930,l9_931);
float l9_935=step(abs(l9_929-l9_934),9.9999997e-06);
l9_933*=(l9_935+((1.0-float(l9_932))*(1.0-l9_935)));
l9_929=l9_934;
l9_897.y=l9_929;
l9_907=l9_933;
}
float2 l9_936=l9_897;
bool l9_937=l9_898;
float3x3 l9_938=l9_899;
if (l9_937)
{
l9_936=float2((l9_938*float3(l9_936,1.0)).xy);
}
float2 l9_939=l9_936;
l9_897=l9_939;
float l9_940=l9_897.x;
int l9_941=l9_900.x;
bool l9_942=l9_906;
float l9_943=l9_907;
if ((l9_941==0)||(l9_941==3))
{
float l9_944=l9_940;
float l9_945=0.0;
float l9_946=1.0;
bool l9_947=l9_942;
float l9_948=l9_943;
float l9_949=fast::clamp(l9_944,l9_945,l9_946);
float l9_950=step(abs(l9_944-l9_949),9.9999997e-06);
l9_948*=(l9_950+((1.0-float(l9_947))*(1.0-l9_950)));
l9_944=l9_949;
l9_940=l9_944;
l9_943=l9_948;
}
l9_897.x=l9_940;
l9_907=l9_943;
float l9_951=l9_897.y;
int l9_952=l9_900.y;
bool l9_953=l9_906;
float l9_954=l9_907;
if ((l9_952==0)||(l9_952==3))
{
float l9_955=l9_951;
float l9_956=0.0;
float l9_957=1.0;
bool l9_958=l9_953;
float l9_959=l9_954;
float l9_960=fast::clamp(l9_955,l9_956,l9_957);
float l9_961=step(abs(l9_955-l9_960),9.9999997e-06);
l9_959*=(l9_961+((1.0-float(l9_958))*(1.0-l9_961)));
l9_955=l9_960;
l9_951=l9_955;
l9_954=l9_959;
}
l9_897.y=l9_951;
l9_907=l9_954;
float2 l9_962=l9_897;
int l9_963=l9_895;
int l9_964=l9_896;
float l9_965=l9_905;
float2 l9_966=l9_962;
int l9_967=l9_963;
int l9_968=l9_964;
float3 l9_969=float3(0.0);
if (l9_967==0)
{
l9_969=float3(l9_966,0.0);
}
else
{
if (l9_967==1)
{
l9_969=float3(l9_966.x,(l9_966.y*0.5)+(0.5-(float(l9_968)*0.5)),0.0);
}
else
{
l9_969=float3(l9_966,float(l9_968));
}
}
float3 l9_970=l9_969;
float3 l9_971=l9_970;
float4 l9_972=sc_set0.materialParamsTex.sample(sc_set0.materialParamsTexSmpSC,l9_971.xy,bias(l9_965));
float4 l9_973=l9_972;
if (l9_903)
{
l9_973=mix(l9_904,l9_973,float4(l9_907));
}
float4 l9_974=l9_973;
l9_888=l9_974;
float4 l9_975=l9_888;
float3 l9_976=l9_975.xyz;
N7_AO*=l9_976.z;
}
param_28=N7_Albedo;
param_29=N7_Opacity;
param_30=N7_Normal;
param_31=N7_Emissive;
param_32=N7_AO;
Albedo_N7=param_28;
Opacity_N7=param_29;
Normal_N7=param_30;
Emissive_N7=param_31;
AO_N7=param_32;
float4 Output_N36=float4(0.0);
float3 param_34=Albedo_N7.xyz;
float param_35=Opacity_N7;
float3 param_36=Normal_N7;
float3 param_37=Emissive_N7;
float3 param_38=AO_N7;
ssGlobals param_40=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_40.BumpedNormal=param_36;
}
param_35=fast::clamp(param_35,0.0,1.0);
float l9_977=param_35;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_977<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_978=gl_FragCoord;
float2 l9_979=floor(mod(l9_978.xy,float2(4.0)));
float l9_980=(mod(dot(l9_979,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_977<l9_980)
{
discard_fragment();
}
}
param_34=fast::max(param_34,float3(0.0));
float4 param_39;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_39=float4(param_34,param_35);
}
else
{
param_37=fast::max(param_37,float3(0.0));
float l9_981=0.0;
float l9_982=1.0;
param_38=fast::clamp(param_38,float3(0.0),float3(1.0));
float3 l9_983=float3(1.0);
float3 l9_984=param_34;
float l9_985=param_35;
float3 l9_986=param_40.BumpedNormal;
float3 l9_987=param_40.PositionWS;
float3 l9_988=param_40.ViewDirWS;
float3 l9_989=param_37;
float l9_990=l9_981;
float l9_991=l9_982;
float3 l9_992=param_38;
float3 l9_993=l9_983;
param_39=ngsCalculateLighting(l9_984,l9_985,l9_986,l9_987,l9_988,l9_989,l9_990,l9_991,l9_992,l9_993,in.varStereoViewID,sc_set0.sc_EnvmapDiffuse,sc_set0.sc_EnvmapDiffuseSmpSC,sc_set0.sc_EnvmapSpecular,sc_set0.sc_EnvmapSpecularSmpSC,sc_set0.sc_ScreenTexture,sc_set0.sc_ScreenTextureSmpSC,sc_set0.sc_ShadowTexture,sc_set0.sc_ShadowTextureSmpSC,sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC,(*sc_set0.UserUniforms),sc_set0.sc_RayTracedShadowTexture,sc_set0.sc_RayTracedShadowTextureSmpSC,sc_set0.sc_RayTracedDiffIndTexture,sc_set0.sc_RayTracedDiffIndTextureSmpSC,gl_FragCoord,in.varShadowTex,out.FragColor0);
}
param_39=fast::max(param_39,float4(0.0));
Output_N36=param_39;
FinalColor=Output_N36;
bool l9_994=(*sc_set0.UserUniforms).isProxyMode!=0;
if (l9_994)
{
float4 param_41=FinalColor;
if ((int(sc_ProxyAlphaOne_tmp)!=0))
{
param_41.w=1.0;
}
float4 l9_995=fast::max(param_41,float4(0.0));
float4 param_42=l9_995;
if (sc_ShaderCacheConstant_tmp!=0)
{
param_42.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=param_42;
return out;
}
float4 param_43=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_996=param_43;
float4 l9_997=l9_996;
float l9_998=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_998=l9_997.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_998=fast::clamp(l9_997.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_998=fast::clamp(dot(l9_997.xyz,float3(l9_997.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_998=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_998=(1.0-dot(l9_997.xyz,float3(0.33333001)))*l9_997.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_998=(1.0-fast::clamp(dot(l9_997.xyz,float3(1.0)),0.0,1.0))*l9_997.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_998=fast::clamp(dot(l9_997.xyz,float3(1.0)),0.0,1.0)*l9_997.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_998=fast::clamp(dot(l9_997.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_998=fast::clamp(dot(l9_997.xyz,float3(1.0)),0.0,1.0)*l9_997.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_998=dot(l9_997.xyz,float3(0.33333001))*l9_997.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_998=1.0-fast::clamp(dot(l9_997.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_998=fast::clamp(dot(l9_997.xyz,float3(1.0)),0.0,1.0);
}
}
}
}
}
}
}
}
}
}
}
}
float l9_999=l9_998;
float l9_1000=l9_999;
float l9_1001=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_1000;
float3 l9_1002=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_996.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_1003=float4(l9_1002.x,l9_1002.y,l9_1002.z,l9_1001);
param_43=l9_1003;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_43=float4(param_43.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_1004=param_43;
float4 l9_1005=float4(0.0);
float4 l9_1006=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_1007=out.FragColor0;
float4 l9_1008=l9_1007;
l9_1006=l9_1008;
}
else
{
float4 l9_1009=gl_FragCoord;
float2 l9_1010=l9_1009.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1011=l9_1010;
float2 l9_1012=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_1013=1;
int l9_1014=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1014=0;
}
else
{
l9_1014=in.varStereoViewID;
}
int l9_1015=l9_1014;
int l9_1016=l9_1015;
float3 l9_1017=float3(l9_1011,0.0);
int l9_1018=l9_1013;
int l9_1019=l9_1016;
if (l9_1018==1)
{
l9_1017.y=((2.0*l9_1017.y)+float(l9_1019))-1.0;
}
float2 l9_1020=l9_1017.xy;
l9_1012=l9_1020;
}
else
{
l9_1012=l9_1011;
}
float2 l9_1021=l9_1012;
float2 l9_1022=l9_1021;
float2 l9_1023=l9_1022;
float2 l9_1024=l9_1023;
float l9_1025=0.0;
int l9_1026;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_1027=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1027=0;
}
else
{
l9_1027=in.varStereoViewID;
}
int l9_1028=l9_1027;
l9_1026=1-l9_1028;
}
else
{
int l9_1029=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1029=0;
}
else
{
l9_1029=in.varStereoViewID;
}
int l9_1030=l9_1029;
l9_1026=l9_1030;
}
int l9_1031=l9_1026;
float2 l9_1032=l9_1024;
int l9_1033=sc_ScreenTextureLayout_tmp;
int l9_1034=l9_1031;
float l9_1035=l9_1025;
float2 l9_1036=l9_1032;
int l9_1037=l9_1033;
int l9_1038=l9_1034;
float3 l9_1039=float3(0.0);
if (l9_1037==0)
{
l9_1039=float3(l9_1036,0.0);
}
else
{
if (l9_1037==1)
{
l9_1039=float3(l9_1036.x,(l9_1036.y*0.5)+(0.5-(float(l9_1038)*0.5)),0.0);
}
else
{
l9_1039=float3(l9_1036,float(l9_1038));
}
}
float3 l9_1040=l9_1039;
float3 l9_1041=l9_1040;
float4 l9_1042=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_1041.xy,bias(l9_1035));
float4 l9_1043=l9_1042;
float4 l9_1044=l9_1043;
l9_1006=l9_1044;
}
float4 l9_1045=l9_1006;
float3 l9_1046=l9_1045.xyz;
float3 l9_1047=l9_1046;
float3 l9_1048=l9_1004.xyz;
float3 l9_1049=definedBlend(l9_1047,l9_1048,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_1005=float4(l9_1049.x,l9_1049.y,l9_1049.z,l9_1005.w);
float3 l9_1050=mix(l9_1046,l9_1005.xyz,float3(l9_1004.w));
l9_1005=float4(l9_1050.x,l9_1050.y,l9_1050.z,l9_1005.w);
l9_1005.w=1.0;
float4 l9_1051=l9_1005;
param_43=l9_1051;
}
else
{
float4 l9_1052=param_43;
float4 l9_1053=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_1053=float4(mix(float3(1.0),l9_1052.xyz,float3(l9_1052.w)),l9_1052.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_1054=l9_1052.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_1054=fast::clamp(l9_1054,0.0,1.0);
}
l9_1053=float4(l9_1052.xyz*l9_1054,l9_1054);
}
else
{
l9_1053=l9_1052;
}
}
float4 l9_1055=l9_1053;
param_43=l9_1055;
}
}
}
float4 l9_1056=param_43;
FinalColor=l9_1056;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
if (PreviewInfo.Saved)
{
FinalColor=float4(PreviewInfo.Color);
}
else
{
FinalColor=float4(0.0);
}
}
float4 l9_1057=float4(0.0);
l9_1057=float4(0.0);
float4 l9_1058=l9_1057;
float4 Cost=l9_1058;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float3 param_44=in.varPos;
float4 param_45=FinalColor;
FinalColor=sc_OutputMotionVectorsIfNeeded(param_44,param_45,in.varStereoViewID,(*sc_set0.UserUniforms));
float4 param_46=FinalColor;
float4 l9_1059=param_46;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_1059.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=l9_1059;
return out;
}
} // FRAGMENT SHADER

namespace SNAP_RECV {
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float2 N7_TransformedUV2;
float2 N7_TransformedUV3;
float3 BumpedNormal;
float3 ViewDirWS;
float3 PositionWS;
float3 VertexNormal_WorldSpace;
float3 VertexTangent_WorldSpace;
float3 VertexBinormal_WorldSpace;
float2 Surface_UVCoord0;
float2 Surface_UVCoord1;
float4 VertexColor;
float2 gScreenCoord;
float3 SurfacePosition_WorldSpace;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int receivesRayTracedReflections;
int isProxyMode;
int receivesRayTracedShadows;
int receivesRayTracedDiffuseIndirect;
float4 sc_RayTracedReflectionTextureSize;
float4 sc_RayTracedReflectionTextureDims;
float4 sc_RayTracedReflectionTextureView;
float4 sc_RayTracedShadowTextureSize;
float4 sc_RayTracedShadowTextureDims;
float4 sc_RayTracedShadowTextureView;
float4 sc_RayTracedDiffIndTextureSize;
float4 sc_RayTracedDiffIndTextureDims;
float4 sc_RayTracedDiffIndTextureView;
float receiver_mask;
float3 OriginNormalizationScale;
float3 OriginNormalizationScaleInv;
float3 OriginNormalizationOffset;
int receiverId;
int instance_id;
int lray_triangles_last;
int noEarlyZ;
int has_animated_pn;
int emitter_stride;
int proxy_offset_position;
int proxy_offset_normal;
int proxy_offset_tangent;
int proxy_offset_color;
int proxy_offset_texture0;
int proxy_offset_texture1;
int proxy_offset_texture2;
int proxy_offset_texture3;
int proxy_format_position;
int proxy_format_normal;
int proxy_format_tangent;
int proxy_format_color;
int proxy_format_texture0;
int proxy_format_texture1;
int proxy_format_texture2;
int proxy_format_texture3;
float4 z_rayDirectionsSize;
float4 z_rayDirectionsDims;
float4 z_rayDirectionsView;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float4 baseColor;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float3 recolorRed;
float3 recolorGreen;
float3 recolorBlue;
float4 opacityTexSize;
float4 opacityTexDims;
float4 opacityTexView;
float3x3 opacityTexTransform;
float4 opacityTexUvMinMax;
float4 opacityTexBorderColor;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float4 detailNormalTexSize;
float4 detailNormalTexDims;
float4 detailNormalTexView;
float3x3 detailNormalTexTransform;
float4 detailNormalTexUvMinMax;
float4 detailNormalTexBorderColor;
float4 emissiveTexSize;
float4 emissiveTexDims;
float4 emissiveTexView;
float3x3 emissiveTexTransform;
float4 emissiveTexUvMinMax;
float4 emissiveTexBorderColor;
float3 emissiveColor;
float emissiveIntensity;
float4 reflectionTexSize;
float4 reflectionTexDims;
float4 reflectionTexView;
float3x3 reflectionTexTransform;
float4 reflectionTexUvMinMax;
float4 reflectionTexBorderColor;
float reflectionIntensity;
float4 reflectionModulationTexSize;
float4 reflectionModulationTexDims;
float4 reflectionModulationTexView;
float3x3 reflectionModulationTexTransform;
float4 reflectionModulationTexUvMinMax;
float4 reflectionModulationTexBorderColor;
float3 rimColor;
float rimIntensity;
float rimExponent;
float4 rimColorTexSize;
float4 rimColorTexDims;
float4 rimColorTexView;
float3x3 rimColorTexTransform;
float4 rimColorTexUvMinMax;
float4 rimColorTexBorderColor;
float metallic;
float roughness;
float4 materialParamsTexSize;
float4 materialParamsTexDims;
float4 materialParamsTexView;
float3x3 materialParamsTexTransform;
float4 materialParamsTexUvMinMax;
float4 materialParamsTexBorderColor;
float specularAoIntensity;
float specularAoDarkening;
float2 uv2Scale;
float2 uv2Offset;
float2 uv3Scale;
float2 uv3Offset;
float depthRef;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct layoutIndices_obj
{
uint _Triangles[1];
};
struct layoutVertices_obj
{
float _Vertices[1];
};
struct layoutVerticesPN_obj
{
float _VerticesPN[1];
};
struct sc_Set0
{
const device layoutIndices_obj* layoutIndices [[id(0)]];
const device layoutVertices_obj* layoutVertices [[id(1)]];
const device layoutVerticesPN_obj* layoutVerticesPN [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> baseTex [[id(4)]];
texture2d<float> detailNormalTex [[id(5)]];
texture2d<float> emissiveTex [[id(6)]];
texture2d<float> intensityTexture [[id(7)]];
texture2d<float> materialParamsTex [[id(8)]];
texture2d<float> normalTex [[id(9)]];
texture2d<float> opacityTex [[id(10)]];
texture2d<float> reflectionModulationTex [[id(11)]];
texture2d<float> reflectionTex [[id(12)]];
texture2d<float> rimColorTex [[id(13)]];
texture2d<float> sc_EnvmapDiffuse [[id(14)]];
texture2d<float> sc_EnvmapSpecular [[id(15)]];
texture2d<float> sc_RayTracedDiffIndTexture [[id(24)]];
texture2d<float> sc_RayTracedShadowTexture [[id(26)]];
texture2d<float> sc_SSAOTexture [[id(27)]];
texture2d<float> sc_ScreenTexture [[id(28)]];
texture2d<float> sc_ShadowTexture [[id(29)]];
texture2d<uint> z_hitIdAndBarycentric [[id(31)]];
texture2d<float> z_rayDirections [[id(32)]];
sampler baseTexSmpSC [[id(33)]];
sampler detailNormalTexSmpSC [[id(34)]];
sampler emissiveTexSmpSC [[id(35)]];
sampler intensityTextureSmpSC [[id(36)]];
sampler materialParamsTexSmpSC [[id(37)]];
sampler normalTexSmpSC [[id(38)]];
sampler opacityTexSmpSC [[id(39)]];
sampler reflectionModulationTexSmpSC [[id(40)]];
sampler reflectionTexSmpSC [[id(41)]];
sampler rimColorTexSmpSC [[id(42)]];
sampler sc_EnvmapDiffuseSmpSC [[id(43)]];
sampler sc_EnvmapSpecularSmpSC [[id(44)]];
sampler sc_RayTracedDiffIndTextureSmpSC [[id(46)]];
sampler sc_RayTracedShadowTextureSmpSC [[id(48)]];
sampler sc_SSAOTextureSmpSC [[id(49)]];
sampler sc_ScreenTextureSmpSC [[id(50)]];
sampler sc_ShadowTextureSmpSC [[id(51)]];
sampler z_hitIdAndBarycentricSmp [[id(53)]];
sampler z_rayDirectionsSmpSC [[id(54)]];
constant userUniformsObj* UserUniforms [[id(55)]];
};
struct main_recv_out
{
uint4 position_and_mask [[color(0)]];
uint4 normal_and_more [[color(1)]];
};
struct main_recv_in
{
float3 varPos [[user(locn0)]];
float3 varNormal [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varPackedTex [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
fragment main_recv_out main_recv(main_recv_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_recv_out out={};
int N7_VertexColorSwitch=0;
float4 N7_BaseColorValue=float4(0.0);
bool N7_EnableBaseTexture=false;
int N7_BaseTextureUVSwitch=0;
bool N7_EnableRecolor=false;
float3 N7_RecolorR=float3(0.0);
float3 N7_RecolorG=float3(0.0);
float3 N7_RecolorB=float3(0.0);
bool N7_EnableOpacityTexture=false;
int N7_OpacityUVSwitch=0;
bool N7_EnableNormalTexture=false;
int N7_NormalUVSwitch=0;
bool N7_EnableDetailNormal=false;
int N7_Detail_NormalUVSwitch=0;
bool N7_EnableUV2=false;
int N7_UV2Switch=0;
float2 N7_UV2Scale=float2(0.0);
float2 N7_UV2Offset=float2(0.0);
bool N7_UV2Animation=false;
bool N7_EnableUV3=false;
int N7_UV3Switch=0;
float2 N7_UV3Scale=float2(0.0);
float2 N7_UV3Offset=float2(0.0);
bool N7_UV3Animation=false;
float4 N7_Albedo=float4(0.0);
float N7_Opacity=0.0;
float3 N7_Normal=float3(0.0);
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPos);
Globals.PositionWS=in.varPos;
Globals.VertexNormal_WorldSpace=normalize(in.varNormal);
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
Globals.Surface_UVCoord0=in.varPackedTex.xy;
Globals.Surface_UVCoord1=in.varPackedTex.zw;
Globals.VertexColor=in.varColor;
float4 l9_0=gl_FragCoord;
float2 l9_1=l9_0.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2=l9_1;
float2 l9_3=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_4=1;
int l9_5=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5=0;
}
else
{
l9_5=in.varStereoViewID;
}
int l9_6=l9_5;
int l9_7=l9_6;
float3 l9_8=float3(l9_2,0.0);
int l9_9=l9_4;
int l9_10=l9_7;
if (l9_9==1)
{
l9_8.y=((2.0*l9_8.y)+float(l9_10))-1.0;
}
float2 l9_11=l9_8.xy;
l9_3=l9_11;
}
else
{
l9_3=l9_2;
}
float2 l9_12=l9_3;
float2 l9_13=l9_12;
Globals.gScreenCoord=l9_13;
Globals.SurfacePosition_WorldSpace=in.varPos;
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
float4 Output_N5=float4(0.0);
float4 param=(*sc_set0.UserUniforms).baseColor;
Output_N5=param;
float3 Output_N85=float3(0.0);
float3 param_1=(*sc_set0.UserUniforms).recolorRed;
Output_N85=param_1;
float3 Output_N86=float3(0.0);
float3 param_2=(*sc_set0.UserUniforms).recolorGreen;
Output_N86=param_2;
float3 Output_N87=float3(0.0);
float3 param_3=(*sc_set0.UserUniforms).recolorBlue;
Output_N87=param_3;
float2 Output_N14=float2(0.0);
float2 param_4=(*sc_set0.UserUniforms).uv2Scale;
Output_N14=param_4;
float2 Output_N15=float2(0.0);
float2 param_5=(*sc_set0.UserUniforms).uv2Offset;
Output_N15=param_5;
float2 Output_N50=float2(0.0);
float2 param_6=(*sc_set0.UserUniforms).uv3Scale;
Output_N50=param_6;
float2 Output_N51=float2(0.0);
float2 param_7=(*sc_set0.UserUniforms).uv3Offset;
Output_N51=param_7;
float Opacity_N7=0.0;
float3 Normal_N7=float3(0.0);
float4 param_8=Output_N5;
float3 param_9=Output_N85;
float3 param_10=Output_N86;
float3 param_11=Output_N87;
float2 param_12=Output_N14;
float2 param_13=Output_N15;
float2 param_14=Output_N50;
float2 param_15=Output_N51;
ssGlobals param_18=Globals;
ssGlobals tempGlobals=param_18;
float param_16=0.0;
float3 param_17=float3(0.0);
N7_VertexColorSwitch=NODE_38_DROPLIST_ITEM_tmp;
N7_BaseColorValue=param_8;
N7_EnableBaseTexture=(int(ENABLE_BASE_TEX_tmp)!=0);
N7_BaseTextureUVSwitch=NODE_27_DROPLIST_ITEM_tmp;
N7_EnableRecolor=(int(ENABLE_RECOLOR_tmp)!=0);
N7_RecolorR=param_9;
N7_RecolorG=param_10;
N7_RecolorB=param_11;
N7_EnableOpacityTexture=(int(ENABLE_OPACITY_TEX_tmp)!=0);
N7_OpacityUVSwitch=NODE_69_DROPLIST_ITEM_tmp;
N7_EnableNormalTexture=(int(ENABLE_NORMALMAP_tmp)!=0);
N7_NormalUVSwitch=NODE_181_DROPLIST_ITEM_tmp;
N7_EnableDetailNormal=(int(ENABLE_DETAIL_NORMAL_tmp)!=0);
N7_Detail_NormalUVSwitch=NODE_184_DROPLIST_ITEM_tmp;
N7_EnableUV2=(int(ENABLE_UV2_tmp)!=0);
N7_UV2Switch=NODE_13_DROPLIST_ITEM_tmp;
N7_UV2Scale=param_12;
N7_UV2Offset=param_13;
N7_UV2Animation=(int(uv2EnableAnimation_tmp)!=0);
N7_EnableUV3=(int(ENABLE_UV3_tmp)!=0);
N7_UV3Switch=NODE_49_DROPLIST_ITEM_tmp;
N7_UV3Scale=param_14;
N7_UV3Offset=param_15;
N7_UV3Animation=(int(uv3EnableAnimation_tmp)!=0);
int l9_14=N7_UV2Switch;
float2 l9_15=N7_UV2Scale;
float2 l9_16=N7_UV2Offset;
bool l9_17=N7_UV2Animation;
bool l9_18=N7_EnableUV2;
float2 l9_19=tempGlobals.Surface_UVCoord0;
float2 l9_20=l9_19;
if (l9_18==N7_EnableUV2)
{
if (l9_14==0)
{
float2 l9_21=tempGlobals.Surface_UVCoord0;
l9_20=l9_21;
}
if (l9_14==1)
{
float2 l9_22=tempGlobals.Surface_UVCoord1;
l9_20=l9_22;
}
if (l9_14==2)
{
float2 l9_23=tempGlobals.gScreenCoord;
l9_20=l9_23;
}
}
else
{
if (l9_14==0)
{
float2 l9_24=tempGlobals.Surface_UVCoord0;
l9_20=l9_24;
}
if (l9_14==1)
{
float2 l9_25=tempGlobals.Surface_UVCoord1;
l9_20=l9_25;
}
if (l9_14==2)
{
float2 l9_26=tempGlobals.gScreenCoord;
l9_20=l9_26;
}
if (l9_14==3)
{
l9_20=tempGlobals.N7_TransformedUV2;
}
}
l9_20=(l9_20*l9_15)+l9_16;
if (l9_17)
{
float l9_27=tempGlobals.gTimeElapsed;
l9_20+=(l9_16*l9_27);
}
float2 l9_28=l9_20;
tempGlobals.N7_TransformedUV2=l9_28;
int l9_29=N7_UV3Switch;
float2 l9_30=N7_UV3Scale;
float2 l9_31=N7_UV3Offset;
bool l9_32=N7_UV3Animation;
bool l9_33=N7_EnableUV3;
float2 l9_34=tempGlobals.Surface_UVCoord0;
float2 l9_35=l9_34;
if (l9_33==N7_EnableUV2)
{
if (l9_29==0)
{
float2 l9_36=tempGlobals.Surface_UVCoord0;
l9_35=l9_36;
}
if (l9_29==1)
{
float2 l9_37=tempGlobals.Surface_UVCoord1;
l9_35=l9_37;
}
if (l9_29==2)
{
float2 l9_38=tempGlobals.gScreenCoord;
l9_35=l9_38;
}
}
else
{
if (l9_29==0)
{
float2 l9_39=tempGlobals.Surface_UVCoord0;
l9_35=l9_39;
}
if (l9_29==1)
{
float2 l9_40=tempGlobals.Surface_UVCoord1;
l9_35=l9_40;
}
if (l9_29==2)
{
float2 l9_41=tempGlobals.gScreenCoord;
l9_35=l9_41;
}
if (l9_29==3)
{
l9_35=tempGlobals.N7_TransformedUV2;
}
}
l9_35=(l9_35*l9_30)+l9_31;
if (l9_32)
{
float l9_42=tempGlobals.gTimeElapsed;
l9_35+=(l9_31*l9_42);
}
float2 l9_43=l9_35;
tempGlobals.N7_TransformedUV3=l9_43;
float2 l9_44=tempGlobals.Surface_UVCoord0;
float2 l9_45=l9_44;
float2 l9_46=tempGlobals.Surface_UVCoord0;
float2 l9_47=l9_46;
N7_Opacity=1.0;
N7_Albedo=N7_BaseColorValue;
if (N7_EnableBaseTexture)
{
int l9_48=N7_BaseTextureUVSwitch;
float2 l9_49=tempGlobals.Surface_UVCoord0;
float2 l9_50=l9_49;
if (l9_48==0)
{
float2 l9_51=tempGlobals.Surface_UVCoord0;
l9_50=l9_51;
}
if (l9_48==1)
{
float2 l9_52=tempGlobals.Surface_UVCoord1;
l9_50=l9_52;
}
if (l9_48==2)
{
l9_50=tempGlobals.N7_TransformedUV2;
}
if (l9_48==3)
{
l9_50=tempGlobals.N7_TransformedUV3;
}
float2 l9_53=l9_50;
l9_45=l9_53;
float2 l9_54=l9_45;
float4 l9_55=float4(0.0);
int l9_56;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_57=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_57=0;
}
else
{
l9_57=in.varStereoViewID;
}
int l9_58=l9_57;
l9_56=1-l9_58;
}
else
{
int l9_59=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_59=0;
}
else
{
l9_59=in.varStereoViewID;
}
int l9_60=l9_59;
l9_56=l9_60;
}
int l9_61=l9_56;
int l9_62=baseTexLayout_tmp;
int l9_63=l9_61;
float2 l9_64=l9_54;
bool l9_65=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_66=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_67=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_68=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_69=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_70=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_71=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_72=0.0;
bool l9_73=l9_70&&(!l9_68);
float l9_74=1.0;
float l9_75=l9_64.x;
int l9_76=l9_67.x;
if (l9_76==1)
{
l9_75=fract(l9_75);
}
else
{
if (l9_76==2)
{
float l9_77=fract(l9_75);
float l9_78=l9_75-l9_77;
float l9_79=step(0.25,fract(l9_78*0.5));
l9_75=mix(l9_77,1.0-l9_77,fast::clamp(l9_79,0.0,1.0));
}
}
l9_64.x=l9_75;
float l9_80=l9_64.y;
int l9_81=l9_67.y;
if (l9_81==1)
{
l9_80=fract(l9_80);
}
else
{
if (l9_81==2)
{
float l9_82=fract(l9_80);
float l9_83=l9_80-l9_82;
float l9_84=step(0.25,fract(l9_83*0.5));
l9_80=mix(l9_82,1.0-l9_82,fast::clamp(l9_84,0.0,1.0));
}
}
l9_64.y=l9_80;
if (l9_68)
{
bool l9_85=l9_70;
bool l9_86;
if (l9_85)
{
l9_86=l9_67.x==3;
}
else
{
l9_86=l9_85;
}
float l9_87=l9_64.x;
float l9_88=l9_69.x;
float l9_89=l9_69.z;
bool l9_90=l9_86;
float l9_91=l9_74;
float l9_92=fast::clamp(l9_87,l9_88,l9_89);
float l9_93=step(abs(l9_87-l9_92),9.9999997e-06);
l9_91*=(l9_93+((1.0-float(l9_90))*(1.0-l9_93)));
l9_87=l9_92;
l9_64.x=l9_87;
l9_74=l9_91;
bool l9_94=l9_70;
bool l9_95;
if (l9_94)
{
l9_95=l9_67.y==3;
}
else
{
l9_95=l9_94;
}
float l9_96=l9_64.y;
float l9_97=l9_69.y;
float l9_98=l9_69.w;
bool l9_99=l9_95;
float l9_100=l9_74;
float l9_101=fast::clamp(l9_96,l9_97,l9_98);
float l9_102=step(abs(l9_96-l9_101),9.9999997e-06);
l9_100*=(l9_102+((1.0-float(l9_99))*(1.0-l9_102)));
l9_96=l9_101;
l9_64.y=l9_96;
l9_74=l9_100;
}
float2 l9_103=l9_64;
bool l9_104=l9_65;
float3x3 l9_105=l9_66;
if (l9_104)
{
l9_103=float2((l9_105*float3(l9_103,1.0)).xy);
}
float2 l9_106=l9_103;
l9_64=l9_106;
float l9_107=l9_64.x;
int l9_108=l9_67.x;
bool l9_109=l9_73;
float l9_110=l9_74;
if ((l9_108==0)||(l9_108==3))
{
float l9_111=l9_107;
float l9_112=0.0;
float l9_113=1.0;
bool l9_114=l9_109;
float l9_115=l9_110;
float l9_116=fast::clamp(l9_111,l9_112,l9_113);
float l9_117=step(abs(l9_111-l9_116),9.9999997e-06);
l9_115*=(l9_117+((1.0-float(l9_114))*(1.0-l9_117)));
l9_111=l9_116;
l9_107=l9_111;
l9_110=l9_115;
}
l9_64.x=l9_107;
l9_74=l9_110;
float l9_118=l9_64.y;
int l9_119=l9_67.y;
bool l9_120=l9_73;
float l9_121=l9_74;
if ((l9_119==0)||(l9_119==3))
{
float l9_122=l9_118;
float l9_123=0.0;
float l9_124=1.0;
bool l9_125=l9_120;
float l9_126=l9_121;
float l9_127=fast::clamp(l9_122,l9_123,l9_124);
float l9_128=step(abs(l9_122-l9_127),9.9999997e-06);
l9_126*=(l9_128+((1.0-float(l9_125))*(1.0-l9_128)));
l9_122=l9_127;
l9_118=l9_122;
l9_121=l9_126;
}
l9_64.y=l9_118;
l9_74=l9_121;
float2 l9_129=l9_64;
int l9_130=l9_62;
int l9_131=l9_63;
float l9_132=l9_72;
float2 l9_133=l9_129;
int l9_134=l9_130;
int l9_135=l9_131;
float3 l9_136=float3(0.0);
if (l9_134==0)
{
l9_136=float3(l9_133,0.0);
}
else
{
if (l9_134==1)
{
l9_136=float3(l9_133.x,(l9_133.y*0.5)+(0.5-(float(l9_135)*0.5)),0.0);
}
else
{
l9_136=float3(l9_133,float(l9_135));
}
}
float3 l9_137=l9_136;
float3 l9_138=l9_137;
float4 l9_139=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_138.xy,bias(l9_132));
float4 l9_140=l9_139;
if (l9_70)
{
l9_140=mix(l9_71,l9_140,float4(l9_74));
}
float4 l9_141=l9_140;
l9_55=l9_141;
float4 l9_142=l9_55;
N7_Albedo*=l9_142;
}
if (N7_EnableRecolor)
{
float3 l9_143=((N7_RecolorR*N7_Albedo.x)+(N7_RecolorG*N7_Albedo.y))+(N7_RecolorB*N7_Albedo.z);
N7_Albedo=float4(l9_143.x,l9_143.y,l9_143.z,N7_Albedo.w);
}
if (N7_EnableOpacityTexture)
{
int l9_144=N7_OpacityUVSwitch;
float2 l9_145=tempGlobals.Surface_UVCoord0;
float2 l9_146=l9_145;
if (l9_144==0)
{
float2 l9_147=tempGlobals.Surface_UVCoord0;
l9_146=l9_147;
}
if (l9_144==1)
{
float2 l9_148=tempGlobals.Surface_UVCoord1;
l9_146=l9_148;
}
if (l9_144==2)
{
l9_146=tempGlobals.N7_TransformedUV2;
}
if (l9_144==3)
{
l9_146=tempGlobals.N7_TransformedUV3;
}
float2 l9_149=l9_146;
l9_47=l9_149;
float2 l9_150=l9_47;
float4 l9_151=float4(0.0);
int l9_152;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_153=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_153=0;
}
else
{
l9_153=in.varStereoViewID;
}
int l9_154=l9_153;
l9_152=1-l9_154;
}
else
{
int l9_155=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_155=0;
}
else
{
l9_155=in.varStereoViewID;
}
int l9_156=l9_155;
l9_152=l9_156;
}
int l9_157=l9_152;
int l9_158=opacityTexLayout_tmp;
int l9_159=l9_157;
float2 l9_160=l9_150;
bool l9_161=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_162=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_163=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_164=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_165=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_166=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_167=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_168=0.0;
bool l9_169=l9_166&&(!l9_164);
float l9_170=1.0;
float l9_171=l9_160.x;
int l9_172=l9_163.x;
if (l9_172==1)
{
l9_171=fract(l9_171);
}
else
{
if (l9_172==2)
{
float l9_173=fract(l9_171);
float l9_174=l9_171-l9_173;
float l9_175=step(0.25,fract(l9_174*0.5));
l9_171=mix(l9_173,1.0-l9_173,fast::clamp(l9_175,0.0,1.0));
}
}
l9_160.x=l9_171;
float l9_176=l9_160.y;
int l9_177=l9_163.y;
if (l9_177==1)
{
l9_176=fract(l9_176);
}
else
{
if (l9_177==2)
{
float l9_178=fract(l9_176);
float l9_179=l9_176-l9_178;
float l9_180=step(0.25,fract(l9_179*0.5));
l9_176=mix(l9_178,1.0-l9_178,fast::clamp(l9_180,0.0,1.0));
}
}
l9_160.y=l9_176;
if (l9_164)
{
bool l9_181=l9_166;
bool l9_182;
if (l9_181)
{
l9_182=l9_163.x==3;
}
else
{
l9_182=l9_181;
}
float l9_183=l9_160.x;
float l9_184=l9_165.x;
float l9_185=l9_165.z;
bool l9_186=l9_182;
float l9_187=l9_170;
float l9_188=fast::clamp(l9_183,l9_184,l9_185);
float l9_189=step(abs(l9_183-l9_188),9.9999997e-06);
l9_187*=(l9_189+((1.0-float(l9_186))*(1.0-l9_189)));
l9_183=l9_188;
l9_160.x=l9_183;
l9_170=l9_187;
bool l9_190=l9_166;
bool l9_191;
if (l9_190)
{
l9_191=l9_163.y==3;
}
else
{
l9_191=l9_190;
}
float l9_192=l9_160.y;
float l9_193=l9_165.y;
float l9_194=l9_165.w;
bool l9_195=l9_191;
float l9_196=l9_170;
float l9_197=fast::clamp(l9_192,l9_193,l9_194);
float l9_198=step(abs(l9_192-l9_197),9.9999997e-06);
l9_196*=(l9_198+((1.0-float(l9_195))*(1.0-l9_198)));
l9_192=l9_197;
l9_160.y=l9_192;
l9_170=l9_196;
}
float2 l9_199=l9_160;
bool l9_200=l9_161;
float3x3 l9_201=l9_162;
if (l9_200)
{
l9_199=float2((l9_201*float3(l9_199,1.0)).xy);
}
float2 l9_202=l9_199;
l9_160=l9_202;
float l9_203=l9_160.x;
int l9_204=l9_163.x;
bool l9_205=l9_169;
float l9_206=l9_170;
if ((l9_204==0)||(l9_204==3))
{
float l9_207=l9_203;
float l9_208=0.0;
float l9_209=1.0;
bool l9_210=l9_205;
float l9_211=l9_206;
float l9_212=fast::clamp(l9_207,l9_208,l9_209);
float l9_213=step(abs(l9_207-l9_212),9.9999997e-06);
l9_211*=(l9_213+((1.0-float(l9_210))*(1.0-l9_213)));
l9_207=l9_212;
l9_203=l9_207;
l9_206=l9_211;
}
l9_160.x=l9_203;
l9_170=l9_206;
float l9_214=l9_160.y;
int l9_215=l9_163.y;
bool l9_216=l9_169;
float l9_217=l9_170;
if ((l9_215==0)||(l9_215==3))
{
float l9_218=l9_214;
float l9_219=0.0;
float l9_220=1.0;
bool l9_221=l9_216;
float l9_222=l9_217;
float l9_223=fast::clamp(l9_218,l9_219,l9_220);
float l9_224=step(abs(l9_218-l9_223),9.9999997e-06);
l9_222*=(l9_224+((1.0-float(l9_221))*(1.0-l9_224)));
l9_218=l9_223;
l9_214=l9_218;
l9_217=l9_222;
}
l9_160.y=l9_214;
l9_170=l9_217;
float2 l9_225=l9_160;
int l9_226=l9_158;
int l9_227=l9_159;
float l9_228=l9_168;
float2 l9_229=l9_225;
int l9_230=l9_226;
int l9_231=l9_227;
float3 l9_232=float3(0.0);
if (l9_230==0)
{
l9_232=float3(l9_229,0.0);
}
else
{
if (l9_230==1)
{
l9_232=float3(l9_229.x,(l9_229.y*0.5)+(0.5-(float(l9_231)*0.5)),0.0);
}
else
{
l9_232=float3(l9_229,float(l9_231));
}
}
float3 l9_233=l9_232;
float3 l9_234=l9_233;
float4 l9_235=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_234.xy,bias(l9_228));
float4 l9_236=l9_235;
if (l9_166)
{
l9_236=mix(l9_167,l9_236,float4(l9_170));
}
float4 l9_237=l9_236;
l9_151=l9_237;
float4 l9_238=l9_151;
N7_Opacity=l9_238.x;
}
N7_Opacity*=N7_Albedo.w;
if (N7_VertexColorSwitch==1)
{
float4 l9_239=tempGlobals.VertexColor;
N7_Albedo*=l9_239;
float4 l9_240=tempGlobals.VertexColor;
N7_Opacity*=l9_240.w;
}
if (N7_EnableNormalTexture)
{
float3 l9_241=float3(0.0,0.0,1.0);
int l9_242=N7_NormalUVSwitch;
float2 l9_243=tempGlobals.Surface_UVCoord0;
float2 l9_244=l9_243;
if (l9_242==0)
{
float2 l9_245=tempGlobals.Surface_UVCoord0;
l9_244=l9_245;
}
if (l9_242==1)
{
float2 l9_246=tempGlobals.Surface_UVCoord1;
l9_244=l9_246;
}
if (l9_242==2)
{
l9_244=tempGlobals.N7_TransformedUV2;
}
if (l9_242==3)
{
l9_244=tempGlobals.N7_TransformedUV3;
}
float2 l9_247=l9_244;
float2 l9_248=l9_247;
float2 l9_249=l9_248;
float4 l9_250=float4(0.0);
int l9_251;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_252=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_252=0;
}
else
{
l9_252=in.varStereoViewID;
}
int l9_253=l9_252;
l9_251=1-l9_253;
}
else
{
int l9_254=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_254=0;
}
else
{
l9_254=in.varStereoViewID;
}
int l9_255=l9_254;
l9_251=l9_255;
}
int l9_256=l9_251;
int l9_257=normalTexLayout_tmp;
int l9_258=l9_256;
float2 l9_259=l9_249;
bool l9_260=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_261=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_262=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_263=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_264=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_265=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_266=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_267=0.0;
bool l9_268=l9_265&&(!l9_263);
float l9_269=1.0;
float l9_270=l9_259.x;
int l9_271=l9_262.x;
if (l9_271==1)
{
l9_270=fract(l9_270);
}
else
{
if (l9_271==2)
{
float l9_272=fract(l9_270);
float l9_273=l9_270-l9_272;
float l9_274=step(0.25,fract(l9_273*0.5));
l9_270=mix(l9_272,1.0-l9_272,fast::clamp(l9_274,0.0,1.0));
}
}
l9_259.x=l9_270;
float l9_275=l9_259.y;
int l9_276=l9_262.y;
if (l9_276==1)
{
l9_275=fract(l9_275);
}
else
{
if (l9_276==2)
{
float l9_277=fract(l9_275);
float l9_278=l9_275-l9_277;
float l9_279=step(0.25,fract(l9_278*0.5));
l9_275=mix(l9_277,1.0-l9_277,fast::clamp(l9_279,0.0,1.0));
}
}
l9_259.y=l9_275;
if (l9_263)
{
bool l9_280=l9_265;
bool l9_281;
if (l9_280)
{
l9_281=l9_262.x==3;
}
else
{
l9_281=l9_280;
}
float l9_282=l9_259.x;
float l9_283=l9_264.x;
float l9_284=l9_264.z;
bool l9_285=l9_281;
float l9_286=l9_269;
float l9_287=fast::clamp(l9_282,l9_283,l9_284);
float l9_288=step(abs(l9_282-l9_287),9.9999997e-06);
l9_286*=(l9_288+((1.0-float(l9_285))*(1.0-l9_288)));
l9_282=l9_287;
l9_259.x=l9_282;
l9_269=l9_286;
bool l9_289=l9_265;
bool l9_290;
if (l9_289)
{
l9_290=l9_262.y==3;
}
else
{
l9_290=l9_289;
}
float l9_291=l9_259.y;
float l9_292=l9_264.y;
float l9_293=l9_264.w;
bool l9_294=l9_290;
float l9_295=l9_269;
float l9_296=fast::clamp(l9_291,l9_292,l9_293);
float l9_297=step(abs(l9_291-l9_296),9.9999997e-06);
l9_295*=(l9_297+((1.0-float(l9_294))*(1.0-l9_297)));
l9_291=l9_296;
l9_259.y=l9_291;
l9_269=l9_295;
}
float2 l9_298=l9_259;
bool l9_299=l9_260;
float3x3 l9_300=l9_261;
if (l9_299)
{
l9_298=float2((l9_300*float3(l9_298,1.0)).xy);
}
float2 l9_301=l9_298;
l9_259=l9_301;
float l9_302=l9_259.x;
int l9_303=l9_262.x;
bool l9_304=l9_268;
float l9_305=l9_269;
if ((l9_303==0)||(l9_303==3))
{
float l9_306=l9_302;
float l9_307=0.0;
float l9_308=1.0;
bool l9_309=l9_304;
float l9_310=l9_305;
float l9_311=fast::clamp(l9_306,l9_307,l9_308);
float l9_312=step(abs(l9_306-l9_311),9.9999997e-06);
l9_310*=(l9_312+((1.0-float(l9_309))*(1.0-l9_312)));
l9_306=l9_311;
l9_302=l9_306;
l9_305=l9_310;
}
l9_259.x=l9_302;
l9_269=l9_305;
float l9_313=l9_259.y;
int l9_314=l9_262.y;
bool l9_315=l9_268;
float l9_316=l9_269;
if ((l9_314==0)||(l9_314==3))
{
float l9_317=l9_313;
float l9_318=0.0;
float l9_319=1.0;
bool l9_320=l9_315;
float l9_321=l9_316;
float l9_322=fast::clamp(l9_317,l9_318,l9_319);
float l9_323=step(abs(l9_317-l9_322),9.9999997e-06);
l9_321*=(l9_323+((1.0-float(l9_320))*(1.0-l9_323)));
l9_317=l9_322;
l9_313=l9_317;
l9_316=l9_321;
}
l9_259.y=l9_313;
l9_269=l9_316;
float2 l9_324=l9_259;
int l9_325=l9_257;
int l9_326=l9_258;
float l9_327=l9_267;
float2 l9_328=l9_324;
int l9_329=l9_325;
int l9_330=l9_326;
float3 l9_331=float3(0.0);
if (l9_329==0)
{
l9_331=float3(l9_328,0.0);
}
else
{
if (l9_329==1)
{
l9_331=float3(l9_328.x,(l9_328.y*0.5)+(0.5-(float(l9_330)*0.5)),0.0);
}
else
{
l9_331=float3(l9_328,float(l9_330));
}
}
float3 l9_332=l9_331;
float3 l9_333=l9_332;
float4 l9_334=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_333.xy,bias(l9_327));
float4 l9_335=l9_334;
if (l9_265)
{
l9_335=mix(l9_266,l9_335,float4(l9_269));
}
float4 l9_336=l9_335;
l9_250=l9_336;
float4 l9_337=l9_250;
N7_Normal=(l9_337.xyz*1.9921875)-float3(1.0);
if (N7_EnableDetailNormal)
{
int l9_338=N7_Detail_NormalUVSwitch;
float2 l9_339=tempGlobals.Surface_UVCoord0;
float2 l9_340=l9_339;
if (l9_338==0)
{
float2 l9_341=tempGlobals.Surface_UVCoord0;
l9_340=l9_341;
}
if (l9_338==1)
{
float2 l9_342=tempGlobals.Surface_UVCoord1;
l9_340=l9_342;
}
if (l9_338==2)
{
l9_340=tempGlobals.N7_TransformedUV2;
}
if (l9_338==3)
{
l9_340=tempGlobals.N7_TransformedUV3;
}
float2 l9_343=l9_340;
float2 l9_344=l9_343;
float2 l9_345=l9_344;
float4 l9_346=float4(0.0);
int l9_347;
if ((int(detailNormalTexHasSwappedViews_tmp)!=0))
{
int l9_348=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_348=0;
}
else
{
l9_348=in.varStereoViewID;
}
int l9_349=l9_348;
l9_347=1-l9_349;
}
else
{
int l9_350=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_350=0;
}
else
{
l9_350=in.varStereoViewID;
}
int l9_351=l9_350;
l9_347=l9_351;
}
int l9_352=l9_347;
int l9_353=detailNormalTexLayout_tmp;
int l9_354=l9_352;
float2 l9_355=l9_345;
bool l9_356=(int(SC_USE_UV_TRANSFORM_detailNormalTex_tmp)!=0);
float3x3 l9_357=(*sc_set0.UserUniforms).detailNormalTexTransform;
int2 l9_358=int2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp);
bool l9_359=(int(SC_USE_UV_MIN_MAX_detailNormalTex_tmp)!=0);
float4 l9_360=(*sc_set0.UserUniforms).detailNormalTexUvMinMax;
bool l9_361=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp)!=0);
float4 l9_362=(*sc_set0.UserUniforms).detailNormalTexBorderColor;
float l9_363=0.0;
bool l9_364=l9_361&&(!l9_359);
float l9_365=1.0;
float l9_366=l9_355.x;
int l9_367=l9_358.x;
if (l9_367==1)
{
l9_366=fract(l9_366);
}
else
{
if (l9_367==2)
{
float l9_368=fract(l9_366);
float l9_369=l9_366-l9_368;
float l9_370=step(0.25,fract(l9_369*0.5));
l9_366=mix(l9_368,1.0-l9_368,fast::clamp(l9_370,0.0,1.0));
}
}
l9_355.x=l9_366;
float l9_371=l9_355.y;
int l9_372=l9_358.y;
if (l9_372==1)
{
l9_371=fract(l9_371);
}
else
{
if (l9_372==2)
{
float l9_373=fract(l9_371);
float l9_374=l9_371-l9_373;
float l9_375=step(0.25,fract(l9_374*0.5));
l9_371=mix(l9_373,1.0-l9_373,fast::clamp(l9_375,0.0,1.0));
}
}
l9_355.y=l9_371;
if (l9_359)
{
bool l9_376=l9_361;
bool l9_377;
if (l9_376)
{
l9_377=l9_358.x==3;
}
else
{
l9_377=l9_376;
}
float l9_378=l9_355.x;
float l9_379=l9_360.x;
float l9_380=l9_360.z;
bool l9_381=l9_377;
float l9_382=l9_365;
float l9_383=fast::clamp(l9_378,l9_379,l9_380);
float l9_384=step(abs(l9_378-l9_383),9.9999997e-06);
l9_382*=(l9_384+((1.0-float(l9_381))*(1.0-l9_384)));
l9_378=l9_383;
l9_355.x=l9_378;
l9_365=l9_382;
bool l9_385=l9_361;
bool l9_386;
if (l9_385)
{
l9_386=l9_358.y==3;
}
else
{
l9_386=l9_385;
}
float l9_387=l9_355.y;
float l9_388=l9_360.y;
float l9_389=l9_360.w;
bool l9_390=l9_386;
float l9_391=l9_365;
float l9_392=fast::clamp(l9_387,l9_388,l9_389);
float l9_393=step(abs(l9_387-l9_392),9.9999997e-06);
l9_391*=(l9_393+((1.0-float(l9_390))*(1.0-l9_393)));
l9_387=l9_392;
l9_355.y=l9_387;
l9_365=l9_391;
}
float2 l9_394=l9_355;
bool l9_395=l9_356;
float3x3 l9_396=l9_357;
if (l9_395)
{
l9_394=float2((l9_396*float3(l9_394,1.0)).xy);
}
float2 l9_397=l9_394;
l9_355=l9_397;
float l9_398=l9_355.x;
int l9_399=l9_358.x;
bool l9_400=l9_364;
float l9_401=l9_365;
if ((l9_399==0)||(l9_399==3))
{
float l9_402=l9_398;
float l9_403=0.0;
float l9_404=1.0;
bool l9_405=l9_400;
float l9_406=l9_401;
float l9_407=fast::clamp(l9_402,l9_403,l9_404);
float l9_408=step(abs(l9_402-l9_407),9.9999997e-06);
l9_406*=(l9_408+((1.0-float(l9_405))*(1.0-l9_408)));
l9_402=l9_407;
l9_398=l9_402;
l9_401=l9_406;
}
l9_355.x=l9_398;
l9_365=l9_401;
float l9_409=l9_355.y;
int l9_410=l9_358.y;
bool l9_411=l9_364;
float l9_412=l9_365;
if ((l9_410==0)||(l9_410==3))
{
float l9_413=l9_409;
float l9_414=0.0;
float l9_415=1.0;
bool l9_416=l9_411;
float l9_417=l9_412;
float l9_418=fast::clamp(l9_413,l9_414,l9_415);
float l9_419=step(abs(l9_413-l9_418),9.9999997e-06);
l9_417*=(l9_419+((1.0-float(l9_416))*(1.0-l9_419)));
l9_413=l9_418;
l9_409=l9_413;
l9_412=l9_417;
}
l9_355.y=l9_409;
l9_365=l9_412;
float2 l9_420=l9_355;
int l9_421=l9_353;
int l9_422=l9_354;
float l9_423=l9_363;
float2 l9_424=l9_420;
int l9_425=l9_421;
int l9_426=l9_422;
float3 l9_427=float3(0.0);
if (l9_425==0)
{
l9_427=float3(l9_424,0.0);
}
else
{
if (l9_425==1)
{
l9_427=float3(l9_424.x,(l9_424.y*0.5)+(0.5-(float(l9_426)*0.5)),0.0);
}
else
{
l9_427=float3(l9_424,float(l9_426));
}
}
float3 l9_428=l9_427;
float3 l9_429=l9_428;
float4 l9_430=sc_set0.detailNormalTex.sample(sc_set0.detailNormalTexSmpSC,l9_429.xy,bias(l9_423));
float4 l9_431=l9_430;
if (l9_361)
{
l9_431=mix(l9_362,l9_431,float4(l9_365));
}
float4 l9_432=l9_431;
l9_346=l9_432;
float4 l9_433=l9_346;
l9_241=(l9_433.xyz*1.9921875)-float3(1.0);
}
float3 l9_434=N7_Normal;
float3 l9_435=l9_241;
float3 l9_436=l9_434+float3(0.0,0.0,1.0);
float3 l9_437=l9_435*float3(-1.0,-1.0,1.0);
float3 l9_438=normalize((l9_436*dot(l9_436,l9_437))-(l9_437*l9_436.z));
N7_Normal=l9_438;
float3 l9_439=tempGlobals.VertexNormal_WorldSpace;
float3 l9_440=l9_439;
float3 l9_441=tempGlobals.VertexTangent_WorldSpace;
float3 l9_442=l9_441;
float3 l9_443=tempGlobals.VertexBinormal_WorldSpace;
float3 l9_444=l9_443;
float3x3 l9_445=float3x3(float3(l9_442),float3(l9_444),float3(l9_440));
N7_Normal=normalize(l9_445*N7_Normal);
}
else
{
float3 l9_446=tempGlobals.VertexNormal_WorldSpace;
N7_Normal=normalize(l9_446);
}
param_16=N7_Opacity;
param_17=N7_Normal;
Opacity_N7=param_16;
Normal_N7=param_17;
float param_19=Opacity_N7;
float3 param_20=Normal_N7;
ssGlobals param_21=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_21.BumpedNormal=param_20;
}
param_19=fast::clamp(param_19,0.0,1.0);
float l9_447=param_19;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_447<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_448=gl_FragCoord;
float2 l9_449=floor(mod(l9_448.xy,float2(4.0)));
float l9_450=(mod(dot(l9_449,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_447<l9_450)
{
discard_fragment();
}
}
float3 l9_451=param_21.PositionWS;
float3 l9_452=param_21.BumpedNormal;
float l9_453=1.0;
float3 l9_454=normalize((*sc_set0.UserUniforms).sc_Camera.position-l9_451);
if (dot(l9_454,l9_452)>=(-0.050000001))
{
uint3 l9_455=uint3(round((l9_451-(*sc_set0.UserUniforms).OriginNormalizationOffset)*(*sc_set0.UserUniforms).OriginNormalizationScale));
out.position_and_mask=uint4(l9_455.x,l9_455.y,l9_455.z,out.position_and_mask.w);
out.position_and_mask.w=uint((*sc_set0.UserUniforms).receiver_mask);
float3 l9_456=l9_452;
float l9_457=dot(abs(l9_456),float3(1.0));
l9_456/=float3(l9_457);
float l9_458=fast::clamp(-l9_456.z,0.0,1.0);
float2 l9_459=l9_456.xy;
float l9_460;
if (l9_456.x>=0.0)
{
l9_460=l9_458;
}
else
{
l9_460=-l9_458;
}
l9_459.x+=l9_460;
float l9_461;
if (l9_456.y>=0.0)
{
l9_461=l9_458;
}
else
{
l9_461=-l9_458;
}
l9_459.y+=l9_461;
float2 l9_462=l9_459;
float2 l9_463=l9_462;
uint2 l9_464=uint2(as_type<uint>(half2(float2(l9_463.x,0.0))),as_type<uint>(half2(float2(l9_463.y,0.0))));
out.normal_and_more=uint4(l9_464.x,l9_464.y,out.normal_and_more.z,out.normal_and_more.w);
out.normal_and_more.z=as_type<uint>(half2(float2(0.0)));
uint l9_465;
if (l9_453<0.0)
{
l9_465=1023u;
}
else
{
l9_465=uint(fast::clamp(l9_453,0.0,1.0)*1000.0);
}
uint l9_466=l9_465;
l9_466 |= uint(((*sc_set0.UserUniforms).receiverId%32)<<int(10u));
out.normal_and_more.w=l9_466;
}
else
{
out.position_and_mask=uint4(0u);
out.normal_and_more=uint4(0u);
}
return out;
}
} // RECEIVER MODE SHADER
