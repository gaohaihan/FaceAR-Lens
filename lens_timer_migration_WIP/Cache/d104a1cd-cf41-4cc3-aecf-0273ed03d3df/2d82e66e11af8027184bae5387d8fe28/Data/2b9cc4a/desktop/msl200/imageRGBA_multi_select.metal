#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
#ifdef alpha_channel
#undef alpha_channel
#endif
#ifdef red_channel
#undef red_channel
#endif
#ifdef green_channel
#undef green_channel
#endif
#ifdef blue_channel
#undef blue_channel
#endif
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
//sampler sampler baseTexSmpSC 0:22
//sampler sampler intensityTextureSmpSC 0:23
//sampler sampler sc_ScreenTextureSmpSC 0:28
//sampler sampler z_hitIdAndBarycentricSmp 0:31
//sampler sampler z_rayDirectionsSmpSC 0:32
//texture texture2D baseTex 0:4:0:22
//texture texture2D intensityTexture 0:5:0:23
//texture texture2D sc_ScreenTexture 0:17:0:28
//texture utexture2D z_hitIdAndBarycentric 0:20:0:31
//texture texture2D z_rayDirections 0:21:0:32
//ubo float sc_BonesUBO 0:3:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:33:4512 {
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
//bool isProxyMode 3824
//int instance_id 3828
//int lray_triangles_last 3832
//bool noEarlyZ 3836
//bool has_animated_pn 3840
//int emitter_stride 3844
//int proxy_offset_position 3848
//int proxy_offset_normal 3852
//int proxy_offset_tangent 3856
//int proxy_offset_color 3860
//int proxy_offset_texture0 3864
//int proxy_offset_texture1 3868
//int proxy_offset_texture2 3872
//int proxy_offset_texture3 3876
//int proxy_format_position 3880
//int proxy_format_normal 3884
//int proxy_format_tangent 3888
//int proxy_format_color 3892
//int proxy_format_texture0 3896
//int proxy_format_texture1 3900
//int proxy_format_texture2 3904
//int proxy_format_texture3 3908
//float correctedIntensity 3968
//float3x3 intensityTextureTransform 4032
//float4 intensityTextureUvMinMax 4080
//float4 intensityTextureBorderColor 4096
//int PreviewEnabled 4260
//float alphaTestThreshold 4268
//bool alpha_channel 4272
//bool red_channel 4276
//bool green_channel 4280
//bool blue_channel 4284
//float3x3 baseTexTransform 4336
//float4 baseTexUvMinMax 4384
//float4 baseTexBorderColor 4400
//float Port_Input1_N010 4416
//float Port_Value2_N013 4420
//float Port_Input1_N009 4424
//float Port_Input1_N035 4428
//float Port_Value1_N036 4432
//float Port_Input1_N046 4436
//float Port_Input1_N051 4440
//float Port_Input1_N034 4444
//float Port_Value1_N043 4448
//float Port_Input1_N052 4452
//float Port_Input1_N053 4456
//float4 Port_Default_N055 4464
//float4 Port_Default_N050 4480
//float depthRef 4496
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
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 30 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_baseTex 31 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 32 0
//spec_const bool SC_USE_UV_MIN_MAX_baseTex 33 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 34 0
//spec_const bool SC_USE_UV_TRANSFORM_baseTex 35 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 36 0
//spec_const bool UseViewSpaceDepthVariant 37 1
//spec_const bool baseTexHasSwappedViews 38 0
//spec_const bool intensityTextureHasSwappedViews 39 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 40 0
//spec_const bool sc_BlendMode_Add 41 0
//spec_const bool sc_BlendMode_AlphaTest 42 0
//spec_const bool sc_BlendMode_AlphaToCoverage 43 0
//spec_const bool sc_BlendMode_ColoredGlass 44 0
//spec_const bool sc_BlendMode_Custom 45 0
//spec_const bool sc_BlendMode_Max 46 0
//spec_const bool sc_BlendMode_Min 47 0
//spec_const bool sc_BlendMode_MultiplyOriginal 48 0
//spec_const bool sc_BlendMode_Multiply 49 0
//spec_const bool sc_BlendMode_Normal 50 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 51 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 52 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 53 0
//spec_const bool sc_BlendMode_Screen 54 0
//spec_const bool sc_DepthOnly 55 0
//spec_const bool sc_FramebufferFetch 56 0
//spec_const bool sc_MotionVectorsPass 57 0
//spec_const bool sc_OITCompositingPass 58 0
//spec_const bool sc_OITDepthBoundsPass 59 0
//spec_const bool sc_OITDepthGatherPass 60 0
//spec_const bool sc_ProjectiveShadowsCaster 61 0
//spec_const bool sc_ProjectiveShadowsReceiver 62 0
//spec_const bool sc_ProxyAlphaOne 63 0
//spec_const bool sc_RenderAlphaToColor 64 0
//spec_const bool sc_ScreenTextureHasSwappedViews 65 0
//spec_const bool sc_TAAEnabled 66 0
//spec_const bool sc_VertexBlendingUseNormals 67 0
//spec_const bool sc_VertexBlending 68 0
//spec_const int SC_SOFTWARE_WRAP_MODE_U_baseTex 69 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 70 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_baseTex 71 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 72 -1
//spec_const int baseTexLayout 73 0
//spec_const int intensityTextureLayout 74 0
//spec_const int sc_DepthBufferMode 75 0
//spec_const int sc_RenderingSpace 76 -1
//spec_const int sc_ScreenTextureLayout 77 0
//spec_const int sc_ShaderCacheConstant 78 0
//spec_const int sc_SkinBonesCount 79 0
//spec_const int sc_StereoRenderingMode 80 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 81 0
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
constant bool ENABLE_STIPPLE_PATTERN_TEST [[function_constant(30)]];
constant bool ENABLE_STIPPLE_PATTERN_TEST_tmp = is_function_constant_defined(ENABLE_STIPPLE_PATTERN_TEST) ? ENABLE_STIPPLE_PATTERN_TEST : false;
constant bool SC_USE_CLAMP_TO_BORDER_baseTex [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_baseTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_baseTex) ? SC_USE_CLAMP_TO_BORDER_baseTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_baseTex [[function_constant(33)]];
constant bool SC_USE_UV_MIN_MAX_baseTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_baseTex) ? SC_USE_UV_MIN_MAX_baseTex : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(34)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_baseTex [[function_constant(35)]];
constant bool SC_USE_UV_TRANSFORM_baseTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_baseTex) ? SC_USE_UV_TRANSFORM_baseTex : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(36)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool UseViewSpaceDepthVariant [[function_constant(37)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool baseTexHasSwappedViews [[function_constant(38)]];
constant bool baseTexHasSwappedViews_tmp = is_function_constant_defined(baseTexHasSwappedViews) ? baseTexHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(39)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(40)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(41)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(42)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(43)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(44)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(45)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(46)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(47)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(48)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(49)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(50)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(51)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(52)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(53)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(54)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(55)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_FramebufferFetch [[function_constant(56)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_MotionVectorsPass [[function_constant(57)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(58)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(59)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(60)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(61)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(62)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_ProxyAlphaOne [[function_constant(63)]];
constant bool sc_ProxyAlphaOne_tmp = is_function_constant_defined(sc_ProxyAlphaOne) ? sc_ProxyAlphaOne : false;
constant bool sc_RenderAlphaToColor [[function_constant(64)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(65)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(66)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(67)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(68)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex [[function_constant(69)]];
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_baseTex) ? SC_SOFTWARE_WRAP_MODE_U_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(70)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex [[function_constant(71)]];
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_baseTex) ? SC_SOFTWARE_WRAP_MODE_V_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(72)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int baseTexLayout [[function_constant(73)]];
constant int baseTexLayout_tmp = is_function_constant_defined(baseTexLayout) ? baseTexLayout : 0;
constant int intensityTextureLayout [[function_constant(74)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int sc_DepthBufferMode [[function_constant(75)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_RenderingSpace [[function_constant(76)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(77)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(78)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(79)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(80)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(81)]];
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
int isProxyMode;
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
int alpha_channel;
int red_channel;
int green_channel;
int blue_channel;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float Port_Input1_N010;
float Port_Value2_N013;
float Port_Input1_N009;
float Port_Input1_N035;
float Port_Value1_N036;
float Port_Input1_N046;
float Port_Input1_N051;
float Port_Input1_N034;
float Port_Value1_N043;
float Port_Input1_N052;
float Port_Input1_N053;
float4 Port_Default_N055;
float4 Port_Default_N050;
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
texture2d<float> intensityTexture [[id(5)]];
texture2d<float> sc_ScreenTexture [[id(17)]];
texture2d<uint> z_hitIdAndBarycentric [[id(20)]];
texture2d<float> z_rayDirections [[id(21)]];
sampler baseTexSmpSC [[id(22)]];
sampler intensityTextureSmpSC [[id(23)]];
sampler sc_ScreenTextureSmpSC [[id(28)]];
sampler z_hitIdAndBarycentricSmp [[id(31)]];
sampler z_rayDirectionsSmpSC [[id(32)]];
constant userUniformsObj* UserUniforms [[id(33)]];
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
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float2 Surface_UVCoord0;
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
int isProxyMode;
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
int alpha_channel;
int red_channel;
int green_channel;
int blue_channel;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float Port_Input1_N010;
float Port_Value2_N013;
float Port_Input1_N009;
float Port_Input1_N035;
float Port_Value1_N036;
float Port_Input1_N046;
float Port_Input1_N051;
float Port_Input1_N034;
float Port_Value1_N043;
float Port_Input1_N052;
float Port_Input1_N053;
float4 Port_Default_N055;
float4 Port_Default_N050;
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
texture2d<float> intensityTexture [[id(5)]];
texture2d<float> sc_ScreenTexture [[id(17)]];
texture2d<uint> z_hitIdAndBarycentric [[id(20)]];
texture2d<float> z_rayDirections [[id(21)]];
sampler baseTexSmpSC [[id(22)]];
sampler intensityTextureSmpSC [[id(23)]];
sampler sc_ScreenTextureSmpSC [[id(28)]];
sampler z_hitIdAndBarycentricSmp [[id(31)]];
sampler z_rayDirectionsSmpSC [[id(32)]];
constant userUniformsObj* UserUniforms [[id(33)]];
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
float4 FinalColor=float4(1.0);
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
Globals.Surface_UVCoord0=rhp.uv0;
}
else
{
Globals.Surface_UVCoord0=in.varPackedTex.xy;
}
float4 Result_N11=float4(0.0);
float param=0.0;
float4 param_1=float4(0.0);
float4 param_2=float4(0.68215501,0.39855,0.51477802,0.0);
ssGlobals param_4=Globals;
float l9_5=0.0;
float l9_6=float((*sc_set0.UserUniforms).alpha_channel!=0);
l9_5=l9_6;
float l9_7=0.0;
float l9_8=float((*sc_set0.UserUniforms).red_channel!=0);
l9_7=l9_8;
float l9_9=0.0;
float l9_10=float((*sc_set0.UserUniforms).green_channel!=0);
l9_9=l9_10;
float l9_11=0.0;
float l9_12=float((*sc_set0.UserUniforms).blue_channel!=0);
l9_11=l9_12;
float l9_13=0.0;
l9_13=(l9_7+l9_9)+l9_11;
float l9_14=0.0;
l9_14=float(l9_13<(*sc_set0.UserUniforms).Port_Input1_N010);
float l9_15=0.0;
float l9_16=l9_5;
bool l9_17=(l9_16*1.0)!=0.0;
bool l9_18;
if (l9_17)
{
l9_18=(l9_14*1.0)!=0.0;
}
else
{
l9_18=l9_17;
}
l9_15=float(l9_18);
param=l9_15;
float4 param_3;
if ((param*1.0)!=0.0)
{
float4 l9_19=float4(0.0);
int l9_20;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_21=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_21=0;
}
else
{
l9_21=in.varStereoViewID;
}
int l9_22=l9_21;
l9_20=1-l9_22;
}
else
{
int l9_23=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_23=0;
}
else
{
l9_23=in.varStereoViewID;
}
int l9_24=l9_23;
l9_20=l9_24;
}
int l9_25=l9_20;
int l9_26=baseTexLayout_tmp;
int l9_27=l9_25;
float2 l9_28=param_4.Surface_UVCoord0;
bool l9_29=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_30=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_31=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_32=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_33=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_34=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_35=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_36=0.0;
bool l9_37=l9_34&&(!l9_32);
float l9_38=1.0;
float l9_39=l9_28.x;
int l9_40=l9_31.x;
if (l9_40==1)
{
l9_39=fract(l9_39);
}
else
{
if (l9_40==2)
{
float l9_41=fract(l9_39);
float l9_42=l9_39-l9_41;
float l9_43=step(0.25,fract(l9_42*0.5));
l9_39=mix(l9_41,1.0-l9_41,fast::clamp(l9_43,0.0,1.0));
}
}
l9_28.x=l9_39;
float l9_44=l9_28.y;
int l9_45=l9_31.y;
if (l9_45==1)
{
l9_44=fract(l9_44);
}
else
{
if (l9_45==2)
{
float l9_46=fract(l9_44);
float l9_47=l9_44-l9_46;
float l9_48=step(0.25,fract(l9_47*0.5));
l9_44=mix(l9_46,1.0-l9_46,fast::clamp(l9_48,0.0,1.0));
}
}
l9_28.y=l9_44;
if (l9_32)
{
bool l9_49=l9_34;
bool l9_50;
if (l9_49)
{
l9_50=l9_31.x==3;
}
else
{
l9_50=l9_49;
}
float l9_51=l9_28.x;
float l9_52=l9_33.x;
float l9_53=l9_33.z;
bool l9_54=l9_50;
float l9_55=l9_38;
float l9_56=fast::clamp(l9_51,l9_52,l9_53);
float l9_57=step(abs(l9_51-l9_56),9.9999997e-06);
l9_55*=(l9_57+((1.0-float(l9_54))*(1.0-l9_57)));
l9_51=l9_56;
l9_28.x=l9_51;
l9_38=l9_55;
bool l9_58=l9_34;
bool l9_59;
if (l9_58)
{
l9_59=l9_31.y==3;
}
else
{
l9_59=l9_58;
}
float l9_60=l9_28.y;
float l9_61=l9_33.y;
float l9_62=l9_33.w;
bool l9_63=l9_59;
float l9_64=l9_38;
float l9_65=fast::clamp(l9_60,l9_61,l9_62);
float l9_66=step(abs(l9_60-l9_65),9.9999997e-06);
l9_64*=(l9_66+((1.0-float(l9_63))*(1.0-l9_66)));
l9_60=l9_65;
l9_28.y=l9_60;
l9_38=l9_64;
}
float2 l9_67=l9_28;
bool l9_68=l9_29;
float3x3 l9_69=l9_30;
if (l9_68)
{
l9_67=float2((l9_69*float3(l9_67,1.0)).xy);
}
float2 l9_70=l9_67;
l9_28=l9_70;
float l9_71=l9_28.x;
int l9_72=l9_31.x;
bool l9_73=l9_37;
float l9_74=l9_38;
if ((l9_72==0)||(l9_72==3))
{
float l9_75=l9_71;
float l9_76=0.0;
float l9_77=1.0;
bool l9_78=l9_73;
float l9_79=l9_74;
float l9_80=fast::clamp(l9_75,l9_76,l9_77);
float l9_81=step(abs(l9_75-l9_80),9.9999997e-06);
l9_79*=(l9_81+((1.0-float(l9_78))*(1.0-l9_81)));
l9_75=l9_80;
l9_71=l9_75;
l9_74=l9_79;
}
l9_28.x=l9_71;
l9_38=l9_74;
float l9_82=l9_28.y;
int l9_83=l9_31.y;
bool l9_84=l9_37;
float l9_85=l9_38;
if ((l9_83==0)||(l9_83==3))
{
float l9_86=l9_82;
float l9_87=0.0;
float l9_88=1.0;
bool l9_89=l9_84;
float l9_90=l9_85;
float l9_91=fast::clamp(l9_86,l9_87,l9_88);
float l9_92=step(abs(l9_86-l9_91),9.9999997e-06);
l9_90*=(l9_92+((1.0-float(l9_89))*(1.0-l9_92)));
l9_86=l9_91;
l9_82=l9_86;
l9_85=l9_90;
}
l9_28.y=l9_82;
l9_38=l9_85;
float2 l9_93=l9_28;
int l9_94=l9_26;
int l9_95=l9_27;
float l9_96=l9_36;
float2 l9_97=l9_93;
int l9_98=l9_94;
int l9_99=l9_95;
float3 l9_100=float3(0.0);
if (l9_98==0)
{
l9_100=float3(l9_97,0.0);
}
else
{
if (l9_98==1)
{
l9_100=float3(l9_97.x,(l9_97.y*0.5)+(0.5-(float(l9_99)*0.5)),0.0);
}
else
{
l9_100=float3(l9_97,float(l9_99));
}
}
float3 l9_101=l9_100;
float3 l9_102=l9_101;
float4 l9_103=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_102.xy,bias(l9_96));
float4 l9_104=l9_103;
if (l9_34)
{
l9_104=mix(l9_35,l9_104,float4(l9_38));
}
float4 l9_105=l9_104;
l9_19=l9_105;
float l9_106=0.0;
l9_106=l9_19.w;
float4 l9_107=float4(0.0);
float3 l9_108=float3(l9_106);
l9_107=float4(l9_108.x,l9_108.y,l9_108.z,l9_107.w);
l9_107.w=(*sc_set0.UserUniforms).Port_Value2_N013;
param_1=l9_107;
param_3=param_1;
}
else
{
float4 l9_109=float4(0.0);
float l9_110=0.0;
float4 l9_111=float4(0.0);
float4 l9_112=float4(0.68215501,0.39855,0.51477802,0.0);
ssGlobals l9_113=param_4;
float l9_114=0.0;
float l9_115=float((*sc_set0.UserUniforms).red_channel!=0);
l9_114=l9_115;
float l9_116=0.0;
float l9_117=float((*sc_set0.UserUniforms).green_channel!=0);
l9_116=l9_117;
float l9_118=0.0;
float l9_119=float((*sc_set0.UserUniforms).blue_channel!=0);
l9_118=l9_119;
float l9_120=0.0;
l9_120=(l9_114+l9_116)+l9_118;
float l9_121=0.0;
l9_121=float(l9_120>(*sc_set0.UserUniforms).Port_Input1_N009);
l9_110=l9_121;
float4 l9_122;
if ((l9_110*1.0)!=0.0)
{
float l9_123=0.0;
float l9_124=float((*sc_set0.UserUniforms).red_channel!=0);
l9_123=l9_124;
float4 l9_125=float4(0.0);
int l9_126;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_127=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_127=0;
}
else
{
l9_127=in.varStereoViewID;
}
int l9_128=l9_127;
l9_126=1-l9_128;
}
else
{
int l9_129=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_129=0;
}
else
{
l9_129=in.varStereoViewID;
}
int l9_130=l9_129;
l9_126=l9_130;
}
int l9_131=l9_126;
int l9_132=baseTexLayout_tmp;
int l9_133=l9_131;
float2 l9_134=l9_113.Surface_UVCoord0;
bool l9_135=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_136=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_137=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_138=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_139=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_140=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_141=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_142=0.0;
bool l9_143=l9_140&&(!l9_138);
float l9_144=1.0;
float l9_145=l9_134.x;
int l9_146=l9_137.x;
if (l9_146==1)
{
l9_145=fract(l9_145);
}
else
{
if (l9_146==2)
{
float l9_147=fract(l9_145);
float l9_148=l9_145-l9_147;
float l9_149=step(0.25,fract(l9_148*0.5));
l9_145=mix(l9_147,1.0-l9_147,fast::clamp(l9_149,0.0,1.0));
}
}
l9_134.x=l9_145;
float l9_150=l9_134.y;
int l9_151=l9_137.y;
if (l9_151==1)
{
l9_150=fract(l9_150);
}
else
{
if (l9_151==2)
{
float l9_152=fract(l9_150);
float l9_153=l9_150-l9_152;
float l9_154=step(0.25,fract(l9_153*0.5));
l9_150=mix(l9_152,1.0-l9_152,fast::clamp(l9_154,0.0,1.0));
}
}
l9_134.y=l9_150;
if (l9_138)
{
bool l9_155=l9_140;
bool l9_156;
if (l9_155)
{
l9_156=l9_137.x==3;
}
else
{
l9_156=l9_155;
}
float l9_157=l9_134.x;
float l9_158=l9_139.x;
float l9_159=l9_139.z;
bool l9_160=l9_156;
float l9_161=l9_144;
float l9_162=fast::clamp(l9_157,l9_158,l9_159);
float l9_163=step(abs(l9_157-l9_162),9.9999997e-06);
l9_161*=(l9_163+((1.0-float(l9_160))*(1.0-l9_163)));
l9_157=l9_162;
l9_134.x=l9_157;
l9_144=l9_161;
bool l9_164=l9_140;
bool l9_165;
if (l9_164)
{
l9_165=l9_137.y==3;
}
else
{
l9_165=l9_164;
}
float l9_166=l9_134.y;
float l9_167=l9_139.y;
float l9_168=l9_139.w;
bool l9_169=l9_165;
float l9_170=l9_144;
float l9_171=fast::clamp(l9_166,l9_167,l9_168);
float l9_172=step(abs(l9_166-l9_171),9.9999997e-06);
l9_170*=(l9_172+((1.0-float(l9_169))*(1.0-l9_172)));
l9_166=l9_171;
l9_134.y=l9_166;
l9_144=l9_170;
}
float2 l9_173=l9_134;
bool l9_174=l9_135;
float3x3 l9_175=l9_136;
if (l9_174)
{
l9_173=float2((l9_175*float3(l9_173,1.0)).xy);
}
float2 l9_176=l9_173;
l9_134=l9_176;
float l9_177=l9_134.x;
int l9_178=l9_137.x;
bool l9_179=l9_143;
float l9_180=l9_144;
if ((l9_178==0)||(l9_178==3))
{
float l9_181=l9_177;
float l9_182=0.0;
float l9_183=1.0;
bool l9_184=l9_179;
float l9_185=l9_180;
float l9_186=fast::clamp(l9_181,l9_182,l9_183);
float l9_187=step(abs(l9_181-l9_186),9.9999997e-06);
l9_185*=(l9_187+((1.0-float(l9_184))*(1.0-l9_187)));
l9_181=l9_186;
l9_177=l9_181;
l9_180=l9_185;
}
l9_134.x=l9_177;
l9_144=l9_180;
float l9_188=l9_134.y;
int l9_189=l9_137.y;
bool l9_190=l9_143;
float l9_191=l9_144;
if ((l9_189==0)||(l9_189==3))
{
float l9_192=l9_188;
float l9_193=0.0;
float l9_194=1.0;
bool l9_195=l9_190;
float l9_196=l9_191;
float l9_197=fast::clamp(l9_192,l9_193,l9_194);
float l9_198=step(abs(l9_192-l9_197),9.9999997e-06);
l9_196*=(l9_198+((1.0-float(l9_195))*(1.0-l9_198)));
l9_192=l9_197;
l9_188=l9_192;
l9_191=l9_196;
}
l9_134.y=l9_188;
l9_144=l9_191;
float2 l9_199=l9_134;
int l9_200=l9_132;
int l9_201=l9_133;
float l9_202=l9_142;
float2 l9_203=l9_199;
int l9_204=l9_200;
int l9_205=l9_201;
float3 l9_206=float3(0.0);
if (l9_204==0)
{
l9_206=float3(l9_203,0.0);
}
else
{
if (l9_204==1)
{
l9_206=float3(l9_203.x,(l9_203.y*0.5)+(0.5-(float(l9_205)*0.5)),0.0);
}
else
{
l9_206=float3(l9_203,float(l9_205));
}
}
float3 l9_207=l9_206;
float3 l9_208=l9_207;
float4 l9_209=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_208.xy,bias(l9_202));
float4 l9_210=l9_209;
if (l9_140)
{
l9_210=mix(l9_141,l9_210,float4(l9_144));
}
float4 l9_211=l9_210;
l9_125=l9_211;
float l9_212=0.0;
float l9_213=0.0;
float l9_214=0.0;
float4 l9_215=l9_125;
float l9_216=l9_215.x;
float l9_217=l9_215.y;
float l9_218=l9_215.z;
l9_212=l9_216;
l9_213=l9_217;
l9_214=l9_218;
float l9_219=0.0;
l9_219=l9_123*l9_212;
float l9_220=0.0;
float l9_221=float((*sc_set0.UserUniforms).green_channel!=0);
l9_220=l9_221;
float l9_222=0.0;
l9_222=l9_220*l9_213;
float l9_223=0.0;
float l9_224=float((*sc_set0.UserUniforms).blue_channel!=0);
l9_223=l9_224;
float l9_225=0.0;
l9_225=l9_214*l9_223;
float l9_226=0.0;
float l9_227=0.0;
float l9_228=(*sc_set0.UserUniforms).Port_Value1_N036;
float l9_229=0.0;
ssGlobals l9_230=l9_113;
float l9_231=0.0;
float l9_232=float((*sc_set0.UserUniforms).alpha_channel!=0);
l9_231=l9_232;
float l9_233=0.0;
l9_233=float(l9_231==(*sc_set0.UserUniforms).Port_Input1_N035);
l9_227=l9_233;
float l9_234;
if ((l9_227*1.0)!=0.0)
{
l9_234=l9_228;
}
else
{
float4 l9_235=float4(0.0);
int l9_236;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_237=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_237=0;
}
else
{
l9_237=in.varStereoViewID;
}
int l9_238=l9_237;
l9_236=1-l9_238;
}
else
{
int l9_239=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_239=0;
}
else
{
l9_239=in.varStereoViewID;
}
int l9_240=l9_239;
l9_236=l9_240;
}
int l9_241=l9_236;
int l9_242=baseTexLayout_tmp;
int l9_243=l9_241;
float2 l9_244=l9_230.Surface_UVCoord0;
bool l9_245=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_246=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_247=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_248=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_249=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_250=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_251=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_252=0.0;
bool l9_253=l9_250&&(!l9_248);
float l9_254=1.0;
float l9_255=l9_244.x;
int l9_256=l9_247.x;
if (l9_256==1)
{
l9_255=fract(l9_255);
}
else
{
if (l9_256==2)
{
float l9_257=fract(l9_255);
float l9_258=l9_255-l9_257;
float l9_259=step(0.25,fract(l9_258*0.5));
l9_255=mix(l9_257,1.0-l9_257,fast::clamp(l9_259,0.0,1.0));
}
}
l9_244.x=l9_255;
float l9_260=l9_244.y;
int l9_261=l9_247.y;
if (l9_261==1)
{
l9_260=fract(l9_260);
}
else
{
if (l9_261==2)
{
float l9_262=fract(l9_260);
float l9_263=l9_260-l9_262;
float l9_264=step(0.25,fract(l9_263*0.5));
l9_260=mix(l9_262,1.0-l9_262,fast::clamp(l9_264,0.0,1.0));
}
}
l9_244.y=l9_260;
if (l9_248)
{
bool l9_265=l9_250;
bool l9_266;
if (l9_265)
{
l9_266=l9_247.x==3;
}
else
{
l9_266=l9_265;
}
float l9_267=l9_244.x;
float l9_268=l9_249.x;
float l9_269=l9_249.z;
bool l9_270=l9_266;
float l9_271=l9_254;
float l9_272=fast::clamp(l9_267,l9_268,l9_269);
float l9_273=step(abs(l9_267-l9_272),9.9999997e-06);
l9_271*=(l9_273+((1.0-float(l9_270))*(1.0-l9_273)));
l9_267=l9_272;
l9_244.x=l9_267;
l9_254=l9_271;
bool l9_274=l9_250;
bool l9_275;
if (l9_274)
{
l9_275=l9_247.y==3;
}
else
{
l9_275=l9_274;
}
float l9_276=l9_244.y;
float l9_277=l9_249.y;
float l9_278=l9_249.w;
bool l9_279=l9_275;
float l9_280=l9_254;
float l9_281=fast::clamp(l9_276,l9_277,l9_278);
float l9_282=step(abs(l9_276-l9_281),9.9999997e-06);
l9_280*=(l9_282+((1.0-float(l9_279))*(1.0-l9_282)));
l9_276=l9_281;
l9_244.y=l9_276;
l9_254=l9_280;
}
float2 l9_283=l9_244;
bool l9_284=l9_245;
float3x3 l9_285=l9_246;
if (l9_284)
{
l9_283=float2((l9_285*float3(l9_283,1.0)).xy);
}
float2 l9_286=l9_283;
l9_244=l9_286;
float l9_287=l9_244.x;
int l9_288=l9_247.x;
bool l9_289=l9_253;
float l9_290=l9_254;
if ((l9_288==0)||(l9_288==3))
{
float l9_291=l9_287;
float l9_292=0.0;
float l9_293=1.0;
bool l9_294=l9_289;
float l9_295=l9_290;
float l9_296=fast::clamp(l9_291,l9_292,l9_293);
float l9_297=step(abs(l9_291-l9_296),9.9999997e-06);
l9_295*=(l9_297+((1.0-float(l9_294))*(1.0-l9_297)));
l9_291=l9_296;
l9_287=l9_291;
l9_290=l9_295;
}
l9_244.x=l9_287;
l9_254=l9_290;
float l9_298=l9_244.y;
int l9_299=l9_247.y;
bool l9_300=l9_253;
float l9_301=l9_254;
if ((l9_299==0)||(l9_299==3))
{
float l9_302=l9_298;
float l9_303=0.0;
float l9_304=1.0;
bool l9_305=l9_300;
float l9_306=l9_301;
float l9_307=fast::clamp(l9_302,l9_303,l9_304);
float l9_308=step(abs(l9_302-l9_307),9.9999997e-06);
l9_306*=(l9_308+((1.0-float(l9_305))*(1.0-l9_308)));
l9_302=l9_307;
l9_298=l9_302;
l9_301=l9_306;
}
l9_244.y=l9_298;
l9_254=l9_301;
float2 l9_309=l9_244;
int l9_310=l9_242;
int l9_311=l9_243;
float l9_312=l9_252;
float2 l9_313=l9_309;
int l9_314=l9_310;
int l9_315=l9_311;
float3 l9_316=float3(0.0);
if (l9_314==0)
{
l9_316=float3(l9_313,0.0);
}
else
{
if (l9_314==1)
{
l9_316=float3(l9_313.x,(l9_313.y*0.5)+(0.5-(float(l9_315)*0.5)),0.0);
}
else
{
l9_316=float3(l9_313,float(l9_315));
}
}
float3 l9_317=l9_316;
float3 l9_318=l9_317;
float4 l9_319=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_318.xy,bias(l9_312));
float4 l9_320=l9_319;
if (l9_250)
{
l9_320=mix(l9_251,l9_320,float4(l9_254));
}
float4 l9_321=l9_320;
l9_235=l9_321;
float l9_322=0.0;
float4 l9_323=l9_235;
float l9_324=l9_323.w;
l9_322=l9_324;
l9_229=l9_322;
l9_234=l9_229;
}
l9_226=l9_234;
float4 l9_325=float4(0.0);
l9_325.x=l9_219;
l9_325.y=l9_222;
l9_325.z=l9_225;
l9_325.w=l9_226;
l9_111=l9_325;
l9_122=l9_111;
}
else
{
float4 l9_326=float4(0.0);
float l9_327=0.0;
float4 l9_328=float4(0.0);
float4 l9_329=(*sc_set0.UserUniforms).Port_Default_N050;
ssGlobals l9_330=l9_113;
float l9_331=0.0;
float l9_332=float((*sc_set0.UserUniforms).red_channel!=0);
l9_331=l9_332;
float l9_333=0.0;
float l9_334=float((*sc_set0.UserUniforms).green_channel!=0);
l9_333=l9_334;
float l9_335=0.0;
float l9_336=float((*sc_set0.UserUniforms).blue_channel!=0);
l9_335=l9_336;
float l9_337=0.0;
l9_337=(l9_331+l9_333)+l9_335;
float l9_338=0.0;
l9_338=float(l9_337==(*sc_set0.UserUniforms).Port_Input1_N046);
l9_327=l9_338;
float4 l9_339;
if ((l9_327*1.0)!=0.0)
{
float4 l9_340=float4(0.0);
float l9_341=0.0;
float4 l9_342=float4(0.0);
float4 l9_343=float4(0.0);
ssGlobals l9_344=l9_330;
float l9_345=0.0;
float l9_346=float((*sc_set0.UserUniforms).red_channel!=0);
l9_345=l9_346;
float l9_347=0.0;
l9_347=float(l9_345==(*sc_set0.UserUniforms).Port_Input1_N051);
l9_341=l9_347;
float4 l9_348;
if ((l9_341*1.0)!=0.0)
{
float4 l9_349=float4(0.0);
int l9_350;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_351=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_351=0;
}
else
{
l9_351=in.varStereoViewID;
}
int l9_352=l9_351;
l9_350=1-l9_352;
}
else
{
int l9_353=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_353=0;
}
else
{
l9_353=in.varStereoViewID;
}
int l9_354=l9_353;
l9_350=l9_354;
}
int l9_355=l9_350;
int l9_356=baseTexLayout_tmp;
int l9_357=l9_355;
float2 l9_358=l9_344.Surface_UVCoord0;
bool l9_359=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_360=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_361=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_362=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_363=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_364=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_365=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_366=0.0;
bool l9_367=l9_364&&(!l9_362);
float l9_368=1.0;
float l9_369=l9_358.x;
int l9_370=l9_361.x;
if (l9_370==1)
{
l9_369=fract(l9_369);
}
else
{
if (l9_370==2)
{
float l9_371=fract(l9_369);
float l9_372=l9_369-l9_371;
float l9_373=step(0.25,fract(l9_372*0.5));
l9_369=mix(l9_371,1.0-l9_371,fast::clamp(l9_373,0.0,1.0));
}
}
l9_358.x=l9_369;
float l9_374=l9_358.y;
int l9_375=l9_361.y;
if (l9_375==1)
{
l9_374=fract(l9_374);
}
else
{
if (l9_375==2)
{
float l9_376=fract(l9_374);
float l9_377=l9_374-l9_376;
float l9_378=step(0.25,fract(l9_377*0.5));
l9_374=mix(l9_376,1.0-l9_376,fast::clamp(l9_378,0.0,1.0));
}
}
l9_358.y=l9_374;
if (l9_362)
{
bool l9_379=l9_364;
bool l9_380;
if (l9_379)
{
l9_380=l9_361.x==3;
}
else
{
l9_380=l9_379;
}
float l9_381=l9_358.x;
float l9_382=l9_363.x;
float l9_383=l9_363.z;
bool l9_384=l9_380;
float l9_385=l9_368;
float l9_386=fast::clamp(l9_381,l9_382,l9_383);
float l9_387=step(abs(l9_381-l9_386),9.9999997e-06);
l9_385*=(l9_387+((1.0-float(l9_384))*(1.0-l9_387)));
l9_381=l9_386;
l9_358.x=l9_381;
l9_368=l9_385;
bool l9_388=l9_364;
bool l9_389;
if (l9_388)
{
l9_389=l9_361.y==3;
}
else
{
l9_389=l9_388;
}
float l9_390=l9_358.y;
float l9_391=l9_363.y;
float l9_392=l9_363.w;
bool l9_393=l9_389;
float l9_394=l9_368;
float l9_395=fast::clamp(l9_390,l9_391,l9_392);
float l9_396=step(abs(l9_390-l9_395),9.9999997e-06);
l9_394*=(l9_396+((1.0-float(l9_393))*(1.0-l9_396)));
l9_390=l9_395;
l9_358.y=l9_390;
l9_368=l9_394;
}
float2 l9_397=l9_358;
bool l9_398=l9_359;
float3x3 l9_399=l9_360;
if (l9_398)
{
l9_397=float2((l9_399*float3(l9_397,1.0)).xy);
}
float2 l9_400=l9_397;
l9_358=l9_400;
float l9_401=l9_358.x;
int l9_402=l9_361.x;
bool l9_403=l9_367;
float l9_404=l9_368;
if ((l9_402==0)||(l9_402==3))
{
float l9_405=l9_401;
float l9_406=0.0;
float l9_407=1.0;
bool l9_408=l9_403;
float l9_409=l9_404;
float l9_410=fast::clamp(l9_405,l9_406,l9_407);
float l9_411=step(abs(l9_405-l9_410),9.9999997e-06);
l9_409*=(l9_411+((1.0-float(l9_408))*(1.0-l9_411)));
l9_405=l9_410;
l9_401=l9_405;
l9_404=l9_409;
}
l9_358.x=l9_401;
l9_368=l9_404;
float l9_412=l9_358.y;
int l9_413=l9_361.y;
bool l9_414=l9_367;
float l9_415=l9_368;
if ((l9_413==0)||(l9_413==3))
{
float l9_416=l9_412;
float l9_417=0.0;
float l9_418=1.0;
bool l9_419=l9_414;
float l9_420=l9_415;
float l9_421=fast::clamp(l9_416,l9_417,l9_418);
float l9_422=step(abs(l9_416-l9_421),9.9999997e-06);
l9_420*=(l9_422+((1.0-float(l9_419))*(1.0-l9_422)));
l9_416=l9_421;
l9_412=l9_416;
l9_415=l9_420;
}
l9_358.y=l9_412;
l9_368=l9_415;
float2 l9_423=l9_358;
int l9_424=l9_356;
int l9_425=l9_357;
float l9_426=l9_366;
float2 l9_427=l9_423;
int l9_428=l9_424;
int l9_429=l9_425;
float3 l9_430=float3(0.0);
if (l9_428==0)
{
l9_430=float3(l9_427,0.0);
}
else
{
if (l9_428==1)
{
l9_430=float3(l9_427.x,(l9_427.y*0.5)+(0.5-(float(l9_429)*0.5)),0.0);
}
else
{
l9_430=float3(l9_427,float(l9_429));
}
}
float3 l9_431=l9_430;
float3 l9_432=l9_431;
float4 l9_433=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_432.xy,bias(l9_426));
float4 l9_434=l9_433;
if (l9_364)
{
l9_434=mix(l9_365,l9_434,float4(l9_368));
}
float4 l9_435=l9_434;
l9_349=l9_435;
float l9_436=0.0;
float4 l9_437=l9_349;
float l9_438=l9_437.x;
l9_436=l9_438;
float l9_439=0.0;
float l9_440=0.0;
float l9_441=(*sc_set0.UserUniforms).Port_Value1_N043;
float l9_442=0.0;
ssGlobals l9_443=l9_344;
float l9_444=0.0;
float l9_445=float((*sc_set0.UserUniforms).alpha_channel!=0);
l9_444=l9_445;
float l9_446=0.0;
l9_446=float(l9_444==(*sc_set0.UserUniforms).Port_Input1_N034);
l9_440=l9_446;
float l9_447;
if ((l9_440*1.0)!=0.0)
{
l9_447=l9_441;
}
else
{
float4 l9_448=float4(0.0);
int l9_449;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_450=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_450=0;
}
else
{
l9_450=in.varStereoViewID;
}
int l9_451=l9_450;
l9_449=1-l9_451;
}
else
{
int l9_452=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_452=0;
}
else
{
l9_452=in.varStereoViewID;
}
int l9_453=l9_452;
l9_449=l9_453;
}
int l9_454=l9_449;
int l9_455=baseTexLayout_tmp;
int l9_456=l9_454;
float2 l9_457=l9_443.Surface_UVCoord0;
bool l9_458=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_459=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_460=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_461=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_462=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_463=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_464=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_465=0.0;
bool l9_466=l9_463&&(!l9_461);
float l9_467=1.0;
float l9_468=l9_457.x;
int l9_469=l9_460.x;
if (l9_469==1)
{
l9_468=fract(l9_468);
}
else
{
if (l9_469==2)
{
float l9_470=fract(l9_468);
float l9_471=l9_468-l9_470;
float l9_472=step(0.25,fract(l9_471*0.5));
l9_468=mix(l9_470,1.0-l9_470,fast::clamp(l9_472,0.0,1.0));
}
}
l9_457.x=l9_468;
float l9_473=l9_457.y;
int l9_474=l9_460.y;
if (l9_474==1)
{
l9_473=fract(l9_473);
}
else
{
if (l9_474==2)
{
float l9_475=fract(l9_473);
float l9_476=l9_473-l9_475;
float l9_477=step(0.25,fract(l9_476*0.5));
l9_473=mix(l9_475,1.0-l9_475,fast::clamp(l9_477,0.0,1.0));
}
}
l9_457.y=l9_473;
if (l9_461)
{
bool l9_478=l9_463;
bool l9_479;
if (l9_478)
{
l9_479=l9_460.x==3;
}
else
{
l9_479=l9_478;
}
float l9_480=l9_457.x;
float l9_481=l9_462.x;
float l9_482=l9_462.z;
bool l9_483=l9_479;
float l9_484=l9_467;
float l9_485=fast::clamp(l9_480,l9_481,l9_482);
float l9_486=step(abs(l9_480-l9_485),9.9999997e-06);
l9_484*=(l9_486+((1.0-float(l9_483))*(1.0-l9_486)));
l9_480=l9_485;
l9_457.x=l9_480;
l9_467=l9_484;
bool l9_487=l9_463;
bool l9_488;
if (l9_487)
{
l9_488=l9_460.y==3;
}
else
{
l9_488=l9_487;
}
float l9_489=l9_457.y;
float l9_490=l9_462.y;
float l9_491=l9_462.w;
bool l9_492=l9_488;
float l9_493=l9_467;
float l9_494=fast::clamp(l9_489,l9_490,l9_491);
float l9_495=step(abs(l9_489-l9_494),9.9999997e-06);
l9_493*=(l9_495+((1.0-float(l9_492))*(1.0-l9_495)));
l9_489=l9_494;
l9_457.y=l9_489;
l9_467=l9_493;
}
float2 l9_496=l9_457;
bool l9_497=l9_458;
float3x3 l9_498=l9_459;
if (l9_497)
{
l9_496=float2((l9_498*float3(l9_496,1.0)).xy);
}
float2 l9_499=l9_496;
l9_457=l9_499;
float l9_500=l9_457.x;
int l9_501=l9_460.x;
bool l9_502=l9_466;
float l9_503=l9_467;
if ((l9_501==0)||(l9_501==3))
{
float l9_504=l9_500;
float l9_505=0.0;
float l9_506=1.0;
bool l9_507=l9_502;
float l9_508=l9_503;
float l9_509=fast::clamp(l9_504,l9_505,l9_506);
float l9_510=step(abs(l9_504-l9_509),9.9999997e-06);
l9_508*=(l9_510+((1.0-float(l9_507))*(1.0-l9_510)));
l9_504=l9_509;
l9_500=l9_504;
l9_503=l9_508;
}
l9_457.x=l9_500;
l9_467=l9_503;
float l9_511=l9_457.y;
int l9_512=l9_460.y;
bool l9_513=l9_466;
float l9_514=l9_467;
if ((l9_512==0)||(l9_512==3))
{
float l9_515=l9_511;
float l9_516=0.0;
float l9_517=1.0;
bool l9_518=l9_513;
float l9_519=l9_514;
float l9_520=fast::clamp(l9_515,l9_516,l9_517);
float l9_521=step(abs(l9_515-l9_520),9.9999997e-06);
l9_519*=(l9_521+((1.0-float(l9_518))*(1.0-l9_521)));
l9_515=l9_520;
l9_511=l9_515;
l9_514=l9_519;
}
l9_457.y=l9_511;
l9_467=l9_514;
float2 l9_522=l9_457;
int l9_523=l9_455;
int l9_524=l9_456;
float l9_525=l9_465;
float2 l9_526=l9_522;
int l9_527=l9_523;
int l9_528=l9_524;
float3 l9_529=float3(0.0);
if (l9_527==0)
{
l9_529=float3(l9_526,0.0);
}
else
{
if (l9_527==1)
{
l9_529=float3(l9_526.x,(l9_526.y*0.5)+(0.5-(float(l9_528)*0.5)),0.0);
}
else
{
l9_529=float3(l9_526,float(l9_528));
}
}
float3 l9_530=l9_529;
float3 l9_531=l9_530;
float4 l9_532=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_531.xy,bias(l9_525));
float4 l9_533=l9_532;
if (l9_463)
{
l9_533=mix(l9_464,l9_533,float4(l9_467));
}
float4 l9_534=l9_533;
l9_448=l9_534;
float l9_535=0.0;
float4 l9_536=l9_448;
float l9_537=l9_536.w;
l9_535=l9_537;
l9_442=l9_535;
l9_447=l9_442;
}
l9_439=l9_447;
float4 l9_538=float4(0.0);
l9_538.x=l9_436;
l9_538.y=l9_436;
l9_538.z=l9_436;
l9_538.w=l9_439;
l9_342=l9_538;
l9_348=l9_342;
}
else
{
float4 l9_539=float4(0.0);
float l9_540=0.0;
float4 l9_541=float4(0.0);
float4 l9_542=float4(0.0);
ssGlobals l9_543=l9_344;
float l9_544=0.0;
float l9_545=float((*sc_set0.UserUniforms).green_channel!=0);
l9_544=l9_545;
float l9_546=0.0;
l9_546=float(l9_544==(*sc_set0.UserUniforms).Port_Input1_N052);
l9_540=l9_546;
float4 l9_547;
if ((l9_540*1.0)!=0.0)
{
float4 l9_548=float4(0.0);
int l9_549;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_550=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_550=0;
}
else
{
l9_550=in.varStereoViewID;
}
int l9_551=l9_550;
l9_549=1-l9_551;
}
else
{
int l9_552=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_552=0;
}
else
{
l9_552=in.varStereoViewID;
}
int l9_553=l9_552;
l9_549=l9_553;
}
int l9_554=l9_549;
int l9_555=baseTexLayout_tmp;
int l9_556=l9_554;
float2 l9_557=l9_543.Surface_UVCoord0;
bool l9_558=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_559=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_560=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_561=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_562=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_563=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_564=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_565=0.0;
bool l9_566=l9_563&&(!l9_561);
float l9_567=1.0;
float l9_568=l9_557.x;
int l9_569=l9_560.x;
if (l9_569==1)
{
l9_568=fract(l9_568);
}
else
{
if (l9_569==2)
{
float l9_570=fract(l9_568);
float l9_571=l9_568-l9_570;
float l9_572=step(0.25,fract(l9_571*0.5));
l9_568=mix(l9_570,1.0-l9_570,fast::clamp(l9_572,0.0,1.0));
}
}
l9_557.x=l9_568;
float l9_573=l9_557.y;
int l9_574=l9_560.y;
if (l9_574==1)
{
l9_573=fract(l9_573);
}
else
{
if (l9_574==2)
{
float l9_575=fract(l9_573);
float l9_576=l9_573-l9_575;
float l9_577=step(0.25,fract(l9_576*0.5));
l9_573=mix(l9_575,1.0-l9_575,fast::clamp(l9_577,0.0,1.0));
}
}
l9_557.y=l9_573;
if (l9_561)
{
bool l9_578=l9_563;
bool l9_579;
if (l9_578)
{
l9_579=l9_560.x==3;
}
else
{
l9_579=l9_578;
}
float l9_580=l9_557.x;
float l9_581=l9_562.x;
float l9_582=l9_562.z;
bool l9_583=l9_579;
float l9_584=l9_567;
float l9_585=fast::clamp(l9_580,l9_581,l9_582);
float l9_586=step(abs(l9_580-l9_585),9.9999997e-06);
l9_584*=(l9_586+((1.0-float(l9_583))*(1.0-l9_586)));
l9_580=l9_585;
l9_557.x=l9_580;
l9_567=l9_584;
bool l9_587=l9_563;
bool l9_588;
if (l9_587)
{
l9_588=l9_560.y==3;
}
else
{
l9_588=l9_587;
}
float l9_589=l9_557.y;
float l9_590=l9_562.y;
float l9_591=l9_562.w;
bool l9_592=l9_588;
float l9_593=l9_567;
float l9_594=fast::clamp(l9_589,l9_590,l9_591);
float l9_595=step(abs(l9_589-l9_594),9.9999997e-06);
l9_593*=(l9_595+((1.0-float(l9_592))*(1.0-l9_595)));
l9_589=l9_594;
l9_557.y=l9_589;
l9_567=l9_593;
}
float2 l9_596=l9_557;
bool l9_597=l9_558;
float3x3 l9_598=l9_559;
if (l9_597)
{
l9_596=float2((l9_598*float3(l9_596,1.0)).xy);
}
float2 l9_599=l9_596;
l9_557=l9_599;
float l9_600=l9_557.x;
int l9_601=l9_560.x;
bool l9_602=l9_566;
float l9_603=l9_567;
if ((l9_601==0)||(l9_601==3))
{
float l9_604=l9_600;
float l9_605=0.0;
float l9_606=1.0;
bool l9_607=l9_602;
float l9_608=l9_603;
float l9_609=fast::clamp(l9_604,l9_605,l9_606);
float l9_610=step(abs(l9_604-l9_609),9.9999997e-06);
l9_608*=(l9_610+((1.0-float(l9_607))*(1.0-l9_610)));
l9_604=l9_609;
l9_600=l9_604;
l9_603=l9_608;
}
l9_557.x=l9_600;
l9_567=l9_603;
float l9_611=l9_557.y;
int l9_612=l9_560.y;
bool l9_613=l9_566;
float l9_614=l9_567;
if ((l9_612==0)||(l9_612==3))
{
float l9_615=l9_611;
float l9_616=0.0;
float l9_617=1.0;
bool l9_618=l9_613;
float l9_619=l9_614;
float l9_620=fast::clamp(l9_615,l9_616,l9_617);
float l9_621=step(abs(l9_615-l9_620),9.9999997e-06);
l9_619*=(l9_621+((1.0-float(l9_618))*(1.0-l9_621)));
l9_615=l9_620;
l9_611=l9_615;
l9_614=l9_619;
}
l9_557.y=l9_611;
l9_567=l9_614;
float2 l9_622=l9_557;
int l9_623=l9_555;
int l9_624=l9_556;
float l9_625=l9_565;
float2 l9_626=l9_622;
int l9_627=l9_623;
int l9_628=l9_624;
float3 l9_629=float3(0.0);
if (l9_627==0)
{
l9_629=float3(l9_626,0.0);
}
else
{
if (l9_627==1)
{
l9_629=float3(l9_626.x,(l9_626.y*0.5)+(0.5-(float(l9_628)*0.5)),0.0);
}
else
{
l9_629=float3(l9_626,float(l9_628));
}
}
float3 l9_630=l9_629;
float3 l9_631=l9_630;
float4 l9_632=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_631.xy,bias(l9_625));
float4 l9_633=l9_632;
if (l9_563)
{
l9_633=mix(l9_564,l9_633,float4(l9_567));
}
float4 l9_634=l9_633;
l9_548=l9_634;
float l9_635=0.0;
float4 l9_636=l9_548;
float l9_637=l9_636.y;
l9_635=l9_637;
float l9_638=0.0;
float l9_639=0.0;
float l9_640=(*sc_set0.UserUniforms).Port_Value1_N043;
float l9_641=0.0;
ssGlobals l9_642=l9_543;
float l9_643=0.0;
float l9_644=float((*sc_set0.UserUniforms).alpha_channel!=0);
l9_643=l9_644;
float l9_645=0.0;
l9_645=float(l9_643==(*sc_set0.UserUniforms).Port_Input1_N034);
l9_639=l9_645;
float l9_646;
if ((l9_639*1.0)!=0.0)
{
l9_646=l9_640;
}
else
{
float4 l9_647=float4(0.0);
int l9_648;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_649=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_649=0;
}
else
{
l9_649=in.varStereoViewID;
}
int l9_650=l9_649;
l9_648=1-l9_650;
}
else
{
int l9_651=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_651=0;
}
else
{
l9_651=in.varStereoViewID;
}
int l9_652=l9_651;
l9_648=l9_652;
}
int l9_653=l9_648;
int l9_654=baseTexLayout_tmp;
int l9_655=l9_653;
float2 l9_656=l9_642.Surface_UVCoord0;
bool l9_657=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_658=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_659=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_660=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_661=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_662=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_663=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_664=0.0;
bool l9_665=l9_662&&(!l9_660);
float l9_666=1.0;
float l9_667=l9_656.x;
int l9_668=l9_659.x;
if (l9_668==1)
{
l9_667=fract(l9_667);
}
else
{
if (l9_668==2)
{
float l9_669=fract(l9_667);
float l9_670=l9_667-l9_669;
float l9_671=step(0.25,fract(l9_670*0.5));
l9_667=mix(l9_669,1.0-l9_669,fast::clamp(l9_671,0.0,1.0));
}
}
l9_656.x=l9_667;
float l9_672=l9_656.y;
int l9_673=l9_659.y;
if (l9_673==1)
{
l9_672=fract(l9_672);
}
else
{
if (l9_673==2)
{
float l9_674=fract(l9_672);
float l9_675=l9_672-l9_674;
float l9_676=step(0.25,fract(l9_675*0.5));
l9_672=mix(l9_674,1.0-l9_674,fast::clamp(l9_676,0.0,1.0));
}
}
l9_656.y=l9_672;
if (l9_660)
{
bool l9_677=l9_662;
bool l9_678;
if (l9_677)
{
l9_678=l9_659.x==3;
}
else
{
l9_678=l9_677;
}
float l9_679=l9_656.x;
float l9_680=l9_661.x;
float l9_681=l9_661.z;
bool l9_682=l9_678;
float l9_683=l9_666;
float l9_684=fast::clamp(l9_679,l9_680,l9_681);
float l9_685=step(abs(l9_679-l9_684),9.9999997e-06);
l9_683*=(l9_685+((1.0-float(l9_682))*(1.0-l9_685)));
l9_679=l9_684;
l9_656.x=l9_679;
l9_666=l9_683;
bool l9_686=l9_662;
bool l9_687;
if (l9_686)
{
l9_687=l9_659.y==3;
}
else
{
l9_687=l9_686;
}
float l9_688=l9_656.y;
float l9_689=l9_661.y;
float l9_690=l9_661.w;
bool l9_691=l9_687;
float l9_692=l9_666;
float l9_693=fast::clamp(l9_688,l9_689,l9_690);
float l9_694=step(abs(l9_688-l9_693),9.9999997e-06);
l9_692*=(l9_694+((1.0-float(l9_691))*(1.0-l9_694)));
l9_688=l9_693;
l9_656.y=l9_688;
l9_666=l9_692;
}
float2 l9_695=l9_656;
bool l9_696=l9_657;
float3x3 l9_697=l9_658;
if (l9_696)
{
l9_695=float2((l9_697*float3(l9_695,1.0)).xy);
}
float2 l9_698=l9_695;
l9_656=l9_698;
float l9_699=l9_656.x;
int l9_700=l9_659.x;
bool l9_701=l9_665;
float l9_702=l9_666;
if ((l9_700==0)||(l9_700==3))
{
float l9_703=l9_699;
float l9_704=0.0;
float l9_705=1.0;
bool l9_706=l9_701;
float l9_707=l9_702;
float l9_708=fast::clamp(l9_703,l9_704,l9_705);
float l9_709=step(abs(l9_703-l9_708),9.9999997e-06);
l9_707*=(l9_709+((1.0-float(l9_706))*(1.0-l9_709)));
l9_703=l9_708;
l9_699=l9_703;
l9_702=l9_707;
}
l9_656.x=l9_699;
l9_666=l9_702;
float l9_710=l9_656.y;
int l9_711=l9_659.y;
bool l9_712=l9_665;
float l9_713=l9_666;
if ((l9_711==0)||(l9_711==3))
{
float l9_714=l9_710;
float l9_715=0.0;
float l9_716=1.0;
bool l9_717=l9_712;
float l9_718=l9_713;
float l9_719=fast::clamp(l9_714,l9_715,l9_716);
float l9_720=step(abs(l9_714-l9_719),9.9999997e-06);
l9_718*=(l9_720+((1.0-float(l9_717))*(1.0-l9_720)));
l9_714=l9_719;
l9_710=l9_714;
l9_713=l9_718;
}
l9_656.y=l9_710;
l9_666=l9_713;
float2 l9_721=l9_656;
int l9_722=l9_654;
int l9_723=l9_655;
float l9_724=l9_664;
float2 l9_725=l9_721;
int l9_726=l9_722;
int l9_727=l9_723;
float3 l9_728=float3(0.0);
if (l9_726==0)
{
l9_728=float3(l9_725,0.0);
}
else
{
if (l9_726==1)
{
l9_728=float3(l9_725.x,(l9_725.y*0.5)+(0.5-(float(l9_727)*0.5)),0.0);
}
else
{
l9_728=float3(l9_725,float(l9_727));
}
}
float3 l9_729=l9_728;
float3 l9_730=l9_729;
float4 l9_731=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_730.xy,bias(l9_724));
float4 l9_732=l9_731;
if (l9_662)
{
l9_732=mix(l9_663,l9_732,float4(l9_666));
}
float4 l9_733=l9_732;
l9_647=l9_733;
float l9_734=0.0;
float4 l9_735=l9_647;
float l9_736=l9_735.w;
l9_734=l9_736;
l9_641=l9_734;
l9_646=l9_641;
}
l9_638=l9_646;
float4 l9_737=float4(0.0);
l9_737.x=l9_635;
l9_737.y=l9_635;
l9_737.z=l9_635;
l9_737.w=l9_638;
l9_541=l9_737;
l9_547=l9_541;
}
else
{
float4 l9_738=float4(0.0);
float l9_739=0.0;
float4 l9_740=float4(0.0);
float4 l9_741=(*sc_set0.UserUniforms).Port_Default_N055;
ssGlobals l9_742=l9_543;
float l9_743=0.0;
float l9_744=float((*sc_set0.UserUniforms).blue_channel!=0);
l9_743=l9_744;
float l9_745=0.0;
l9_745=float(l9_743==(*sc_set0.UserUniforms).Port_Input1_N053);
l9_739=l9_745;
float4 l9_746;
if ((l9_739*1.0)!=0.0)
{
float4 l9_747=float4(0.0);
int l9_748;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_749=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_749=0;
}
else
{
l9_749=in.varStereoViewID;
}
int l9_750=l9_749;
l9_748=1-l9_750;
}
else
{
int l9_751=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_751=0;
}
else
{
l9_751=in.varStereoViewID;
}
int l9_752=l9_751;
l9_748=l9_752;
}
int l9_753=l9_748;
int l9_754=baseTexLayout_tmp;
int l9_755=l9_753;
float2 l9_756=l9_742.Surface_UVCoord0;
bool l9_757=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_758=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_759=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_760=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_761=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_762=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_763=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_764=0.0;
bool l9_765=l9_762&&(!l9_760);
float l9_766=1.0;
float l9_767=l9_756.x;
int l9_768=l9_759.x;
if (l9_768==1)
{
l9_767=fract(l9_767);
}
else
{
if (l9_768==2)
{
float l9_769=fract(l9_767);
float l9_770=l9_767-l9_769;
float l9_771=step(0.25,fract(l9_770*0.5));
l9_767=mix(l9_769,1.0-l9_769,fast::clamp(l9_771,0.0,1.0));
}
}
l9_756.x=l9_767;
float l9_772=l9_756.y;
int l9_773=l9_759.y;
if (l9_773==1)
{
l9_772=fract(l9_772);
}
else
{
if (l9_773==2)
{
float l9_774=fract(l9_772);
float l9_775=l9_772-l9_774;
float l9_776=step(0.25,fract(l9_775*0.5));
l9_772=mix(l9_774,1.0-l9_774,fast::clamp(l9_776,0.0,1.0));
}
}
l9_756.y=l9_772;
if (l9_760)
{
bool l9_777=l9_762;
bool l9_778;
if (l9_777)
{
l9_778=l9_759.x==3;
}
else
{
l9_778=l9_777;
}
float l9_779=l9_756.x;
float l9_780=l9_761.x;
float l9_781=l9_761.z;
bool l9_782=l9_778;
float l9_783=l9_766;
float l9_784=fast::clamp(l9_779,l9_780,l9_781);
float l9_785=step(abs(l9_779-l9_784),9.9999997e-06);
l9_783*=(l9_785+((1.0-float(l9_782))*(1.0-l9_785)));
l9_779=l9_784;
l9_756.x=l9_779;
l9_766=l9_783;
bool l9_786=l9_762;
bool l9_787;
if (l9_786)
{
l9_787=l9_759.y==3;
}
else
{
l9_787=l9_786;
}
float l9_788=l9_756.y;
float l9_789=l9_761.y;
float l9_790=l9_761.w;
bool l9_791=l9_787;
float l9_792=l9_766;
float l9_793=fast::clamp(l9_788,l9_789,l9_790);
float l9_794=step(abs(l9_788-l9_793),9.9999997e-06);
l9_792*=(l9_794+((1.0-float(l9_791))*(1.0-l9_794)));
l9_788=l9_793;
l9_756.y=l9_788;
l9_766=l9_792;
}
float2 l9_795=l9_756;
bool l9_796=l9_757;
float3x3 l9_797=l9_758;
if (l9_796)
{
l9_795=float2((l9_797*float3(l9_795,1.0)).xy);
}
float2 l9_798=l9_795;
l9_756=l9_798;
float l9_799=l9_756.x;
int l9_800=l9_759.x;
bool l9_801=l9_765;
float l9_802=l9_766;
if ((l9_800==0)||(l9_800==3))
{
float l9_803=l9_799;
float l9_804=0.0;
float l9_805=1.0;
bool l9_806=l9_801;
float l9_807=l9_802;
float l9_808=fast::clamp(l9_803,l9_804,l9_805);
float l9_809=step(abs(l9_803-l9_808),9.9999997e-06);
l9_807*=(l9_809+((1.0-float(l9_806))*(1.0-l9_809)));
l9_803=l9_808;
l9_799=l9_803;
l9_802=l9_807;
}
l9_756.x=l9_799;
l9_766=l9_802;
float l9_810=l9_756.y;
int l9_811=l9_759.y;
bool l9_812=l9_765;
float l9_813=l9_766;
if ((l9_811==0)||(l9_811==3))
{
float l9_814=l9_810;
float l9_815=0.0;
float l9_816=1.0;
bool l9_817=l9_812;
float l9_818=l9_813;
float l9_819=fast::clamp(l9_814,l9_815,l9_816);
float l9_820=step(abs(l9_814-l9_819),9.9999997e-06);
l9_818*=(l9_820+((1.0-float(l9_817))*(1.0-l9_820)));
l9_814=l9_819;
l9_810=l9_814;
l9_813=l9_818;
}
l9_756.y=l9_810;
l9_766=l9_813;
float2 l9_821=l9_756;
int l9_822=l9_754;
int l9_823=l9_755;
float l9_824=l9_764;
float2 l9_825=l9_821;
int l9_826=l9_822;
int l9_827=l9_823;
float3 l9_828=float3(0.0);
if (l9_826==0)
{
l9_828=float3(l9_825,0.0);
}
else
{
if (l9_826==1)
{
l9_828=float3(l9_825.x,(l9_825.y*0.5)+(0.5-(float(l9_827)*0.5)),0.0);
}
else
{
l9_828=float3(l9_825,float(l9_827));
}
}
float3 l9_829=l9_828;
float3 l9_830=l9_829;
float4 l9_831=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_830.xy,bias(l9_824));
float4 l9_832=l9_831;
if (l9_762)
{
l9_832=mix(l9_763,l9_832,float4(l9_766));
}
float4 l9_833=l9_832;
l9_747=l9_833;
float l9_834=0.0;
float4 l9_835=l9_747;
float l9_836=l9_835.z;
l9_834=l9_836;
float l9_837=0.0;
float l9_838=0.0;
float l9_839=(*sc_set0.UserUniforms).Port_Value1_N043;
float l9_840=0.0;
ssGlobals l9_841=l9_742;
float l9_842=0.0;
float l9_843=float((*sc_set0.UserUniforms).alpha_channel!=0);
l9_842=l9_843;
float l9_844=0.0;
l9_844=float(l9_842==(*sc_set0.UserUniforms).Port_Input1_N034);
l9_838=l9_844;
float l9_845;
if ((l9_838*1.0)!=0.0)
{
l9_845=l9_839;
}
else
{
float4 l9_846=float4(0.0);
int l9_847;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_848=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_848=0;
}
else
{
l9_848=in.varStereoViewID;
}
int l9_849=l9_848;
l9_847=1-l9_849;
}
else
{
int l9_850=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_850=0;
}
else
{
l9_850=in.varStereoViewID;
}
int l9_851=l9_850;
l9_847=l9_851;
}
int l9_852=l9_847;
int l9_853=baseTexLayout_tmp;
int l9_854=l9_852;
float2 l9_855=l9_841.Surface_UVCoord0;
bool l9_856=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_857=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_858=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_859=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_860=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_861=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_862=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_863=0.0;
bool l9_864=l9_861&&(!l9_859);
float l9_865=1.0;
float l9_866=l9_855.x;
int l9_867=l9_858.x;
if (l9_867==1)
{
l9_866=fract(l9_866);
}
else
{
if (l9_867==2)
{
float l9_868=fract(l9_866);
float l9_869=l9_866-l9_868;
float l9_870=step(0.25,fract(l9_869*0.5));
l9_866=mix(l9_868,1.0-l9_868,fast::clamp(l9_870,0.0,1.0));
}
}
l9_855.x=l9_866;
float l9_871=l9_855.y;
int l9_872=l9_858.y;
if (l9_872==1)
{
l9_871=fract(l9_871);
}
else
{
if (l9_872==2)
{
float l9_873=fract(l9_871);
float l9_874=l9_871-l9_873;
float l9_875=step(0.25,fract(l9_874*0.5));
l9_871=mix(l9_873,1.0-l9_873,fast::clamp(l9_875,0.0,1.0));
}
}
l9_855.y=l9_871;
if (l9_859)
{
bool l9_876=l9_861;
bool l9_877;
if (l9_876)
{
l9_877=l9_858.x==3;
}
else
{
l9_877=l9_876;
}
float l9_878=l9_855.x;
float l9_879=l9_860.x;
float l9_880=l9_860.z;
bool l9_881=l9_877;
float l9_882=l9_865;
float l9_883=fast::clamp(l9_878,l9_879,l9_880);
float l9_884=step(abs(l9_878-l9_883),9.9999997e-06);
l9_882*=(l9_884+((1.0-float(l9_881))*(1.0-l9_884)));
l9_878=l9_883;
l9_855.x=l9_878;
l9_865=l9_882;
bool l9_885=l9_861;
bool l9_886;
if (l9_885)
{
l9_886=l9_858.y==3;
}
else
{
l9_886=l9_885;
}
float l9_887=l9_855.y;
float l9_888=l9_860.y;
float l9_889=l9_860.w;
bool l9_890=l9_886;
float l9_891=l9_865;
float l9_892=fast::clamp(l9_887,l9_888,l9_889);
float l9_893=step(abs(l9_887-l9_892),9.9999997e-06);
l9_891*=(l9_893+((1.0-float(l9_890))*(1.0-l9_893)));
l9_887=l9_892;
l9_855.y=l9_887;
l9_865=l9_891;
}
float2 l9_894=l9_855;
bool l9_895=l9_856;
float3x3 l9_896=l9_857;
if (l9_895)
{
l9_894=float2((l9_896*float3(l9_894,1.0)).xy);
}
float2 l9_897=l9_894;
l9_855=l9_897;
float l9_898=l9_855.x;
int l9_899=l9_858.x;
bool l9_900=l9_864;
float l9_901=l9_865;
if ((l9_899==0)||(l9_899==3))
{
float l9_902=l9_898;
float l9_903=0.0;
float l9_904=1.0;
bool l9_905=l9_900;
float l9_906=l9_901;
float l9_907=fast::clamp(l9_902,l9_903,l9_904);
float l9_908=step(abs(l9_902-l9_907),9.9999997e-06);
l9_906*=(l9_908+((1.0-float(l9_905))*(1.0-l9_908)));
l9_902=l9_907;
l9_898=l9_902;
l9_901=l9_906;
}
l9_855.x=l9_898;
l9_865=l9_901;
float l9_909=l9_855.y;
int l9_910=l9_858.y;
bool l9_911=l9_864;
float l9_912=l9_865;
if ((l9_910==0)||(l9_910==3))
{
float l9_913=l9_909;
float l9_914=0.0;
float l9_915=1.0;
bool l9_916=l9_911;
float l9_917=l9_912;
float l9_918=fast::clamp(l9_913,l9_914,l9_915);
float l9_919=step(abs(l9_913-l9_918),9.9999997e-06);
l9_917*=(l9_919+((1.0-float(l9_916))*(1.0-l9_919)));
l9_913=l9_918;
l9_909=l9_913;
l9_912=l9_917;
}
l9_855.y=l9_909;
l9_865=l9_912;
float2 l9_920=l9_855;
int l9_921=l9_853;
int l9_922=l9_854;
float l9_923=l9_863;
float2 l9_924=l9_920;
int l9_925=l9_921;
int l9_926=l9_922;
float3 l9_927=float3(0.0);
if (l9_925==0)
{
l9_927=float3(l9_924,0.0);
}
else
{
if (l9_925==1)
{
l9_927=float3(l9_924.x,(l9_924.y*0.5)+(0.5-(float(l9_926)*0.5)),0.0);
}
else
{
l9_927=float3(l9_924,float(l9_926));
}
}
float3 l9_928=l9_927;
float3 l9_929=l9_928;
float4 l9_930=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_929.xy,bias(l9_923));
float4 l9_931=l9_930;
if (l9_861)
{
l9_931=mix(l9_862,l9_931,float4(l9_865));
}
float4 l9_932=l9_931;
l9_846=l9_932;
float l9_933=0.0;
float4 l9_934=l9_846;
float l9_935=l9_934.w;
l9_933=l9_935;
l9_840=l9_933;
l9_845=l9_840;
}
l9_837=l9_845;
float4 l9_936=float4(0.0);
l9_936.x=l9_834;
l9_936.y=l9_834;
l9_936.z=l9_834;
l9_936.w=l9_837;
l9_740=l9_936;
l9_746=l9_740;
}
else
{
l9_746=l9_741;
}
l9_738=l9_746;
l9_542=l9_738;
l9_547=l9_542;
}
l9_539=l9_547;
l9_343=l9_539;
l9_348=l9_343;
}
l9_340=l9_348;
l9_328=l9_340;
l9_339=l9_328;
}
else
{
l9_339=l9_329;
}
l9_326=l9_339;
l9_112=l9_326;
l9_122=l9_112;
}
l9_109=l9_122;
param_2=l9_109;
param_3=param_2;
}
Result_N11=param_3;
FinalColor=Result_N11;
float param_5=FinalColor.w;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (param_5<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_937=gl_FragCoord;
float2 l9_938=floor(mod(l9_937.xy,float2(4.0)));
float l9_939=(mod(dot(l9_938,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (param_5<l9_939)
{
discard_fragment();
}
}
bool l9_940=(*sc_set0.UserUniforms).isProxyMode!=0;
if (l9_940)
{
float4 param_6=FinalColor;
if ((int(sc_ProxyAlphaOne_tmp)!=0))
{
param_6.w=1.0;
}
float4 l9_941=fast::max(param_6,float4(0.0));
float4 param_7=l9_941;
if (sc_ShaderCacheConstant_tmp!=0)
{
param_7.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=param_7;
return out;
}
float4 param_8=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_942=param_8;
float4 l9_943=l9_942;
float l9_944=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_944=l9_943.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_944=fast::clamp(l9_943.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_944=fast::clamp(dot(l9_943.xyz,float3(l9_943.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_944=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_944=(1.0-dot(l9_943.xyz,float3(0.33333001)))*l9_943.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_944=(1.0-fast::clamp(dot(l9_943.xyz,float3(1.0)),0.0,1.0))*l9_943.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_944=fast::clamp(dot(l9_943.xyz,float3(1.0)),0.0,1.0)*l9_943.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_944=fast::clamp(dot(l9_943.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_944=fast::clamp(dot(l9_943.xyz,float3(1.0)),0.0,1.0)*l9_943.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_944=dot(l9_943.xyz,float3(0.33333001))*l9_943.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_944=1.0-fast::clamp(dot(l9_943.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_944=fast::clamp(dot(l9_943.xyz,float3(1.0)),0.0,1.0);
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
float l9_945=l9_944;
float l9_946=l9_945;
float l9_947=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_946;
float3 l9_948=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_942.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_949=float4(l9_948.x,l9_948.y,l9_948.z,l9_947);
param_8=l9_949;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_8=float4(param_8.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_950=param_8;
float4 l9_951=float4(0.0);
float4 l9_952=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_953=out.FragColor0;
float4 l9_954=l9_953;
l9_952=l9_954;
}
else
{
float4 l9_955=gl_FragCoord;
float2 l9_956=l9_955.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_957=l9_956;
float2 l9_958=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_959=1;
int l9_960=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_960=0;
}
else
{
l9_960=in.varStereoViewID;
}
int l9_961=l9_960;
int l9_962=l9_961;
float3 l9_963=float3(l9_957,0.0);
int l9_964=l9_959;
int l9_965=l9_962;
if (l9_964==1)
{
l9_963.y=((2.0*l9_963.y)+float(l9_965))-1.0;
}
float2 l9_966=l9_963.xy;
l9_958=l9_966;
}
else
{
l9_958=l9_957;
}
float2 l9_967=l9_958;
float2 l9_968=l9_967;
float2 l9_969=l9_968;
float2 l9_970=l9_969;
float l9_971=0.0;
int l9_972;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_973=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_973=0;
}
else
{
l9_973=in.varStereoViewID;
}
int l9_974=l9_973;
l9_972=1-l9_974;
}
else
{
int l9_975=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_975=0;
}
else
{
l9_975=in.varStereoViewID;
}
int l9_976=l9_975;
l9_972=l9_976;
}
int l9_977=l9_972;
float2 l9_978=l9_970;
int l9_979=sc_ScreenTextureLayout_tmp;
int l9_980=l9_977;
float l9_981=l9_971;
float2 l9_982=l9_978;
int l9_983=l9_979;
int l9_984=l9_980;
float3 l9_985=float3(0.0);
if (l9_983==0)
{
l9_985=float3(l9_982,0.0);
}
else
{
if (l9_983==1)
{
l9_985=float3(l9_982.x,(l9_982.y*0.5)+(0.5-(float(l9_984)*0.5)),0.0);
}
else
{
l9_985=float3(l9_982,float(l9_984));
}
}
float3 l9_986=l9_985;
float3 l9_987=l9_986;
float4 l9_988=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_987.xy,bias(l9_981));
float4 l9_989=l9_988;
float4 l9_990=l9_989;
l9_952=l9_990;
}
float4 l9_991=l9_952;
float3 l9_992=l9_991.xyz;
float3 l9_993=l9_992;
float3 l9_994=l9_950.xyz;
float3 l9_995=definedBlend(l9_993,l9_994,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_951=float4(l9_995.x,l9_995.y,l9_995.z,l9_951.w);
float3 l9_996=mix(l9_992,l9_951.xyz,float3(l9_950.w));
l9_951=float4(l9_996.x,l9_996.y,l9_996.z,l9_951.w);
l9_951.w=1.0;
float4 l9_997=l9_951;
param_8=l9_997;
}
else
{
float4 l9_998=param_8;
float4 l9_999=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_999=float4(mix(float3(1.0),l9_998.xyz,float3(l9_998.w)),l9_998.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_1000=l9_998.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_1000=fast::clamp(l9_1000,0.0,1.0);
}
l9_999=float4(l9_998.xyz*l9_1000,l9_1000);
}
else
{
l9_999=l9_998;
}
}
float4 l9_1001=l9_999;
param_8=l9_1001;
}
}
}
float4 l9_1002=param_8;
FinalColor=l9_1002;
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
float4 l9_1003=float4(0.0);
l9_1003=float4(0.0);
float4 l9_1004=l9_1003;
float4 Cost=l9_1004;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float3 param_9=in.varPos;
float4 param_10=FinalColor;
FinalColor=sc_OutputMotionVectorsIfNeeded(param_9,param_10,in.varStereoViewID,(*sc_set0.UserUniforms));
float4 param_11=FinalColor;
float4 l9_1005=param_11;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_1005.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=l9_1005;
return out;
}
} // FRAGMENT SHADER
