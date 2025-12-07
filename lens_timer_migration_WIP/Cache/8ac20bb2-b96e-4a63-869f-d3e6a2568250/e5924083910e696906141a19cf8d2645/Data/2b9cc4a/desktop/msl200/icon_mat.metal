#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
#ifdef Active
#undef Active
#endif
#ifdef Hover
#undef Hover
#endif
#ifdef xRightPin
#undef xRightPin
#endif
#ifdef xLeftPin
#undef xLeftPin
#endif
#ifdef yUpPin
#undef yUpPin
#endif
#ifdef yDownPin
#undef yDownPin
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
//sampler sampler baseTexSmpSC 0:24
//sampler sampler intensityTextureSmpSC 0:25
//sampler sampler sc_ScreenTextureSmpSC 0:30
//sampler sampler shapeTextureSmpSC 0:33
//sampler sampler strokeTextureSmpSC 0:34
//sampler sampler z_hitIdAndBarycentricSmp 0:35
//sampler sampler z_rayDirectionsSmpSC 0:36
//texture texture2D baseTex 0:4:0:24
//texture texture2D intensityTexture 0:5:0:25
//texture texture2D sc_ScreenTexture 0:17:0:30
//texture texture2D shapeTexture 0:20:0:33
//texture texture2D strokeTexture 0:21:0:34
//texture utexture2D z_hitIdAndBarycentric 0:22:0:35
//texture texture2D z_rayDirections 0:23:0:36
//ubo float sc_BonesUBO 0:3:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:37:6384 {
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
//bool Active 4272
//bool Hover 4276
//float4 shadowColor 4288
//float shapeAlpha 4304
//float shapeWidthX 4308
//bool xRightPin 4312
//float strokeThickness 4316
//bool xLeftPin 4320
//float xOffset 4324
//float shapeHeightY 4328
//bool yUpPin 4332
//bool yDownPin 4336
//float yOffset 4340
//float shadowRotation 4344
//float shadowDistance 4348
//float shapeRotation 4352
//float shadowBlur 4356
//float shapeRoundness 4360
//float strokeAlpha 4364
//float shadowAlpha 4368
//float4 shapeColor 4384
//float3x3 shapeTextureTransform 4448
//float4 shapeTextureUvMinMax 4496
//float4 shapeTextureBorderColor 4512
//float2 shapeScale 4528
//float2 shapeOffset 4536
//float4 shapeGradColorA 4544
//float4 shapeGradColorB 4560
//float2 shapeScaleGrad 4576
//float2 shapeGradPointA 4584
//float2 shapeGradPointB 4592
//float2 shapeQuadOffset 4600
//float4 shapeGradColorC 4608
//float4 shapeGradColorD 4624
//float4 strokeColor 4640
//float3x3 strokeTextureTransform 4704
//float4 strokeTextureUvMinMax 4752
//float4 strokeTextureBorderColor 4768
//float2 strokeScale 4784
//float2 strokeOffset 4792
//float4 shapeGradColorA2 4800
//float4 shapeGradColorB2 4816
//float2 shapeScaleGrad2 4832
//float2 shapeGradPointA2 4840
//float2 shapeGradPointB2 4848
//float2 shapeQuadOffset2 4856
//float4 shapeGradColorC2 4864
//float4 shapeGradColorD2 4880
//float3x3 baseTexTransform 4944
//float4 baseTexUvMinMax 4992
//float4 baseTexBorderColor 5008
//float Port_RangeMinA_N136 5024
//float Port_RangeMaxA_N136 5028
//float Port_RangeMinB_N136 5032
//float Port_RangeMaxB_N136 5036
//float4 Port_Default_N126 5040
//float4 Port_Value0_N154 5056
//float Port_Value1_N157 5072
//float4 Port_Default_N154 5088
//float2 Port_Input2_N148 5104
//float Port_RangeMinA_N268 5116
//float Port_RangeMaxA_N268 5120
//float Port_Value0_N287 5128
//float Port_Value_N288 5136
//float Port_RangeMinA_N276 5144
//float Port_RangeMaxA_N276 5148
//float Port_RangeMinB_N276 5152
//float Port_RangeMaxB_N276 5156
//float Port_Default_N294 5160
//float Port_Default_N287 5164
//float Port_Value0_N281 5172
//float Port_RangeMinA_N295 5176
//float Port_RangeMaxA_N295 5180
//float Port_RangeMinB_N295 5184
//float Port_RangeMaxB_N295 5188
//float Port_Default_N296 5192
//float Port_Default_N281 5196
//float Port_Value0_N282 5204
//float Port_Value1_N282 5208
//float Port_Default_N282 5212
//float Port_Value0_N308 5216
//float Port_Value0_N304 5220
//float Port_RangeMinA_N303 5224
//float Port_RangeMaxA_N303 5228
//float Port_RangeMinB_N303 5232
//float Port_RangeMaxB_N303 5236
//float Port_Default_N304 5240
//float Port_Default_N308 5244
//float Port_RangeMinA_N277 5252
//float Port_RangeMaxA_N277 5256
//float Port_Value0_N289 5264
//float Port_RangeMinA_N299 5268
//float Port_RangeMaxA_N299 5272
//float Port_RangeMinB_N299 5276
//float Port_RangeMaxB_N299 5280
//float Port_Default_N297 5284
//float Port_Default_N289 5288
//float Port_Value0_N286 5296
//float Port_RangeMinA_N300 5300
//float Port_RangeMaxA_N300 5304
//float Port_RangeMinB_N300 5308
//float Port_RangeMaxB_N300 5312
//float Port_Default_N298 5316
//float Port_Default_N286 5320
//float Port_Value0_N293 5328
//float Port_Value1_N293 5332
//float Port_Default_N293 5336
//float Port_Value0_N301 5340
//float Port_Value0_N306 5344
//float Port_RangeMinA_N305 5348
//float Port_RangeMaxA_N305 5352
//float Port_RangeMinB_N305 5356
//float Port_RangeMaxB_N305 5360
//float Port_Default_N306 5364
//float Port_Default_N301 5368
//float Port_Value0_N132 5372
//float Port_Input1_N141 5376
//float Port_Default_N132 5380
//float2 Port_Center_N092 5384
//float Port_Value1_N097 5392
//float Port_Value0_N131 5396
//float Port_Default_N131 5400
//float Port_Input1_N160 5404
//float Port_Input1_N263 5408
//float2 Port_Center_N094 5416
//float2 Port_Center_N100 5424
//float Port_Value0_N125 5432
//float Port_Default_N125 5436
//float Port_RangeMinA_N138 5440
//float Port_RangeMaxA_N138 5444
//float Port_RangeMinB_N138 5448
//float Port_RangeMaxB_N138 5452
//float2 Port_Center_N137 5456
//float Port_Input1_N019 5464
//float Port_Input1_N020 5468
//float Port_RangeMinA_N021 5472
//float Port_RangeMaxA_N021 5476
//float Port_RangeMinB_N021 5480
//float Port_Value0_N122 5484
//float Port_Default_N122 5488
//float Port_Input1_N056 5492
//float Port_RangeMinA_N022 5496
//float Port_RangeMaxA_N022 5500
//float Port_RangeMinB_N022 5504
//float Port_Input1_N030 5508
//float2 Port_Input1_N032 5512
//float Port_RangeMinA_N135 5520
//float Port_RangeMaxA_N135 5524
//float Port_Input1_N127 5528
//float Port_RangeMaxB_N135 5532
//float Port_Input1_N038 5536
//float Port_Input2_N038 5540
//float Port_Input1_N264 5544
//float Port_Input2_N264 5548
//float Port_RangeMinA_N039 5552
//float Port_RangeMaxA_N039 5556
//float Port_RangeMaxB_N039 5560
//float Port_RangeMinA_N042 5564
//float Port_RangeMaxA_N042 5568
//float Port_RangeMaxB_N042 5572
//float Port_RangeMinA_N047 5576
//float Port_RangeMaxA_N047 5580
//float Port_RangeMinA_N101 5584
//float Port_RangeMaxA_N101 5588
//float Port_RangeMinB_N101 5592
//float Port_RangeMinA_N057 5596
//float Port_RangeMaxA_N057 5600
//float Port_RangeMinB_N057 5604
//float Port_RangeMaxB_N057 5608
//float Port_RangeMaxB_N047 5612
//float Port_Input1_N051 5616
//float2 Port_Input1_N053 5624
//float Port_RangeMinA_N133 5632
//float Port_RangeMaxA_N133 5636
//float Port_RangeMaxB_N133 5640
//float Port_Input1_N064 5644
//float Port_Input2_N064 5648
//float Port_Input1_N066 5652
//float Port_Input2_N066 5656
//float Port_Value0_N068 5660
//float Port_Default_N068 5664
//float Port_Input1_N072 5668
//float Port_Input2_N072 5672
//float Port_Value0_N123 5676
//float Port_Default_N123 5680
//float Port_Input1_N259 5684
//float2 Port_Center_N113 5688
//float Port_Input1_N089 5696
//float Port_Input1_N090 5700
//float Port_Input1_N103 5704
//float2 Port_Input1_N105 5712
//float Port_Input1_N112 5720
//float Port_Input2_N112 5724
//float Port_Input0_N186 5760
//float Port_Input1_N186 5764
//float Port_RangeMinA_N175 5768
//float Port_RangeMaxA_N175 5772
//float Port_RangeMinB_N175 5776
//float Port_RangeMaxB_N175 5780
//float2 Port_Center_N177 5792
//float Port_Input1_N185 5816
//float Port_Input2_N185 5820
//float Port_RangeMinA_N198 5856
//float Port_RangeMaxA_N198 5860
//float Port_RangeMinB_N198 5864
//float Port_RangeMaxB_N198 5868
//float4 Port_Default_N209 5920
//float4 Port_Default_N149 5936
//float Port_Input1_N265 5952
//float Port_Input2_N265 5956
//float Port_Input1_N098 5960
//float2 Port_Input1_N115 5968
//float Port_Input1_N142 5976
//float Port_Input2_N142 5980
//float Port_Input1_N144 5984
//float Port_Input2_N144 5988
//float Port_RangeMinA_N171 5992
//float Port_RangeMaxA_N171 5996
//float4 Port_Value0_N325 6000
//float Port_Input0_N242 6048
//float Port_Input1_N242 6052
//float Port_RangeMinA_N231 6056
//float Port_RangeMaxA_N231 6060
//float Port_RangeMinB_N231 6064
//float Port_RangeMaxB_N231 6068
//float2 Port_Center_N233 6080
//float Port_Input1_N241 6104
//float Port_Input2_N241 6108
//float Port_RangeMinA_N252 6144
//float Port_RangeMaxA_N252 6148
//float Port_RangeMinB_N252 6152
//float Port_RangeMaxB_N252 6156
//float4 Port_Default_N323 6208
//float4 Port_Default_N324 6224
//float4 Port_Default_N325 6240
//float Port_Input1_N335 6256
//float4 Port_Input1_N345 6272
//float4 Port_Input_N339 6304
//float2 Port_Scale_N340 6320
//float2 Port_Center_N340 6328
//float4 Port_Input_N006 6336
//float Port_Input1_N361 6368
//float Port_Input2_N361 6372
//float depthRef 6376
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
//spec_const bool SC_USE_CLAMP_TO_BORDER_shapeTexture 33 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_strokeTexture 34 0
//spec_const bool SC_USE_UV_MIN_MAX_baseTex 35 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 36 0
//spec_const bool SC_USE_UV_MIN_MAX_shapeTexture 37 0
//spec_const bool SC_USE_UV_MIN_MAX_strokeTexture 38 0
//spec_const bool SC_USE_UV_TRANSFORM_baseTex 39 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 40 0
//spec_const bool SC_USE_UV_TRANSFORM_shapeTexture 41 0
//spec_const bool SC_USE_UV_TRANSFORM_strokeTexture 42 0
//spec_const bool Tweak_N124 43 0
//spec_const bool Tweak_N139 44 0
//spec_const bool UseViewSpaceDepthVariant 45 1
//spec_const bool baseTexHasSwappedViews 46 0
//spec_const bool innerCutout 47 0
//spec_const bool intensityTextureHasSwappedViews 48 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 49 0
//spec_const bool sc_BlendMode_Add 50 0
//spec_const bool sc_BlendMode_AlphaTest 51 0
//spec_const bool sc_BlendMode_AlphaToCoverage 52 0
//spec_const bool sc_BlendMode_ColoredGlass 53 0
//spec_const bool sc_BlendMode_Custom 54 0
//spec_const bool sc_BlendMode_Max 55 0
//spec_const bool sc_BlendMode_Min 56 0
//spec_const bool sc_BlendMode_MultiplyOriginal 57 0
//spec_const bool sc_BlendMode_Multiply 58 0
//spec_const bool sc_BlendMode_Normal 59 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 60 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 61 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 62 0
//spec_const bool sc_BlendMode_Screen 63 0
//spec_const bool sc_DepthOnly 64 0
//spec_const bool sc_FramebufferFetch 65 0
//spec_const bool sc_MotionVectorsPass 66 0
//spec_const bool sc_OITCompositingPass 67 0
//spec_const bool sc_OITDepthBoundsPass 68 0
//spec_const bool sc_OITDepthGatherPass 69 0
//spec_const bool sc_ProjectiveShadowsCaster 70 0
//spec_const bool sc_ProjectiveShadowsReceiver 71 0
//spec_const bool sc_ProxyAlphaOne 72 0
//spec_const bool sc_RenderAlphaToColor 73 0
//spec_const bool sc_ScreenTextureHasSwappedViews 74 0
//spec_const bool sc_TAAEnabled 75 0
//spec_const bool sc_VertexBlendingUseNormals 76 0
//spec_const bool sc_VertexBlending 77 0
//spec_const bool shapeAspectFix 78 0
//spec_const bool shapeColorInvert 79 0
//spec_const bool shapeTextureHasSwappedViews 80 0
//spec_const bool strokeTextureHasSwappedViews 81 0
//spec_const bool toQuadShapeGrad 82 0
//spec_const bool toQuadStrokeGrad 83 0
//spec_const int NODE_161_DROPLIST_ITEM 84 0
//spec_const int NODE_164_DROPLIST_ITEM 85 0
//spec_const int SC_SOFTWARE_WRAP_MODE_U_baseTex 86 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 87 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_shapeTexture 88 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_strokeTexture 89 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_baseTex 90 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 91 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_shapeTexture 92 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_strokeTexture 93 -1
//spec_const int baseTexLayout 94 0
//spec_const int intensityTextureLayout 95 0
//spec_const int sc_DepthBufferMode 96 0
//spec_const int sc_RenderingSpace 97 -1
//spec_const int sc_ScreenTextureLayout 98 0
//spec_const int sc_ShaderCacheConstant 99 0
//spec_const int sc_SkinBonesCount 100 0
//spec_const int sc_StereoRenderingMode 101 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 102 0
//spec_const int shapeTextureLayout 103 0
//spec_const int strokeTextureLayout 104 0
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
constant bool SC_USE_CLAMP_TO_BORDER_shapeTexture [[function_constant(33)]];
constant bool SC_USE_CLAMP_TO_BORDER_shapeTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_shapeTexture) ? SC_USE_CLAMP_TO_BORDER_shapeTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_strokeTexture [[function_constant(34)]];
constant bool SC_USE_CLAMP_TO_BORDER_strokeTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_strokeTexture) ? SC_USE_CLAMP_TO_BORDER_strokeTexture : false;
constant bool SC_USE_UV_MIN_MAX_baseTex [[function_constant(35)]];
constant bool SC_USE_UV_MIN_MAX_baseTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_baseTex) ? SC_USE_UV_MIN_MAX_baseTex : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(36)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_shapeTexture [[function_constant(37)]];
constant bool SC_USE_UV_MIN_MAX_shapeTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_shapeTexture) ? SC_USE_UV_MIN_MAX_shapeTexture : false;
constant bool SC_USE_UV_MIN_MAX_strokeTexture [[function_constant(38)]];
constant bool SC_USE_UV_MIN_MAX_strokeTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_strokeTexture) ? SC_USE_UV_MIN_MAX_strokeTexture : false;
constant bool SC_USE_UV_TRANSFORM_baseTex [[function_constant(39)]];
constant bool SC_USE_UV_TRANSFORM_baseTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_baseTex) ? SC_USE_UV_TRANSFORM_baseTex : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(40)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_shapeTexture [[function_constant(41)]];
constant bool SC_USE_UV_TRANSFORM_shapeTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_shapeTexture) ? SC_USE_UV_TRANSFORM_shapeTexture : false;
constant bool SC_USE_UV_TRANSFORM_strokeTexture [[function_constant(42)]];
constant bool SC_USE_UV_TRANSFORM_strokeTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_strokeTexture) ? SC_USE_UV_TRANSFORM_strokeTexture : false;
constant bool Tweak_N124 [[function_constant(43)]];
constant bool Tweak_N124_tmp = is_function_constant_defined(Tweak_N124) ? Tweak_N124 : false;
constant bool Tweak_N139 [[function_constant(44)]];
constant bool Tweak_N139_tmp = is_function_constant_defined(Tweak_N139) ? Tweak_N139 : false;
constant bool UseViewSpaceDepthVariant [[function_constant(45)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool baseTexHasSwappedViews [[function_constant(46)]];
constant bool baseTexHasSwappedViews_tmp = is_function_constant_defined(baseTexHasSwappedViews) ? baseTexHasSwappedViews : false;
constant bool innerCutout [[function_constant(47)]];
constant bool innerCutout_tmp = is_function_constant_defined(innerCutout) ? innerCutout : false;
constant bool intensityTextureHasSwappedViews [[function_constant(48)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(49)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(50)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(51)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(52)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(53)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(54)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(55)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(56)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(57)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(58)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(59)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(60)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(61)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(62)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(63)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(64)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_FramebufferFetch [[function_constant(65)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_MotionVectorsPass [[function_constant(66)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(67)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(68)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(69)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(70)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(71)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_ProxyAlphaOne [[function_constant(72)]];
constant bool sc_ProxyAlphaOne_tmp = is_function_constant_defined(sc_ProxyAlphaOne) ? sc_ProxyAlphaOne : false;
constant bool sc_RenderAlphaToColor [[function_constant(73)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(74)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(75)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(76)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(77)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool shapeAspectFix [[function_constant(78)]];
constant bool shapeAspectFix_tmp = is_function_constant_defined(shapeAspectFix) ? shapeAspectFix : false;
constant bool shapeColorInvert [[function_constant(79)]];
constant bool shapeColorInvert_tmp = is_function_constant_defined(shapeColorInvert) ? shapeColorInvert : false;
constant bool shapeTextureHasSwappedViews [[function_constant(80)]];
constant bool shapeTextureHasSwappedViews_tmp = is_function_constant_defined(shapeTextureHasSwappedViews) ? shapeTextureHasSwappedViews : false;
constant bool strokeTextureHasSwappedViews [[function_constant(81)]];
constant bool strokeTextureHasSwappedViews_tmp = is_function_constant_defined(strokeTextureHasSwappedViews) ? strokeTextureHasSwappedViews : false;
constant bool toQuadShapeGrad [[function_constant(82)]];
constant bool toQuadShapeGrad_tmp = is_function_constant_defined(toQuadShapeGrad) ? toQuadShapeGrad : false;
constant bool toQuadStrokeGrad [[function_constant(83)]];
constant bool toQuadStrokeGrad_tmp = is_function_constant_defined(toQuadStrokeGrad) ? toQuadStrokeGrad : false;
constant int NODE_161_DROPLIST_ITEM [[function_constant(84)]];
constant int NODE_161_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_161_DROPLIST_ITEM) ? NODE_161_DROPLIST_ITEM : 0;
constant int NODE_164_DROPLIST_ITEM [[function_constant(85)]];
constant int NODE_164_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_164_DROPLIST_ITEM) ? NODE_164_DROPLIST_ITEM : 0;
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex [[function_constant(86)]];
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_baseTex) ? SC_SOFTWARE_WRAP_MODE_U_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(87)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_shapeTexture [[function_constant(88)]];
constant int SC_SOFTWARE_WRAP_MODE_U_shapeTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_shapeTexture) ? SC_SOFTWARE_WRAP_MODE_U_shapeTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_strokeTexture [[function_constant(89)]];
constant int SC_SOFTWARE_WRAP_MODE_U_strokeTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_strokeTexture) ? SC_SOFTWARE_WRAP_MODE_U_strokeTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex [[function_constant(90)]];
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_baseTex) ? SC_SOFTWARE_WRAP_MODE_V_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(91)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_shapeTexture [[function_constant(92)]];
constant int SC_SOFTWARE_WRAP_MODE_V_shapeTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_shapeTexture) ? SC_SOFTWARE_WRAP_MODE_V_shapeTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_strokeTexture [[function_constant(93)]];
constant int SC_SOFTWARE_WRAP_MODE_V_strokeTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_strokeTexture) ? SC_SOFTWARE_WRAP_MODE_V_strokeTexture : -1;
constant int baseTexLayout [[function_constant(94)]];
constant int baseTexLayout_tmp = is_function_constant_defined(baseTexLayout) ? baseTexLayout : 0;
constant int intensityTextureLayout [[function_constant(95)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int sc_DepthBufferMode [[function_constant(96)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_RenderingSpace [[function_constant(97)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(98)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(99)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(100)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(101)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(102)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;
constant int shapeTextureLayout [[function_constant(103)]];
constant int shapeTextureLayout_tmp = is_function_constant_defined(shapeTextureLayout) ? shapeTextureLayout : 0;
constant int strokeTextureLayout [[function_constant(104)]];
constant int strokeTextureLayout_tmp = is_function_constant_defined(strokeTextureLayout) ? strokeTextureLayout : 0;

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
int Active;
int Hover;
float4 shadowColor;
float shapeAlpha;
float shapeWidthX;
int xRightPin;
float strokeThickness;
int xLeftPin;
float xOffset;
float shapeHeightY;
int yUpPin;
int yDownPin;
float yOffset;
float shadowRotation;
float shadowDistance;
float shapeRotation;
float shadowBlur;
float shapeRoundness;
float strokeAlpha;
float shadowAlpha;
float4 shapeColor;
float4 shapeTextureSize;
float4 shapeTextureDims;
float4 shapeTextureView;
float3x3 shapeTextureTransform;
float4 shapeTextureUvMinMax;
float4 shapeTextureBorderColor;
float2 shapeScale;
float2 shapeOffset;
float4 shapeGradColorA;
float4 shapeGradColorB;
float2 shapeScaleGrad;
float2 shapeGradPointA;
float2 shapeGradPointB;
float2 shapeQuadOffset;
float4 shapeGradColorC;
float4 shapeGradColorD;
float4 strokeColor;
float4 strokeTextureSize;
float4 strokeTextureDims;
float4 strokeTextureView;
float3x3 strokeTextureTransform;
float4 strokeTextureUvMinMax;
float4 strokeTextureBorderColor;
float2 strokeScale;
float2 strokeOffset;
float4 shapeGradColorA2;
float4 shapeGradColorB2;
float2 shapeScaleGrad2;
float2 shapeGradPointA2;
float2 shapeGradPointB2;
float2 shapeQuadOffset2;
float4 shapeGradColorC2;
float4 shapeGradColorD2;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float Port_RangeMinA_N136;
float Port_RangeMaxA_N136;
float Port_RangeMinB_N136;
float Port_RangeMaxB_N136;
float4 Port_Default_N126;
float4 Port_Value0_N154;
float Port_Value1_N157;
float4 Port_Default_N154;
float2 Port_Input2_N148;
float Port_Import_N311;
float Port_RangeMinA_N268;
float Port_RangeMaxA_N268;
float Port_Import_N316;
float Port_Value0_N287;
float Port_Import_N314;
float Port_Value_N288;
float Port_Import_N312;
float Port_RangeMinA_N276;
float Port_RangeMaxA_N276;
float Port_RangeMinB_N276;
float Port_RangeMaxB_N276;
float Port_Default_N294;
float Port_Default_N287;
float Port_Import_N313;
float Port_Value0_N281;
float Port_RangeMinA_N295;
float Port_RangeMaxA_N295;
float Port_RangeMinB_N295;
float Port_RangeMaxB_N295;
float Port_Default_N296;
float Port_Default_N281;
float Port_Import_N317;
float Port_Value0_N282;
float Port_Value1_N282;
float Port_Default_N282;
float Port_Value0_N308;
float Port_Value0_N304;
float Port_RangeMinA_N303;
float Port_RangeMaxA_N303;
float Port_RangeMinB_N303;
float Port_RangeMaxB_N303;
float Port_Default_N304;
float Port_Default_N308;
float Port_Import_N318;
float Port_RangeMinA_N277;
float Port_RangeMaxA_N277;
float Port_Import_N320;
float Port_Value0_N289;
float Port_RangeMinA_N299;
float Port_RangeMaxA_N299;
float Port_RangeMinB_N299;
float Port_RangeMaxB_N299;
float Port_Default_N297;
float Port_Default_N289;
float Port_Import_N319;
float Port_Value0_N286;
float Port_RangeMinA_N300;
float Port_RangeMaxA_N300;
float Port_RangeMinB_N300;
float Port_RangeMaxB_N300;
float Port_Default_N298;
float Port_Default_N286;
float Port_Import_N315;
float Port_Value0_N293;
float Port_Value1_N293;
float Port_Default_N293;
float Port_Value0_N301;
float Port_Value0_N306;
float Port_RangeMinA_N305;
float Port_RangeMaxA_N305;
float Port_RangeMinB_N305;
float Port_RangeMaxB_N305;
float Port_Default_N306;
float Port_Default_N301;
float Port_Value0_N132;
float Port_Input1_N141;
float Port_Default_N132;
float2 Port_Center_N092;
float Port_Value1_N097;
float Port_Value0_N131;
float Port_Default_N131;
float Port_Input1_N160;
float Port_Input1_N263;
float2 Port_Center_N094;
float2 Port_Center_N100;
float Port_Value0_N125;
float Port_Default_N125;
float Port_RangeMinA_N138;
float Port_RangeMaxA_N138;
float Port_RangeMinB_N138;
float Port_RangeMaxB_N138;
float2 Port_Center_N137;
float Port_Input1_N019;
float Port_Input1_N020;
float Port_RangeMinA_N021;
float Port_RangeMaxA_N021;
float Port_RangeMinB_N021;
float Port_Value0_N122;
float Port_Default_N122;
float Port_Input1_N056;
float Port_RangeMinA_N022;
float Port_RangeMaxA_N022;
float Port_RangeMinB_N022;
float Port_Input1_N030;
float2 Port_Input1_N032;
float Port_RangeMinA_N135;
float Port_RangeMaxA_N135;
float Port_Input1_N127;
float Port_RangeMaxB_N135;
float Port_Input1_N038;
float Port_Input2_N038;
float Port_Input1_N264;
float Port_Input2_N264;
float Port_RangeMinA_N039;
float Port_RangeMaxA_N039;
float Port_RangeMaxB_N039;
float Port_RangeMinA_N042;
float Port_RangeMaxA_N042;
float Port_RangeMaxB_N042;
float Port_RangeMinA_N047;
float Port_RangeMaxA_N047;
float Port_RangeMinA_N101;
float Port_RangeMaxA_N101;
float Port_RangeMinB_N101;
float Port_RangeMinA_N057;
float Port_RangeMaxA_N057;
float Port_RangeMinB_N057;
float Port_RangeMaxB_N057;
float Port_RangeMaxB_N047;
float Port_Input1_N051;
float2 Port_Input1_N053;
float Port_RangeMinA_N133;
float Port_RangeMaxA_N133;
float Port_RangeMaxB_N133;
float Port_Input1_N064;
float Port_Input2_N064;
float Port_Input1_N066;
float Port_Input2_N066;
float Port_Value0_N068;
float Port_Default_N068;
float Port_Input1_N072;
float Port_Input2_N072;
float Port_Value0_N123;
float Port_Default_N123;
float Port_Input1_N259;
float2 Port_Center_N113;
float Port_Input1_N089;
float Port_Input1_N090;
float Port_Input1_N103;
float2 Port_Input1_N105;
float Port_Input1_N112;
float Port_Input2_N112;
float4 Port_Import_N158;
float4 Port_Import_N159;
float Port_Input0_N186;
float Port_Input1_N186;
float Port_RangeMinA_N175;
float Port_RangeMaxA_N175;
float Port_RangeMinB_N175;
float Port_RangeMaxB_N175;
float2 Port_Import_N176;
float2 Port_Center_N177;
float2 Port_Import_N178;
float2 Port_Import_N180;
float Port_Input1_N185;
float Port_Input2_N185;
float4 Port_Import_N195;
float4 Port_Import_N196;
float Port_RangeMinA_N198;
float Port_RangeMaxA_N198;
float Port_RangeMinB_N198;
float Port_RangeMaxB_N198;
float2 Port_Import_N199;
float2 Port_Import_N200;
float4 Port_Import_N204;
float4 Port_Import_N205;
float4 Port_Default_N209;
float4 Port_Default_N149;
float Port_Input1_N265;
float Port_Input2_N265;
float Port_Input1_N098;
float2 Port_Input1_N115;
float Port_Input1_N142;
float Port_Input2_N142;
float Port_Input1_N144;
float Port_Input2_N144;
float Port_RangeMinA_N171;
float Port_RangeMaxA_N171;
float4 Port_Value0_N325;
float4 Port_Import_N228;
float4 Port_Import_N229;
float Port_Input0_N242;
float Port_Input1_N242;
float Port_RangeMinA_N231;
float Port_RangeMaxA_N231;
float Port_RangeMinB_N231;
float Port_RangeMaxB_N231;
float2 Port_Import_N232;
float2 Port_Center_N233;
float2 Port_Import_N234;
float2 Port_Import_N236;
float Port_Input1_N241;
float Port_Input2_N241;
float4 Port_Import_N249;
float4 Port_Import_N250;
float Port_RangeMinA_N252;
float Port_RangeMaxA_N252;
float Port_RangeMinB_N252;
float Port_RangeMaxB_N252;
float2 Port_Import_N253;
float2 Port_Import_N254;
float4 Port_Import_N258;
float4 Port_Import_N262;
float4 Port_Default_N323;
float4 Port_Default_N324;
float4 Port_Default_N325;
float Port_Input1_N335;
float4 Port_Input1_N345;
float4 Port_Import_N353;
float4 Port_Input_N339;
float2 Port_Scale_N340;
float2 Port_Center_N340;
float4 Port_Input_N006;
float4 Port_Import_N355;
float Port_Input1_N361;
float Port_Input2_N361;
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
texture2d<float> shapeTexture [[id(20)]];
texture2d<float> strokeTexture [[id(21)]];
texture2d<uint> z_hitIdAndBarycentric [[id(22)]];
texture2d<float> z_rayDirections [[id(23)]];
sampler baseTexSmpSC [[id(24)]];
sampler intensityTextureSmpSC [[id(25)]];
sampler sc_ScreenTextureSmpSC [[id(30)]];
sampler shapeTextureSmpSC [[id(33)]];
sampler strokeTextureSmpSC [[id(34)]];
sampler z_hitIdAndBarycentricSmp [[id(35)]];
sampler z_rayDirectionsSmpSC [[id(36)]];
constant userUniformsObj* UserUniforms [[id(37)]];
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
int Active;
int Hover;
float4 shadowColor;
float shapeAlpha;
float shapeWidthX;
int xRightPin;
float strokeThickness;
int xLeftPin;
float xOffset;
float shapeHeightY;
int yUpPin;
int yDownPin;
float yOffset;
float shadowRotation;
float shadowDistance;
float shapeRotation;
float shadowBlur;
float shapeRoundness;
float strokeAlpha;
float shadowAlpha;
float4 shapeColor;
float4 shapeTextureSize;
float4 shapeTextureDims;
float4 shapeTextureView;
float3x3 shapeTextureTransform;
float4 shapeTextureUvMinMax;
float4 shapeTextureBorderColor;
float2 shapeScale;
float2 shapeOffset;
float4 shapeGradColorA;
float4 shapeGradColorB;
float2 shapeScaleGrad;
float2 shapeGradPointA;
float2 shapeGradPointB;
float2 shapeQuadOffset;
float4 shapeGradColorC;
float4 shapeGradColorD;
float4 strokeColor;
float4 strokeTextureSize;
float4 strokeTextureDims;
float4 strokeTextureView;
float3x3 strokeTextureTransform;
float4 strokeTextureUvMinMax;
float4 strokeTextureBorderColor;
float2 strokeScale;
float2 strokeOffset;
float4 shapeGradColorA2;
float4 shapeGradColorB2;
float2 shapeScaleGrad2;
float2 shapeGradPointA2;
float2 shapeGradPointB2;
float2 shapeQuadOffset2;
float4 shapeGradColorC2;
float4 shapeGradColorD2;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float Port_RangeMinA_N136;
float Port_RangeMaxA_N136;
float Port_RangeMinB_N136;
float Port_RangeMaxB_N136;
float4 Port_Default_N126;
float4 Port_Value0_N154;
float Port_Value1_N157;
float4 Port_Default_N154;
float2 Port_Input2_N148;
float Port_Import_N311;
float Port_RangeMinA_N268;
float Port_RangeMaxA_N268;
float Port_Import_N316;
float Port_Value0_N287;
float Port_Import_N314;
float Port_Value_N288;
float Port_Import_N312;
float Port_RangeMinA_N276;
float Port_RangeMaxA_N276;
float Port_RangeMinB_N276;
float Port_RangeMaxB_N276;
float Port_Default_N294;
float Port_Default_N287;
float Port_Import_N313;
float Port_Value0_N281;
float Port_RangeMinA_N295;
float Port_RangeMaxA_N295;
float Port_RangeMinB_N295;
float Port_RangeMaxB_N295;
float Port_Default_N296;
float Port_Default_N281;
float Port_Import_N317;
float Port_Value0_N282;
float Port_Value1_N282;
float Port_Default_N282;
float Port_Value0_N308;
float Port_Value0_N304;
float Port_RangeMinA_N303;
float Port_RangeMaxA_N303;
float Port_RangeMinB_N303;
float Port_RangeMaxB_N303;
float Port_Default_N304;
float Port_Default_N308;
float Port_Import_N318;
float Port_RangeMinA_N277;
float Port_RangeMaxA_N277;
float Port_Import_N320;
float Port_Value0_N289;
float Port_RangeMinA_N299;
float Port_RangeMaxA_N299;
float Port_RangeMinB_N299;
float Port_RangeMaxB_N299;
float Port_Default_N297;
float Port_Default_N289;
float Port_Import_N319;
float Port_Value0_N286;
float Port_RangeMinA_N300;
float Port_RangeMaxA_N300;
float Port_RangeMinB_N300;
float Port_RangeMaxB_N300;
float Port_Default_N298;
float Port_Default_N286;
float Port_Import_N315;
float Port_Value0_N293;
float Port_Value1_N293;
float Port_Default_N293;
float Port_Value0_N301;
float Port_Value0_N306;
float Port_RangeMinA_N305;
float Port_RangeMaxA_N305;
float Port_RangeMinB_N305;
float Port_RangeMaxB_N305;
float Port_Default_N306;
float Port_Default_N301;
float Port_Value0_N132;
float Port_Input1_N141;
float Port_Default_N132;
float2 Port_Center_N092;
float Port_Value1_N097;
float Port_Value0_N131;
float Port_Default_N131;
float Port_Input1_N160;
float Port_Input1_N263;
float2 Port_Center_N094;
float2 Port_Center_N100;
float Port_Value0_N125;
float Port_Default_N125;
float Port_RangeMinA_N138;
float Port_RangeMaxA_N138;
float Port_RangeMinB_N138;
float Port_RangeMaxB_N138;
float2 Port_Center_N137;
float Port_Input1_N019;
float Port_Input1_N020;
float Port_RangeMinA_N021;
float Port_RangeMaxA_N021;
float Port_RangeMinB_N021;
float Port_Value0_N122;
float Port_Default_N122;
float Port_Input1_N056;
float Port_RangeMinA_N022;
float Port_RangeMaxA_N022;
float Port_RangeMinB_N022;
float Port_Input1_N030;
float2 Port_Input1_N032;
float Port_RangeMinA_N135;
float Port_RangeMaxA_N135;
float Port_Input1_N127;
float Port_RangeMaxB_N135;
float Port_Input1_N038;
float Port_Input2_N038;
float Port_Input1_N264;
float Port_Input2_N264;
float Port_RangeMinA_N039;
float Port_RangeMaxA_N039;
float Port_RangeMaxB_N039;
float Port_RangeMinA_N042;
float Port_RangeMaxA_N042;
float Port_RangeMaxB_N042;
float Port_RangeMinA_N047;
float Port_RangeMaxA_N047;
float Port_RangeMinA_N101;
float Port_RangeMaxA_N101;
float Port_RangeMinB_N101;
float Port_RangeMinA_N057;
float Port_RangeMaxA_N057;
float Port_RangeMinB_N057;
float Port_RangeMaxB_N057;
float Port_RangeMaxB_N047;
float Port_Input1_N051;
float2 Port_Input1_N053;
float Port_RangeMinA_N133;
float Port_RangeMaxA_N133;
float Port_RangeMaxB_N133;
float Port_Input1_N064;
float Port_Input2_N064;
float Port_Input1_N066;
float Port_Input2_N066;
float Port_Value0_N068;
float Port_Default_N068;
float Port_Input1_N072;
float Port_Input2_N072;
float Port_Value0_N123;
float Port_Default_N123;
float Port_Input1_N259;
float2 Port_Center_N113;
float Port_Input1_N089;
float Port_Input1_N090;
float Port_Input1_N103;
float2 Port_Input1_N105;
float Port_Input1_N112;
float Port_Input2_N112;
float4 Port_Import_N158;
float4 Port_Import_N159;
float Port_Input0_N186;
float Port_Input1_N186;
float Port_RangeMinA_N175;
float Port_RangeMaxA_N175;
float Port_RangeMinB_N175;
float Port_RangeMaxB_N175;
float2 Port_Import_N176;
float2 Port_Center_N177;
float2 Port_Import_N178;
float2 Port_Import_N180;
float Port_Input1_N185;
float Port_Input2_N185;
float4 Port_Import_N195;
float4 Port_Import_N196;
float Port_RangeMinA_N198;
float Port_RangeMaxA_N198;
float Port_RangeMinB_N198;
float Port_RangeMaxB_N198;
float2 Port_Import_N199;
float2 Port_Import_N200;
float4 Port_Import_N204;
float4 Port_Import_N205;
float4 Port_Default_N209;
float4 Port_Default_N149;
float Port_Input1_N265;
float Port_Input2_N265;
float Port_Input1_N098;
float2 Port_Input1_N115;
float Port_Input1_N142;
float Port_Input2_N142;
float Port_Input1_N144;
float Port_Input2_N144;
float Port_RangeMinA_N171;
float Port_RangeMaxA_N171;
float4 Port_Value0_N325;
float4 Port_Import_N228;
float4 Port_Import_N229;
float Port_Input0_N242;
float Port_Input1_N242;
float Port_RangeMinA_N231;
float Port_RangeMaxA_N231;
float Port_RangeMinB_N231;
float Port_RangeMaxB_N231;
float2 Port_Import_N232;
float2 Port_Center_N233;
float2 Port_Import_N234;
float2 Port_Import_N236;
float Port_Input1_N241;
float Port_Input2_N241;
float4 Port_Import_N249;
float4 Port_Import_N250;
float Port_RangeMinA_N252;
float Port_RangeMaxA_N252;
float Port_RangeMinB_N252;
float Port_RangeMaxB_N252;
float2 Port_Import_N253;
float2 Port_Import_N254;
float4 Port_Import_N258;
float4 Port_Import_N262;
float4 Port_Default_N323;
float4 Port_Default_N324;
float4 Port_Default_N325;
float Port_Input1_N335;
float4 Port_Input1_N345;
float4 Port_Import_N353;
float4 Port_Input_N339;
float2 Port_Scale_N340;
float2 Port_Center_N340;
float4 Port_Input_N006;
float4 Port_Import_N355;
float Port_Input1_N361;
float Port_Input2_N361;
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
texture2d<float> shapeTexture [[id(20)]];
texture2d<float> strokeTexture [[id(21)]];
texture2d<uint> z_hitIdAndBarycentric [[id(22)]];
texture2d<float> z_rayDirections [[id(23)]];
sampler baseTexSmpSC [[id(24)]];
sampler intensityTextureSmpSC [[id(25)]];
sampler sc_ScreenTextureSmpSC [[id(30)]];
sampler shapeTextureSmpSC [[id(33)]];
sampler strokeTextureSmpSC [[id(34)]];
sampler z_hitIdAndBarycentricSmp [[id(35)]];
sampler z_rayDirectionsSmpSC [[id(36)]];
constant userUniformsObj* UserUniforms [[id(37)]];
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
// Implementation of the GLSL radians() function
template<typename T>
T radians(T d)
{
return d*T(0.01745329251);
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
float4 Result_N343=float4(0.0);
float param=0.0;
float4 param_1=float4(0.0);
float4 param_2=float4(0.0);
ssGlobals param_4=Globals;
float l9_5=0.0;
float l9_6=float((*sc_set0.UserUniforms).Active!=0);
l9_5=l9_6;
float l9_7=0.0;
float l9_8=float((*sc_set0.UserUniforms).Hover!=0);
l9_7=l9_8;
float l9_9=0.0;
l9_9=fast::max(l9_5,l9_7);
param=l9_9;
float4 param_3;
if ((param*1.0)!=0.0)
{
float4 l9_10=float4(0.0);
float l9_11=0.0;
float4 l9_12=float4(0.0);
float4 l9_13=float4(0.0);
ssGlobals l9_14=param_4;
float l9_15=0.0;
float l9_16=float((*sc_set0.UserUniforms).Hover!=0);
l9_15=l9_16;
l9_11=l9_15;
float4 l9_17;
if ((l9_11*1.0)!=0.0)
{
float4 l9_18=float4(0.0);
float4 l9_19=float4(0.0);
float4 l9_20=float4(0.0);
float4 l9_21=(*sc_set0.UserUniforms).Port_Default_N126;
float4 l9_22;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
float l9_23=0.0;
float l9_24;
if ((int(Tweak_N124_tmp)!=0))
{
l9_24=1.001;
}
else
{
l9_24=0.001;
}
l9_24-=0.001;
l9_23=l9_24;
float l9_25=0.0;
l9_25=(((l9_23-(*sc_set0.UserUniforms).Port_RangeMinA_N136)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N136-(*sc_set0.UserUniforms).Port_RangeMinA_N136)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N136-(*sc_set0.UserUniforms).Port_RangeMinB_N136))+(*sc_set0.UserUniforms).Port_RangeMinB_N136;
l9_19=float4(l9_25);
l9_22=l9_19;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float4 l9_26=float4(0.0);
float4 l9_27=(*sc_set0.UserUniforms).shadowColor;
l9_26=l9_27;
l9_20=l9_26;
l9_22=l9_20;
}
else
{
l9_22=l9_21;
}
}
l9_18=l9_22;
float l9_28=0.0;
float l9_29=(*sc_set0.UserUniforms).shapeAlpha;
l9_28=l9_29;
float2 l9_30=float2(0.0);
l9_30=l9_14.Surface_UVCoord0;
float4 l9_31=float4(0.0);
float4 l9_32=(*sc_set0.UserUniforms).Port_Value0_N154;
float4 l9_33=float4(1.0);
float4 l9_34=(*sc_set0.UserUniforms).Port_Default_N154;
float4 l9_35;
if (int((int(shapeAspectFix_tmp)!=0))==0)
{
l9_35=l9_32;
}
else
{
if (int((int(shapeAspectFix_tmp)!=0))==1)
{
float l9_36=0.0;
l9_36=(*sc_set0.UserUniforms).sc_Camera.aspect;
float l9_37=0.0;
l9_37=1.0/l9_36;
float2 l9_38=float2(0.0);
l9_38.x=(*sc_set0.UserUniforms).Port_Value1_N157;
l9_38.y=l9_37;
l9_33=float4(l9_38,0.0,0.0);
l9_35=l9_33;
}
else
{
l9_35=l9_34;
}
}
l9_31=l9_35;
float2 l9_39=float2(0.0);
l9_39=(l9_30*l9_31.xy)+(*sc_set0.UserUniforms).Port_Input2_N148;
float l9_40=0.0;
float l9_41=(*sc_set0.UserUniforms).shapeWidthX;
l9_40=l9_41;
float l9_42=0.0;
l9_42=l9_40;
float l9_43=0.0;
float l9_44=0.0;
float l9_45=(*sc_set0.UserUniforms).Port_Value0_N287;
float l9_46=0.0;
float l9_47=(*sc_set0.UserUniforms).Port_Default_N287;
float l9_48=0.0;
float l9_49=float((*sc_set0.UserUniforms).xRightPin!=0);
l9_48=l9_49;
float l9_50=0.0;
l9_50=l9_48;
l9_44=l9_50;
l9_44=floor(l9_44);
float l9_51;
if (l9_44==0.0)
{
l9_51=l9_45;
}
else
{
if (l9_44==1.0)
{
float l9_52=0.0;
float l9_53=0.0;
float l9_54=0.0;
float l9_55=(*sc_set0.UserUniforms).Port_Default_N294;
float l9_56;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_57=0.0;
float l9_58=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_59=l9_58+0.001;
l9_59-=0.001;
l9_57=l9_59;
l9_53=l9_57;
l9_56=l9_53;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_60=0.0;
float l9_61=(*sc_set0.UserUniforms).strokeThickness;
l9_60=l9_61;
float l9_62=0.0;
l9_62=l9_60;
float l9_63=0.0;
float l9_64=l9_62;
float l9_65=(*sc_set0.UserUniforms).Port_RangeMinA_N276;
float l9_66=(*sc_set0.UserUniforms).Port_RangeMaxA_N276;
float l9_67=(*sc_set0.UserUniforms).Port_RangeMinB_N276;
float l9_68=(*sc_set0.UserUniforms).Port_RangeMaxB_N276;
float l9_69=(((l9_64-l9_65)/((l9_66-l9_65)+1e-06))*(l9_68-l9_67))+l9_67;
float l9_70;
if (l9_68>l9_67)
{
l9_70=fast::clamp(l9_69,l9_67,l9_68);
}
else
{
l9_70=fast::clamp(l9_69,l9_68,l9_67);
}
l9_69=l9_70;
l9_63=l9_69;
l9_54=l9_63;
l9_56=l9_54;
}
else
{
l9_56=l9_55;
}
}
l9_52=l9_56;
l9_46=l9_52;
l9_51=l9_46;
}
else
{
l9_51=l9_47;
}
}
l9_43=l9_51;
float l9_71=0.0;
float l9_72=0.0;
float l9_73=(*sc_set0.UserUniforms).Port_Value0_N281;
float l9_74=0.0;
float l9_75=(*sc_set0.UserUniforms).Port_Default_N281;
float l9_76=0.0;
float l9_77=float((*sc_set0.UserUniforms).xLeftPin!=0);
l9_76=l9_77;
float l9_78=0.0;
l9_78=l9_76;
l9_72=l9_78;
l9_72=floor(l9_72);
float l9_79;
if (l9_72==0.0)
{
l9_79=l9_73;
}
else
{
if (l9_72==1.0)
{
float l9_80=0.0;
float l9_81=0.0;
float l9_82=0.0;
float l9_83=(*sc_set0.UserUniforms).Port_Default_N296;
float l9_84;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_85=0.0;
float l9_86=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_87=l9_86+0.001;
l9_87-=0.001;
l9_85=l9_87;
l9_81=l9_85;
l9_84=l9_81;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_88=0.0;
float l9_89=(*sc_set0.UserUniforms).strokeThickness;
l9_88=l9_89;
float l9_90=0.0;
l9_90=l9_88;
float l9_91=0.0;
float l9_92=l9_90;
float l9_93=(*sc_set0.UserUniforms).Port_RangeMinA_N295;
float l9_94=(*sc_set0.UserUniforms).Port_RangeMaxA_N295;
float l9_95=(*sc_set0.UserUniforms).Port_RangeMinB_N295;
float l9_96=(*sc_set0.UserUniforms).Port_RangeMaxB_N295;
float l9_97=(((l9_92-l9_93)/((l9_94-l9_93)+1e-06))*(l9_96-l9_95))+l9_95;
float l9_98;
if (l9_96>l9_95)
{
l9_98=fast::clamp(l9_97,l9_95,l9_96);
}
else
{
l9_98=fast::clamp(l9_97,l9_96,l9_95);
}
l9_97=l9_98;
l9_91=l9_97;
l9_82=l9_91;
l9_84=l9_82;
}
else
{
l9_84=l9_83;
}
}
l9_80=l9_84;
l9_74=l9_80;
l9_79=l9_74;
}
else
{
l9_79=l9_75;
}
}
l9_71=l9_79;
float l9_99=0.0;
float l9_100=l9_42;
float l9_101=(*sc_set0.UserUniforms).Port_RangeMinA_N268;
float l9_102=(*sc_set0.UserUniforms).Port_RangeMaxA_N268;
float l9_103=l9_43;
float l9_104=l9_71;
float l9_105=(((l9_100-l9_101)/((l9_102-l9_101)+1e-06))*(l9_104-l9_103))+l9_103;
float l9_106;
if (l9_104>l9_103)
{
l9_106=fast::clamp(l9_105,l9_103,l9_104);
}
else
{
l9_106=fast::clamp(l9_105,l9_104,l9_103);
}
l9_105=l9_106;
l9_99=l9_105;
float l9_107=0.0;
float l9_108=(*sc_set0.UserUniforms).xOffset;
l9_107=l9_108;
float l9_109=0.0;
l9_109=l9_107;
float l9_110=0.0;
float l9_111=0.0;
float l9_112=(*sc_set0.UserUniforms).Port_Value0_N282;
float l9_113=(*sc_set0.UserUniforms).Port_Value1_N282;
float l9_114=(*sc_set0.UserUniforms).Port_Default_N282;
float l9_115=0.0;
float l9_116=float((*sc_set0.UserUniforms).xLeftPin!=0);
l9_115=l9_116;
float l9_117=0.0;
l9_117=l9_115;
l9_111=l9_117;
l9_111=floor(l9_111);
float l9_118;
if (l9_111==0.0)
{
l9_118=l9_112;
}
else
{
if (l9_111==1.0)
{
l9_118=l9_113;
}
else
{
l9_118=l9_114;
}
}
l9_110=l9_118;
float l9_119=0.0;
l9_119=l9_109+l9_110;
float l9_120=0.0;
l9_120=1.0-l9_119;
float l9_121=0.0;
float l9_122=(*sc_set0.UserUniforms).Port_Value0_N308;
float l9_123=0.0;
float l9_124=(*sc_set0.UserUniforms).Port_Default_N308;
float l9_125;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_125=l9_122;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_126=0.0;
float l9_127=0.0;
float l9_128=(*sc_set0.UserUniforms).Port_Value0_N304;
float l9_129=0.0;
float l9_130=(*sc_set0.UserUniforms).Port_Default_N304;
float l9_131=0.0;
float l9_132=float((*sc_set0.UserUniforms).xLeftPin!=0);
l9_131=l9_132;
float l9_133=0.0;
l9_133=l9_131;
l9_127=l9_133;
l9_127=floor(l9_127);
float l9_134;
if (l9_127==0.0)
{
l9_134=l9_128;
}
else
{
if (l9_127==1.0)
{
float l9_135=0.0;
float l9_136=(*sc_set0.UserUniforms).strokeThickness;
l9_135=l9_136;
float l9_137=0.0;
l9_137=l9_135;
float l9_138=0.0;
float l9_139=l9_137;
float l9_140=(*sc_set0.UserUniforms).Port_RangeMinA_N303;
float l9_141=(*sc_set0.UserUniforms).Port_RangeMaxA_N303;
float l9_142=(*sc_set0.UserUniforms).Port_RangeMinB_N303;
float l9_143=(*sc_set0.UserUniforms).Port_RangeMaxB_N303;
float l9_144=(((l9_139-l9_140)/((l9_141-l9_140)+1e-06))*(l9_143-l9_142))+l9_142;
float l9_145;
if (l9_143>l9_142)
{
l9_145=fast::clamp(l9_144,l9_142,l9_143);
}
else
{
l9_145=fast::clamp(l9_144,l9_143,l9_142);
}
l9_144=l9_145;
l9_138=l9_144;
l9_129=l9_138;
l9_134=l9_129;
}
else
{
l9_134=l9_130;
}
}
l9_126=l9_134;
l9_123=l9_126;
l9_125=l9_123;
}
else
{
l9_125=l9_124;
}
}
l9_121=l9_125;
float l9_146=0.0;
l9_146=l9_120+l9_121;
float l9_147=0.0;
l9_147=l9_99+l9_146;
float l9_148=0.0;
float l9_149=(*sc_set0.UserUniforms).shapeHeightY;
l9_148=l9_149;
float l9_150=0.0;
l9_150=l9_148;
float l9_151=0.0;
float l9_152=0.0;
float l9_153=(*sc_set0.UserUniforms).Port_Value0_N289;
float l9_154=0.0;
float l9_155=(*sc_set0.UserUniforms).Port_Default_N289;
float l9_156=0.0;
float l9_157=float((*sc_set0.UserUniforms).yUpPin!=0);
l9_156=l9_157;
float l9_158=0.0;
l9_158=l9_156;
l9_152=l9_158;
l9_152=floor(l9_152);
float l9_159;
if (l9_152==0.0)
{
l9_159=l9_153;
}
else
{
if (l9_152==1.0)
{
float l9_160=0.0;
float l9_161=0.0;
float l9_162=0.0;
float l9_163=(*sc_set0.UserUniforms).Port_Default_N297;
float l9_164;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_165=0.0;
float l9_166=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_167=l9_166+0.001;
l9_167-=0.001;
l9_165=l9_167;
l9_161=l9_165;
l9_164=l9_161;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_168=0.0;
float l9_169=(*sc_set0.UserUniforms).strokeThickness;
l9_168=l9_169;
float l9_170=0.0;
l9_170=l9_168;
float l9_171=0.0;
float l9_172=l9_170;
float l9_173=(*sc_set0.UserUniforms).Port_RangeMinA_N299;
float l9_174=(*sc_set0.UserUniforms).Port_RangeMaxA_N299;
float l9_175=(*sc_set0.UserUniforms).Port_RangeMinB_N299;
float l9_176=(*sc_set0.UserUniforms).Port_RangeMaxB_N299;
float l9_177=(((l9_172-l9_173)/((l9_174-l9_173)+1e-06))*(l9_176-l9_175))+l9_175;
float l9_178;
if (l9_176>l9_175)
{
l9_178=fast::clamp(l9_177,l9_175,l9_176);
}
else
{
l9_178=fast::clamp(l9_177,l9_176,l9_175);
}
l9_177=l9_178;
l9_171=l9_177;
l9_162=l9_171;
l9_164=l9_162;
}
else
{
l9_164=l9_163;
}
}
l9_160=l9_164;
l9_154=l9_160;
l9_159=l9_154;
}
else
{
l9_159=l9_155;
}
}
l9_151=l9_159;
float l9_179=0.0;
float l9_180=0.0;
float l9_181=(*sc_set0.UserUniforms).Port_Value0_N286;
float l9_182=0.0;
float l9_183=(*sc_set0.UserUniforms).Port_Default_N286;
float l9_184=0.0;
float l9_185=float((*sc_set0.UserUniforms).yDownPin!=0);
l9_184=l9_185;
float l9_186=0.0;
l9_186=l9_184;
l9_180=l9_186;
l9_180=floor(l9_180);
float l9_187;
if (l9_180==0.0)
{
l9_187=l9_181;
}
else
{
if (l9_180==1.0)
{
float l9_188=0.0;
float l9_189=0.0;
float l9_190=0.0;
float l9_191=(*sc_set0.UserUniforms).Port_Default_N298;
float l9_192;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_193=0.0;
float l9_194=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_195=l9_194+0.001;
l9_195-=0.001;
l9_193=l9_195;
l9_189=l9_193;
l9_192=l9_189;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_196=0.0;
float l9_197=(*sc_set0.UserUniforms).strokeThickness;
l9_196=l9_197;
float l9_198=0.0;
l9_198=l9_196;
float l9_199=0.0;
float l9_200=l9_198;
float l9_201=(*sc_set0.UserUniforms).Port_RangeMinA_N300;
float l9_202=(*sc_set0.UserUniforms).Port_RangeMaxA_N300;
float l9_203=(*sc_set0.UserUniforms).Port_RangeMinB_N300;
float l9_204=(*sc_set0.UserUniforms).Port_RangeMaxB_N300;
float l9_205=(((l9_200-l9_201)/((l9_202-l9_201)+1e-06))*(l9_204-l9_203))+l9_203;
float l9_206;
if (l9_204>l9_203)
{
l9_206=fast::clamp(l9_205,l9_203,l9_204);
}
else
{
l9_206=fast::clamp(l9_205,l9_204,l9_203);
}
l9_205=l9_206;
l9_199=l9_205;
l9_190=l9_199;
l9_192=l9_190;
}
else
{
l9_192=l9_191;
}
}
l9_188=l9_192;
l9_182=l9_188;
l9_187=l9_182;
}
else
{
l9_187=l9_183;
}
}
l9_179=l9_187;
float l9_207=0.0;
float l9_208=l9_150;
float l9_209=(*sc_set0.UserUniforms).Port_RangeMinA_N277;
float l9_210=(*sc_set0.UserUniforms).Port_RangeMaxA_N277;
float l9_211=l9_151;
float l9_212=l9_179;
float l9_213=(((l9_208-l9_209)/((l9_210-l9_209)+1e-06))*(l9_212-l9_211))+l9_211;
float l9_214;
if (l9_212>l9_211)
{
l9_214=fast::clamp(l9_213,l9_211,l9_212);
}
else
{
l9_214=fast::clamp(l9_213,l9_212,l9_211);
}
l9_213=l9_214;
l9_207=l9_213;
float l9_215=0.0;
float l9_216=(*sc_set0.UserUniforms).yOffset;
l9_215=l9_216;
float l9_217=0.0;
l9_217=l9_215;
float l9_218=0.0;
float l9_219=0.0;
float l9_220=(*sc_set0.UserUniforms).Port_Value0_N293;
float l9_221=(*sc_set0.UserUniforms).Port_Value1_N293;
float l9_222=(*sc_set0.UserUniforms).Port_Default_N293;
float l9_223=0.0;
float l9_224=float((*sc_set0.UserUniforms).yDownPin!=0);
l9_223=l9_224;
float l9_225=0.0;
l9_225=l9_223;
l9_219=l9_225;
l9_219=floor(l9_219);
float l9_226;
if (l9_219==0.0)
{
l9_226=l9_220;
}
else
{
if (l9_219==1.0)
{
l9_226=l9_221;
}
else
{
l9_226=l9_222;
}
}
l9_218=l9_226;
float l9_227=0.0;
l9_227=l9_217+l9_218;
float l9_228=0.0;
float l9_229=(*sc_set0.UserUniforms).Port_Value0_N301;
float l9_230=0.0;
float l9_231=(*sc_set0.UserUniforms).Port_Default_N301;
float l9_232;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_232=l9_229;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_233=0.0;
float l9_234=0.0;
float l9_235=(*sc_set0.UserUniforms).Port_Value0_N306;
float l9_236=0.0;
float l9_237=(*sc_set0.UserUniforms).Port_Default_N306;
float l9_238=0.0;
float l9_239=float((*sc_set0.UserUniforms).yDownPin!=0);
l9_238=l9_239;
float l9_240=0.0;
l9_240=l9_238;
l9_234=l9_240;
l9_234=floor(l9_234);
float l9_241;
if (l9_234==0.0)
{
l9_241=l9_235;
}
else
{
if (l9_234==1.0)
{
float l9_242=0.0;
float l9_243=(*sc_set0.UserUniforms).strokeThickness;
l9_242=l9_243;
float l9_244=0.0;
l9_244=l9_242;
float l9_245=0.0;
float l9_246=l9_244;
float l9_247=(*sc_set0.UserUniforms).Port_RangeMinA_N305;
float l9_248=(*sc_set0.UserUniforms).Port_RangeMaxA_N305;
float l9_249=(*sc_set0.UserUniforms).Port_RangeMinB_N305;
float l9_250=(*sc_set0.UserUniforms).Port_RangeMaxB_N305;
float l9_251=(((l9_246-l9_247)/((l9_248-l9_247)+1e-06))*(l9_250-l9_249))+l9_249;
float l9_252;
if (l9_250>l9_249)
{
l9_252=fast::clamp(l9_251,l9_249,l9_250);
}
else
{
l9_252=fast::clamp(l9_251,l9_250,l9_249);
}
l9_251=l9_252;
l9_245=l9_251;
l9_236=l9_245;
l9_241=l9_236;
}
else
{
l9_241=l9_237;
}
}
l9_233=l9_241;
l9_230=l9_233;
l9_232=l9_230;
}
else
{
l9_232=l9_231;
}
}
l9_228=l9_232;
float l9_253=0.0;
l9_253=l9_227+l9_228;
float l9_254=0.0;
l9_254=l9_207+l9_253;
float2 l9_255=float2(0.0);
l9_255.x=l9_147;
l9_255.y=l9_254;
float2 l9_256=float2(0.0);
l9_256=l9_255;
float2 l9_257=float2(0.0);
l9_257=l9_39+l9_256;
float l9_258=0.0;
float l9_259=(*sc_set0.UserUniforms).Port_Value0_N132;
float l9_260=0.0;
float l9_261=(*sc_set0.UserUniforms).Port_Default_N132;
float l9_262;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_262=l9_259;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_263=0.0;
float l9_264=(*sc_set0.UserUniforms).shadowRotation;
l9_263=l9_264;
float l9_265=0.0;
l9_265=l9_263+(*sc_set0.UserUniforms).Port_Input1_N141;
l9_260=l9_265;
l9_262=l9_260;
}
else
{
l9_262=l9_261;
}
}
l9_258=l9_262;
float2 l9_266=float2(0.0);
float2 l9_267=l9_257;
float l9_268=l9_258;
float2 l9_269=(*sc_set0.UserUniforms).Port_Center_N092;
float l9_270=sin(radians(l9_268));
float l9_271=cos(radians(l9_268));
float2 l9_272=l9_267-l9_269;
l9_272=float2(dot(float2(l9_271,l9_270),l9_272),dot(float2(-l9_270,l9_271),l9_272))+l9_269;
l9_266=l9_272;
float l9_273=0.0;
float l9_274=(*sc_set0.UserUniforms).Port_Value0_N131;
float l9_275=0.0;
float l9_276=(*sc_set0.UserUniforms).Port_Default_N131;
float l9_277;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_277=l9_274;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_278=0.0;
float l9_279=(*sc_set0.UserUniforms).shadowDistance;
l9_278=l9_279;
l9_275=l9_278;
l9_277=l9_275;
}
else
{
l9_277=l9_276;
}
}
l9_273=l9_277;
float l9_280=0.0;
l9_280=l9_273/(*sc_set0.UserUniforms).Port_Input1_N160;
float2 l9_281=float2(0.0);
l9_281.x=(*sc_set0.UserUniforms).Port_Value1_N097;
l9_281.y=l9_280;
float2 l9_282=float2(0.0);
l9_282=l9_266+l9_281;
float l9_283=0.0;
l9_283=l9_258+(*sc_set0.UserUniforms).Port_Input1_N263;
float l9_284=0.0;
l9_284=1.0-l9_283;
float2 l9_285=float2(0.0);
float2 l9_286=l9_282;
float l9_287=l9_284;
float2 l9_288=(*sc_set0.UserUniforms).Port_Center_N094;
float l9_289=sin(radians(l9_287));
float l9_290=cos(radians(l9_287));
float2 l9_291=l9_286-l9_288;
l9_291=float2(dot(float2(l9_290,l9_289),l9_291),dot(float2(-l9_289,l9_290),l9_291))+l9_288;
l9_285=l9_291;
float l9_292=0.0;
float l9_293=(*sc_set0.UserUniforms).shapeRotation;
l9_292=l9_293;
float2 l9_294=float2(0.0);
float2 l9_295=l9_285;
float l9_296=l9_292;
float2 l9_297=(*sc_set0.UserUniforms).Port_Center_N100;
float l9_298=sin(radians(l9_296));
float l9_299=cos(radians(l9_296));
float2 l9_300=l9_295-l9_297;
l9_300=float2(dot(float2(l9_299,l9_298),l9_300),dot(float2(-l9_298,l9_299),l9_300))+l9_297;
l9_294=l9_300;
float l9_301=0.0;
float l9_302=(*sc_set0.UserUniforms).Port_Value0_N125;
float l9_303=0.0;
float l9_304=(*sc_set0.UserUniforms).Port_Default_N125;
float l9_305;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_305=l9_302;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_306=0.0;
float l9_307=(*sc_set0.UserUniforms).shadowBlur;
l9_306=l9_307;
l9_303=l9_306;
l9_305=l9_303;
}
else
{
l9_305=l9_304;
}
}
l9_301=l9_305;
float l9_308=0.0;
float l9_309=l9_301;
float l9_310=(*sc_set0.UserUniforms).Port_RangeMinA_N138;
float l9_311=(*sc_set0.UserUniforms).Port_RangeMaxA_N138;
float l9_312=(*sc_set0.UserUniforms).Port_RangeMinB_N138;
float l9_313=(*sc_set0.UserUniforms).Port_RangeMaxB_N138;
float l9_314=(((l9_309-l9_310)/((l9_311-l9_310)+1e-06))*(l9_313-l9_312))+l9_312;
float l9_315;
if (l9_313>l9_312)
{
l9_315=fast::clamp(l9_314,l9_312,l9_313);
}
else
{
l9_315=fast::clamp(l9_314,l9_313,l9_312);
}
l9_314=l9_315;
l9_308=l9_314;
float2 l9_316=float2(0.0);
l9_316=((l9_294-(*sc_set0.UserUniforms).Port_Center_N137)*float2(l9_308))+(*sc_set0.UserUniforms).Port_Center_N137;
float2 l9_317=float2(0.0);
l9_317=l9_316*float2((*sc_set0.UserUniforms).Port_Input1_N019);
float2 l9_318=float2(0.0);
l9_318=l9_317+float2((*sc_set0.UserUniforms).Port_Input1_N020);
float2 l9_319=float2(0.0);
l9_319=abs(l9_318);
float l9_320=0.0;
float l9_321=(*sc_set0.UserUniforms).Port_Value0_N122;
float l9_322=0.0;
float l9_323=(*sc_set0.UserUniforms).Port_Default_N122;
float l9_324;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_324=l9_321;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_325=0.0;
float l9_326=(*sc_set0.UserUniforms).strokeThickness;
l9_325=l9_326;
l9_322=l9_325;
l9_324=l9_322;
}
else
{
l9_324=l9_323;
}
}
l9_320=l9_324;
float l9_327=0.0;
l9_327=l9_320/(*sc_set0.UserUniforms).Port_Input1_N056;
float l9_328=0.0;
l9_328=1.0-l9_327;
float l9_329=0.0;
float l9_330=l9_40;
float l9_331=(*sc_set0.UserUniforms).Port_RangeMinA_N021;
float l9_332=(*sc_set0.UserUniforms).Port_RangeMaxA_N021;
float l9_333=(*sc_set0.UserUniforms).Port_RangeMinB_N021;
float l9_334=l9_328;
float l9_335=(((l9_330-l9_331)/((l9_332-l9_331)+1e-06))*(l9_334-l9_333))+l9_333;
float l9_336;
if (l9_334>l9_333)
{
l9_336=fast::clamp(l9_335,l9_333,l9_334);
}
else
{
l9_336=fast::clamp(l9_335,l9_334,l9_333);
}
l9_335=l9_336;
l9_329=l9_335;
float l9_337=0.0;
l9_337=1.0-l9_327;
float l9_338=0.0;
float l9_339=l9_148;
float l9_340=(*sc_set0.UserUniforms).Port_RangeMinA_N022;
float l9_341=(*sc_set0.UserUniforms).Port_RangeMaxA_N022;
float l9_342=(*sc_set0.UserUniforms).Port_RangeMinB_N022;
float l9_343=l9_337;
float l9_344=(((l9_339-l9_340)/((l9_341-l9_340)+1e-06))*(l9_343-l9_342))+l9_342;
float l9_345;
if (l9_343>l9_342)
{
l9_345=fast::clamp(l9_344,l9_342,l9_343);
}
else
{
l9_345=fast::clamp(l9_344,l9_343,l9_342);
}
l9_344=l9_345;
l9_338=l9_344;
float2 l9_346=float2(0.0);
l9_346.x=l9_329;
l9_346.y=l9_338;
float2 l9_347=float2(0.0);
l9_347=l9_319-l9_346;
float l9_348=0.0;
float l9_349=(*sc_set0.UserUniforms).shapeRoundness;
l9_348=l9_349;
float l9_350=0.0;
l9_350=abs(l9_348);
float l9_351=0.0;
l9_351=fast::min(l9_350,l9_329);
float l9_352=0.0;
l9_352=fast::min(l9_351,l9_338);
float l9_353=0.0;
l9_353=fast::max(l9_352,(*sc_set0.UserUniforms).Port_Input1_N030);
float2 l9_354=float2(0.0);
l9_354=l9_347+float2(l9_353);
float2 l9_355=float2(0.0);
l9_355=fast::max(l9_354,(*sc_set0.UserUniforms).Port_Input1_N032);
float l9_356=0.0;
l9_356=length(l9_355);
float l9_357=0.0;
l9_357=l9_356/l9_353;
float l9_358=0.0;
l9_358=1.0-l9_357;
float l9_359=0.0;
float l9_360=l9_358;
float l9_361=fwidth(l9_360);
l9_359=l9_361;
float l9_362=0.0;
l9_362=l9_301*(*sc_set0.UserUniforms).Port_Input1_N127;
float l9_363=0.0;
l9_363=(((l9_359-(*sc_set0.UserUniforms).Port_RangeMinA_N135)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N135-(*sc_set0.UserUniforms).Port_RangeMinA_N135)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N135-l9_362))+l9_362;
float l9_364=0.0;
l9_364=l9_358/l9_363;
float l9_365=0.0;
l9_365=fast::clamp(l9_364+0.001,(*sc_set0.UserUniforms).Port_Input1_N038+0.001,(*sc_set0.UserUniforms).Port_Input2_N038+0.001)-0.001;
float l9_366=0.0;
l9_366=l9_28*l9_365;
float l9_367=0.0;
l9_367=1.0-l9_364;
float l9_368=0.0;
l9_368=fast::clamp(l9_367+0.001,(*sc_set0.UserUniforms).Port_Input1_N264+0.001,(*sc_set0.UserUniforms).Port_Input2_N264+0.001)-0.001;
float l9_369=0.0;
float l9_370=l9_40;
float l9_371=(*sc_set0.UserUniforms).Port_RangeMinA_N039;
float l9_372=(*sc_set0.UserUniforms).Port_RangeMaxA_N039;
float l9_373=l9_327;
float l9_374=(*sc_set0.UserUniforms).Port_RangeMaxB_N039;
float l9_375=(((l9_370-l9_371)/((l9_372-l9_371)+1e-06))*(l9_374-l9_373))+l9_373;
float l9_376;
if (l9_374>l9_373)
{
l9_376=fast::clamp(l9_375,l9_373,l9_374);
}
else
{
l9_376=fast::clamp(l9_375,l9_374,l9_373);
}
l9_375=l9_376;
l9_369=l9_375;
float l9_377=0.0;
float l9_378=l9_148;
float l9_379=(*sc_set0.UserUniforms).Port_RangeMinA_N042;
float l9_380=(*sc_set0.UserUniforms).Port_RangeMaxA_N042;
float l9_381=l9_327;
float l9_382=(*sc_set0.UserUniforms).Port_RangeMaxB_N042;
float l9_383=(((l9_378-l9_379)/((l9_380-l9_379)+1e-06))*(l9_382-l9_381))+l9_381;
float l9_384;
if (l9_382>l9_381)
{
l9_384=fast::clamp(l9_383,l9_381,l9_382);
}
else
{
l9_384=fast::clamp(l9_383,l9_382,l9_381);
}
l9_383=l9_384;
l9_377=l9_383;
float2 l9_385=float2(0.0);
l9_385.x=l9_369;
l9_385.y=l9_377;
float2 l9_386=float2(0.0);
l9_386=l9_319-l9_385;
float l9_387=0.0;
float l9_388=l9_348;
float l9_389=(*sc_set0.UserUniforms).Port_RangeMinA_N057;
float l9_390=(*sc_set0.UserUniforms).Port_RangeMaxA_N057;
float l9_391=(*sc_set0.UserUniforms).Port_RangeMinB_N057;
float l9_392=(*sc_set0.UserUniforms).Port_RangeMaxB_N057;
float l9_393=(((l9_388-l9_389)/((l9_390-l9_389)+1e-06))*(l9_392-l9_391))+l9_391;
float l9_394;
if (l9_392>l9_391)
{
l9_394=fast::clamp(l9_393,l9_391,l9_392);
}
else
{
l9_394=fast::clamp(l9_393,l9_392,l9_391);
}
l9_393=l9_394;
l9_387=l9_393;
float l9_395=0.0;
l9_395=(((l9_320-(*sc_set0.UserUniforms).Port_RangeMinA_N101)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N101-(*sc_set0.UserUniforms).Port_RangeMinA_N101)+1e-06))*(l9_387-(*sc_set0.UserUniforms).Port_RangeMinB_N101))+(*sc_set0.UserUniforms).Port_RangeMinB_N101;
float l9_396=0.0;
float l9_397=l9_348;
float l9_398=(*sc_set0.UserUniforms).Port_RangeMinA_N047;
float l9_399=(*sc_set0.UserUniforms).Port_RangeMaxA_N047;
float l9_400=l9_395;
float l9_401=(*sc_set0.UserUniforms).Port_RangeMaxB_N047;
float l9_402=(((l9_397-l9_398)/((l9_399-l9_398)+1e-06))*(l9_401-l9_400))+l9_400;
float l9_403;
if (l9_401>l9_400)
{
l9_403=fast::clamp(l9_402,l9_400,l9_401);
}
else
{
l9_403=fast::clamp(l9_402,l9_401,l9_400);
}
l9_402=l9_403;
l9_396=l9_402;
float l9_404=0.0;
l9_404=abs(l9_396);
float l9_405=0.0;
l9_405=fast::min(l9_404,l9_369);
float l9_406=0.0;
l9_406=fast::min(l9_405,l9_377);
float l9_407=0.0;
l9_407=fast::max(l9_406,(*sc_set0.UserUniforms).Port_Input1_N051);
float2 l9_408=float2(0.0);
l9_408=l9_386+float2(l9_407);
float2 l9_409=float2(0.0);
l9_409=fast::max(l9_408,(*sc_set0.UserUniforms).Port_Input1_N053);
float l9_410=0.0;
l9_410=length(l9_409);
float l9_411=0.0;
l9_411=l9_410/l9_407;
float l9_412=0.0;
l9_412=1.0-l9_411;
float l9_413=0.0;
float l9_414=l9_412;
float l9_415=fwidth(l9_414);
l9_413=l9_415;
float l9_416=0.0;
l9_416=(((l9_413-(*sc_set0.UserUniforms).Port_RangeMinA_N133)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N133-(*sc_set0.UserUniforms).Port_RangeMinA_N133)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N133-l9_301))+l9_301;
float l9_417=0.0;
l9_417=l9_412/l9_416;
float l9_418=0.0;
l9_418=fast::clamp(l9_417+0.001,(*sc_set0.UserUniforms).Port_Input1_N064+0.001,(*sc_set0.UserUniforms).Port_Input2_N064+0.001)-0.001;
float l9_419=0.0;
l9_419=l9_368*l9_418;
float l9_420=0.0;
l9_420=fast::clamp(l9_419+0.001,(*sc_set0.UserUniforms).Port_Input1_N066+0.001,(*sc_set0.UserUniforms).Port_Input2_N066+0.001)-0.001;
float l9_421=0.0;
float l9_422=(*sc_set0.UserUniforms).Port_Value0_N068;
float l9_423=0.0;
float l9_424=(*sc_set0.UserUniforms).Port_Default_N068;
float l9_425;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_425=l9_422;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_426=0.0;
float l9_427=(*sc_set0.UserUniforms).strokeAlpha;
l9_426=l9_427;
l9_423=l9_426;
l9_425=l9_423;
}
else
{
l9_425=l9_424;
}
}
l9_421=l9_425;
float l9_428=0.0;
l9_428=l9_420*l9_421;
float l9_429=0.0;
l9_429=l9_366+l9_428;
float l9_430=0.0;
l9_430=fast::clamp(l9_429+0.001,(*sc_set0.UserUniforms).Port_Input1_N072+0.001,(*sc_set0.UserUniforms).Port_Input2_N072+0.001)-0.001;
float l9_431=0.0;
float l9_432=(*sc_set0.UserUniforms).Port_Value0_N123;
float l9_433=0.0;
float l9_434=(*sc_set0.UserUniforms).Port_Default_N123;
float l9_435;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_435=l9_432;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_436=0.0;
float l9_437=(*sc_set0.UserUniforms).shadowAlpha;
l9_436=l9_437;
l9_433=l9_436;
l9_435=l9_433;
}
else
{
l9_435=l9_434;
}
}
l9_431=l9_435;
float l9_438=0.0;
l9_438=l9_430*l9_431;
float4 l9_439=float4(0.0);
l9_439=float4(l9_18.xyz.x,l9_18.xyz.y,l9_18.xyz.z,l9_439.w);
l9_439.w=l9_438;
float l9_440=0.0;
l9_440=l9_439.w;
float l9_441=0.0;
float l9_442;
if ((int(Tweak_N124_tmp)!=0))
{
l9_442=1.001;
}
else
{
l9_442=0.001;
}
l9_442-=0.001;
l9_441=l9_442;
float l9_443=0.0;
l9_443=l9_440*l9_441;
float4 l9_444=float4(0.0);
l9_444=float4(l9_439.xyz.x,l9_439.xyz.y,l9_439.xyz.z,l9_444.w);
l9_444.w=l9_443;
float l9_445=0.0;
float l9_446;
if ((int(innerCutout_tmp)!=0))
{
l9_446=1.001;
}
else
{
l9_446=0.001;
}
l9_446-=0.001;
l9_445=l9_446;
float2 l9_447=float2(0.0);
float2 l9_448=l9_257;
float l9_449=l9_292;
float2 l9_450=(*sc_set0.UserUniforms).Port_Center_N113;
float l9_451=sin(radians(l9_449));
float l9_452=cos(radians(l9_449));
float2 l9_453=l9_448-l9_450;
l9_453=float2(dot(float2(l9_452,l9_451),l9_453),dot(float2(-l9_451,l9_452),l9_453))+l9_450;
l9_447=l9_453;
float2 l9_454=float2(0.0);
l9_454=l9_447*float2((*sc_set0.UserUniforms).Port_Input1_N089);
float2 l9_455=float2(0.0);
l9_455=l9_454+float2((*sc_set0.UserUniforms).Port_Input1_N090);
float2 l9_456=float2(0.0);
l9_456=abs(l9_455);
float2 l9_457=float2(0.0);
l9_457.x=l9_329;
l9_457.y=l9_338;
float2 l9_458=float2(0.0);
l9_458=l9_456-l9_457;
float l9_459=0.0;
l9_459=abs(l9_348);
float l9_460=0.0;
l9_460=fast::min(l9_459,l9_329);
float l9_461=0.0;
l9_461=fast::min(l9_460,l9_338);
float l9_462=0.0;
l9_462=fast::max(l9_461,(*sc_set0.UserUniforms).Port_Input1_N103);
float2 l9_463=float2(0.0);
l9_463=l9_458+float2(l9_462);
float2 l9_464=float2(0.0);
l9_464=fast::max(l9_463,(*sc_set0.UserUniforms).Port_Input1_N105);
float l9_465=0.0;
l9_465=length(l9_464);
float l9_466=0.0;
l9_466=l9_465/l9_462;
float l9_467=0.0;
l9_467=1.0-l9_466;
float l9_468=0.0;
float l9_469=l9_467;
float l9_470=fwidth(l9_469);
l9_468=l9_470;
float l9_471=0.0;
l9_471=l9_467/l9_468;
float l9_472=0.0;
l9_472=fast::clamp(l9_471+0.001,(*sc_set0.UserUniforms).Port_Input1_N112+0.001,(*sc_set0.UserUniforms).Port_Input2_N112+0.001)-0.001;
float l9_473=0.0;
l9_473=l9_445*l9_472;
float4 l9_474=float4(0.0);
l9_474=mix(l9_444,float4((*sc_set0.UserUniforms).Port_Input1_N259),float4(l9_473));
float4 l9_475=float4(0.0);
float4 l9_476=float4(0.0);
float4 l9_477=float4(0.0);
float4 l9_478=float4(0.0);
float4 l9_479=(*sc_set0.UserUniforms).Port_Default_N149;
ssGlobals l9_480=l9_14;
float4 l9_481;
if (NODE_161_DROPLIST_ITEM_tmp==0)
{
float4 l9_482=float4(0.0);
float4 l9_483=(*sc_set0.UserUniforms).shapeColor;
l9_482=l9_483;
float4 l9_484=float4(0.0);
l9_484=float4(l9_482.x,l9_482.y,l9_482.z,1.0);
l9_476=l9_484;
l9_481=l9_476;
}
else
{
if (NODE_161_DROPLIST_ITEM_tmp==1)
{
float2 l9_485=float2(0.0);
l9_485=l9_480.Surface_UVCoord0;
float2 l9_486=float2(0.0);
float2 l9_487=(*sc_set0.UserUniforms).shapeScale;
l9_486=l9_487;
float2 l9_488=float2(0.0);
float2 l9_489=(*sc_set0.UserUniforms).shapeOffset;
l9_488=l9_489;
float2 l9_490=float2(0.0);
l9_490=(l9_485*l9_486)+l9_488;
float4 l9_491=float4(0.0);
int l9_492;
if ((int(shapeTextureHasSwappedViews_tmp)!=0))
{
int l9_493=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_493=0;
}
else
{
l9_493=in.varStereoViewID;
}
int l9_494=l9_493;
l9_492=1-l9_494;
}
else
{
int l9_495=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_495=0;
}
else
{
l9_495=in.varStereoViewID;
}
int l9_496=l9_495;
l9_492=l9_496;
}
int l9_497=l9_492;
int l9_498=shapeTextureLayout_tmp;
int l9_499=l9_497;
float2 l9_500=l9_490;
bool l9_501=(int(SC_USE_UV_TRANSFORM_shapeTexture_tmp)!=0);
float3x3 l9_502=(*sc_set0.UserUniforms).shapeTextureTransform;
int2 l9_503=int2(SC_SOFTWARE_WRAP_MODE_U_shapeTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_shapeTexture_tmp);
bool l9_504=(int(SC_USE_UV_MIN_MAX_shapeTexture_tmp)!=0);
float4 l9_505=(*sc_set0.UserUniforms).shapeTextureUvMinMax;
bool l9_506=(int(SC_USE_CLAMP_TO_BORDER_shapeTexture_tmp)!=0);
float4 l9_507=(*sc_set0.UserUniforms).shapeTextureBorderColor;
float l9_508=0.0;
bool l9_509=l9_506&&(!l9_504);
float l9_510=1.0;
float l9_511=l9_500.x;
int l9_512=l9_503.x;
if (l9_512==1)
{
l9_511=fract(l9_511);
}
else
{
if (l9_512==2)
{
float l9_513=fract(l9_511);
float l9_514=l9_511-l9_513;
float l9_515=step(0.25,fract(l9_514*0.5));
l9_511=mix(l9_513,1.0-l9_513,fast::clamp(l9_515,0.0,1.0));
}
}
l9_500.x=l9_511;
float l9_516=l9_500.y;
int l9_517=l9_503.y;
if (l9_517==1)
{
l9_516=fract(l9_516);
}
else
{
if (l9_517==2)
{
float l9_518=fract(l9_516);
float l9_519=l9_516-l9_518;
float l9_520=step(0.25,fract(l9_519*0.5));
l9_516=mix(l9_518,1.0-l9_518,fast::clamp(l9_520,0.0,1.0));
}
}
l9_500.y=l9_516;
if (l9_504)
{
bool l9_521=l9_506;
bool l9_522;
if (l9_521)
{
l9_522=l9_503.x==3;
}
else
{
l9_522=l9_521;
}
float l9_523=l9_500.x;
float l9_524=l9_505.x;
float l9_525=l9_505.z;
bool l9_526=l9_522;
float l9_527=l9_510;
float l9_528=fast::clamp(l9_523,l9_524,l9_525);
float l9_529=step(abs(l9_523-l9_528),9.9999997e-06);
l9_527*=(l9_529+((1.0-float(l9_526))*(1.0-l9_529)));
l9_523=l9_528;
l9_500.x=l9_523;
l9_510=l9_527;
bool l9_530=l9_506;
bool l9_531;
if (l9_530)
{
l9_531=l9_503.y==3;
}
else
{
l9_531=l9_530;
}
float l9_532=l9_500.y;
float l9_533=l9_505.y;
float l9_534=l9_505.w;
bool l9_535=l9_531;
float l9_536=l9_510;
float l9_537=fast::clamp(l9_532,l9_533,l9_534);
float l9_538=step(abs(l9_532-l9_537),9.9999997e-06);
l9_536*=(l9_538+((1.0-float(l9_535))*(1.0-l9_538)));
l9_532=l9_537;
l9_500.y=l9_532;
l9_510=l9_536;
}
float2 l9_539=l9_500;
bool l9_540=l9_501;
float3x3 l9_541=l9_502;
if (l9_540)
{
l9_539=float2((l9_541*float3(l9_539,1.0)).xy);
}
float2 l9_542=l9_539;
l9_500=l9_542;
float l9_543=l9_500.x;
int l9_544=l9_503.x;
bool l9_545=l9_509;
float l9_546=l9_510;
if ((l9_544==0)||(l9_544==3))
{
float l9_547=l9_543;
float l9_548=0.0;
float l9_549=1.0;
bool l9_550=l9_545;
float l9_551=l9_546;
float l9_552=fast::clamp(l9_547,l9_548,l9_549);
float l9_553=step(abs(l9_547-l9_552),9.9999997e-06);
l9_551*=(l9_553+((1.0-float(l9_550))*(1.0-l9_553)));
l9_547=l9_552;
l9_543=l9_547;
l9_546=l9_551;
}
l9_500.x=l9_543;
l9_510=l9_546;
float l9_554=l9_500.y;
int l9_555=l9_503.y;
bool l9_556=l9_509;
float l9_557=l9_510;
if ((l9_555==0)||(l9_555==3))
{
float l9_558=l9_554;
float l9_559=0.0;
float l9_560=1.0;
bool l9_561=l9_556;
float l9_562=l9_557;
float l9_563=fast::clamp(l9_558,l9_559,l9_560);
float l9_564=step(abs(l9_558-l9_563),9.9999997e-06);
l9_562*=(l9_564+((1.0-float(l9_561))*(1.0-l9_564)));
l9_558=l9_563;
l9_554=l9_558;
l9_557=l9_562;
}
l9_500.y=l9_554;
l9_510=l9_557;
float2 l9_565=l9_500;
int l9_566=l9_498;
int l9_567=l9_499;
float l9_568=l9_508;
float2 l9_569=l9_565;
int l9_570=l9_566;
int l9_571=l9_567;
float3 l9_572=float3(0.0);
if (l9_570==0)
{
l9_572=float3(l9_569,0.0);
}
else
{
if (l9_570==1)
{
l9_572=float3(l9_569.x,(l9_569.y*0.5)+(0.5-(float(l9_571)*0.5)),0.0);
}
else
{
l9_572=float3(l9_569,float(l9_571));
}
}
float3 l9_573=l9_572;
float3 l9_574=l9_573;
float4 l9_575=sc_set0.shapeTexture.sample(sc_set0.shapeTextureSmpSC,l9_574.xy,bias(l9_568));
float4 l9_576=l9_575;
if (l9_506)
{
l9_576=mix(l9_507,l9_576,float4(l9_510));
}
float4 l9_577=l9_576;
l9_491=l9_577;
float4 l9_578=float4(0.0);
float4 l9_579=(*sc_set0.UserUniforms).shapeColor;
l9_578=l9_579;
float4 l9_580=float4(0.0);
l9_580=l9_491*l9_578;
l9_477=l9_580;
l9_481=l9_477;
}
else
{
if (NODE_161_DROPLIST_ITEM_tmp==2)
{
float4 l9_581=float4(0.0);
float4 l9_582=float4(0.0);
float4 l9_583=float4(0.0);
float4 l9_584=(*sc_set0.UserUniforms).Port_Default_N209;
ssGlobals l9_585=l9_480;
float4 l9_586;
if (int((int(toQuadShapeGrad_tmp)!=0))==0)
{
float4 l9_587=float4(0.0);
float4 l9_588=(*sc_set0.UserUniforms).shapeGradColorA;
l9_587=l9_588;
float4 l9_589=float4(0.0);
l9_589=l9_587;
float4 l9_590=float4(0.0);
float4 l9_591=(*sc_set0.UserUniforms).shapeGradColorB;
l9_590=l9_591;
float4 l9_592=float4(0.0);
l9_592=l9_590;
float2 l9_593=float2(0.0);
l9_593=l9_585.Surface_UVCoord0;
float2 l9_594=float2(0.0);
l9_594=(((l9_593-float2((*sc_set0.UserUniforms).Port_RangeMinA_N175))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N175-(*sc_set0.UserUniforms).Port_RangeMinA_N175)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N175-(*sc_set0.UserUniforms).Port_RangeMinB_N175))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N175);
float2 l9_595=float2(0.0);
float2 l9_596=(*sc_set0.UserUniforms).shapeScaleGrad;
l9_595=l9_596;
float2 l9_597=float2(0.0);
l9_597=l9_595;
float2 l9_598=float2(0.0);
l9_598=((l9_594-(*sc_set0.UserUniforms).Port_Center_N177)*l9_597)+(*sc_set0.UserUniforms).Port_Center_N177;
float2 l9_599=float2(0.0);
float2 l9_600=(*sc_set0.UserUniforms).shapeGradPointA;
l9_599=l9_600;
float2 l9_601=float2(0.0);
l9_601=l9_599;
float2 l9_602=float2(0.0);
l9_602=l9_598-l9_601;
float2 l9_603=float2(0.0);
float2 l9_604=(*sc_set0.UserUniforms).shapeGradPointB;
l9_603=l9_604;
float2 l9_605=float2(0.0);
l9_605=l9_603;
float2 l9_606=float2(0.0);
l9_606=l9_605-l9_601;
float l9_607=0.0;
l9_607=dot(l9_602,l9_606);
float l9_608=0.0;
l9_608=dot(l9_606,l9_606);
float l9_609=0.0;
l9_609=l9_607/l9_608;
float l9_610=0.0;
l9_610=fast::clamp(l9_609+0.001,(*sc_set0.UserUniforms).Port_Input1_N185+0.001,(*sc_set0.UserUniforms).Port_Input2_N185+0.001)-0.001;
float l9_611=0.0;
l9_611=smoothstep((*sc_set0.UserUniforms).Port_Input0_N186,(*sc_set0.UserUniforms).Port_Input1_N186,l9_610);
float4 l9_612=float4(0.0);
l9_612=mix(l9_589,l9_592,float4(l9_611));
float4 l9_613=float4(0.0);
l9_613=l9_612;
l9_582=l9_613;
l9_586=l9_582;
}
else
{
if (int((int(toQuadShapeGrad_tmp)!=0))==1)
{
float4 l9_614=float4(0.0);
float4 l9_615=(*sc_set0.UserUniforms).shapeGradColorA;
l9_614=l9_615;
float4 l9_616=float4(0.0);
l9_616=l9_614;
float4 l9_617=float4(0.0);
float4 l9_618=(*sc_set0.UserUniforms).shapeGradColorB;
l9_617=l9_618;
float4 l9_619=float4(0.0);
l9_619=l9_617;
float2 l9_620=float2(0.0);
l9_620=l9_585.Surface_UVCoord0;
float2 l9_621=float2(0.0);
l9_621=(((l9_620-float2((*sc_set0.UserUniforms).Port_RangeMinA_N198))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N198-(*sc_set0.UserUniforms).Port_RangeMinA_N198)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N198-(*sc_set0.UserUniforms).Port_RangeMinB_N198))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N198);
float2 l9_622=float2(0.0);
float2 l9_623=(*sc_set0.UserUniforms).shapeScaleGrad;
l9_622=l9_623;
float2 l9_624=float2(0.0);
l9_624=l9_622;
float2 l9_625=float2(0.0);
float2 l9_626=(*sc_set0.UserUniforms).shapeQuadOffset;
l9_625=l9_626;
float2 l9_627=float2(0.0);
l9_627=l9_625;
float2 l9_628=float2(0.0);
l9_628=(l9_621*l9_624)+l9_627;
float l9_629=0.0;
float l9_630=0.0;
float2 l9_631=l9_628;
float l9_632=l9_631.x;
float l9_633=l9_631.y;
l9_629=l9_632;
l9_630=l9_633;
float4 l9_634=float4(0.0);
l9_634=mix(l9_616,l9_619,float4(l9_629));
float4 l9_635=float4(0.0);
float4 l9_636=(*sc_set0.UserUniforms).shapeGradColorC;
l9_635=l9_636;
float4 l9_637=float4(0.0);
l9_637=l9_635;
float4 l9_638=float4(0.0);
float4 l9_639=(*sc_set0.UserUniforms).shapeGradColorD;
l9_638=l9_639;
float4 l9_640=float4(0.0);
l9_640=l9_638;
float4 l9_641=float4(0.0);
l9_641=mix(l9_637,l9_640,float4(l9_629));
float4 l9_642=float4(0.0);
l9_642=mix(l9_634,l9_641,float4(l9_630));
float4 l9_643=float4(0.0);
l9_643=l9_642;
l9_583=l9_643;
l9_586=l9_583;
}
else
{
l9_586=l9_584;
}
}
l9_581=l9_586;
l9_478=l9_581;
l9_481=l9_478;
}
else
{
l9_481=l9_479;
}
}
}
l9_475=l9_481;
float l9_644=0.0;
l9_644=fast::clamp(l9_471+0.001,(*sc_set0.UserUniforms).Port_Input1_N265+0.001,(*sc_set0.UserUniforms).Port_Input2_N265+0.001)-0.001;
float l9_645=0.0;
l9_645=1.0-l9_644;
float2 l9_646=float2(0.0);
l9_646.x=l9_369;
l9_646.y=l9_377;
float2 l9_647=float2(0.0);
l9_647=l9_456-l9_646;
float l9_648=0.0;
l9_648=abs(l9_396);
float l9_649=0.0;
l9_649=fast::min(l9_648,l9_369);
float l9_650=0.0;
l9_650=fast::min(l9_649,l9_377);
float l9_651=0.0;
l9_651=fast::max(l9_650,(*sc_set0.UserUniforms).Port_Input1_N098);
float2 l9_652=float2(0.0);
l9_652=l9_647+float2(l9_651);
float2 l9_653=float2(0.0);
l9_653=fast::max(l9_652,(*sc_set0.UserUniforms).Port_Input1_N115);
float l9_654=0.0;
l9_654=length(l9_653);
float l9_655=0.0;
l9_655=l9_654/l9_651;
float l9_656=0.0;
l9_656=1.0-l9_655;
float l9_657=0.0;
float l9_658=l9_656;
float l9_659=fwidth(l9_658);
l9_657=l9_659;
float l9_660=0.0;
l9_660=l9_656/l9_657;
float l9_661=0.0;
l9_661=fast::clamp(l9_660+0.001,(*sc_set0.UserUniforms).Port_Input1_N142+0.001,(*sc_set0.UserUniforms).Port_Input2_N142+0.001)-0.001;
float l9_662=0.0;
l9_662=l9_645*l9_661;
float l9_663=0.0;
l9_663=fast::clamp(l9_662+0.001,(*sc_set0.UserUniforms).Port_Input1_N144+0.001,(*sc_set0.UserUniforms).Port_Input2_N144+0.001)-0.001;
float l9_664=0.0;
l9_664=l9_663*l9_421;
float l9_665=0.0;
l9_665=l9_472*l9_28;
float l9_666=0.0;
l9_666=l9_664+l9_665;
float l9_667=0.0;
l9_667=fast::max(l9_664,l9_665);
float l9_668=0.0;
l9_668=l9_666-l9_667;
float l9_669=0.0;
l9_669=l9_668+l9_665;
float l9_670=0.0;
float l9_671;
if ((int(shapeColorInvert_tmp)!=0))
{
l9_671=1.001;
}
else
{
l9_671=0.001;
}
l9_671-=0.001;
l9_670=l9_671;
float l9_672=0.0;
l9_672=1.0-l9_670;
float l9_673=0.0;
float l9_674=l9_669;
float l9_675=(*sc_set0.UserUniforms).Port_RangeMinA_N171;
float l9_676=(*sc_set0.UserUniforms).Port_RangeMaxA_N171;
float l9_677=l9_672;
float l9_678=l9_670;
float l9_679=(((l9_674-l9_675)/((l9_676-l9_675)+1e-06))*(l9_678-l9_677))+l9_677;
float l9_680;
if (l9_678>l9_677)
{
l9_680=fast::clamp(l9_679,l9_677,l9_678);
}
else
{
l9_680=fast::clamp(l9_679,l9_678,l9_677);
}
l9_679=l9_680;
l9_673=l9_679;
float4 l9_681=float4(0.0);
l9_681=mix(l9_474,l9_475,float4(l9_673));
float4 l9_682=float4(0.0);
float4 l9_683=(*sc_set0.UserUniforms).Port_Value0_N325;
float4 l9_684=float4(0.0);
float4 l9_685=(*sc_set0.UserUniforms).Port_Default_N325;
ssGlobals l9_686=l9_14;
float4 l9_687;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_687=l9_683;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float4 l9_688=float4(0.0);
float4 l9_689=float4(0.0);
float4 l9_690=float4(0.0);
float4 l9_691=float4(0.0);
float4 l9_692=(*sc_set0.UserUniforms).Port_Default_N324;
ssGlobals l9_693=l9_686;
float4 l9_694;
if (NODE_164_DROPLIST_ITEM_tmp==0)
{
float4 l9_695=float4(0.0);
float4 l9_696=(*sc_set0.UserUniforms).strokeColor;
l9_695=l9_696;
l9_689=l9_695;
l9_694=l9_689;
}
else
{
if (NODE_164_DROPLIST_ITEM_tmp==1)
{
float2 l9_697=float2(0.0);
l9_697=l9_693.Surface_UVCoord0;
float2 l9_698=float2(0.0);
float2 l9_699=(*sc_set0.UserUniforms).strokeScale;
l9_698=l9_699;
float2 l9_700=float2(0.0);
float2 l9_701=(*sc_set0.UserUniforms).strokeOffset;
l9_700=l9_701;
float2 l9_702=float2(0.0);
l9_702=(l9_697*l9_698)+l9_700;
float4 l9_703=float4(0.0);
int l9_704;
if ((int(strokeTextureHasSwappedViews_tmp)!=0))
{
int l9_705=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_705=0;
}
else
{
l9_705=in.varStereoViewID;
}
int l9_706=l9_705;
l9_704=1-l9_706;
}
else
{
int l9_707=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_707=0;
}
else
{
l9_707=in.varStereoViewID;
}
int l9_708=l9_707;
l9_704=l9_708;
}
int l9_709=l9_704;
int l9_710=strokeTextureLayout_tmp;
int l9_711=l9_709;
float2 l9_712=l9_702;
bool l9_713=(int(SC_USE_UV_TRANSFORM_strokeTexture_tmp)!=0);
float3x3 l9_714=(*sc_set0.UserUniforms).strokeTextureTransform;
int2 l9_715=int2(SC_SOFTWARE_WRAP_MODE_U_strokeTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_strokeTexture_tmp);
bool l9_716=(int(SC_USE_UV_MIN_MAX_strokeTexture_tmp)!=0);
float4 l9_717=(*sc_set0.UserUniforms).strokeTextureUvMinMax;
bool l9_718=(int(SC_USE_CLAMP_TO_BORDER_strokeTexture_tmp)!=0);
float4 l9_719=(*sc_set0.UserUniforms).strokeTextureBorderColor;
float l9_720=0.0;
bool l9_721=l9_718&&(!l9_716);
float l9_722=1.0;
float l9_723=l9_712.x;
int l9_724=l9_715.x;
if (l9_724==1)
{
l9_723=fract(l9_723);
}
else
{
if (l9_724==2)
{
float l9_725=fract(l9_723);
float l9_726=l9_723-l9_725;
float l9_727=step(0.25,fract(l9_726*0.5));
l9_723=mix(l9_725,1.0-l9_725,fast::clamp(l9_727,0.0,1.0));
}
}
l9_712.x=l9_723;
float l9_728=l9_712.y;
int l9_729=l9_715.y;
if (l9_729==1)
{
l9_728=fract(l9_728);
}
else
{
if (l9_729==2)
{
float l9_730=fract(l9_728);
float l9_731=l9_728-l9_730;
float l9_732=step(0.25,fract(l9_731*0.5));
l9_728=mix(l9_730,1.0-l9_730,fast::clamp(l9_732,0.0,1.0));
}
}
l9_712.y=l9_728;
if (l9_716)
{
bool l9_733=l9_718;
bool l9_734;
if (l9_733)
{
l9_734=l9_715.x==3;
}
else
{
l9_734=l9_733;
}
float l9_735=l9_712.x;
float l9_736=l9_717.x;
float l9_737=l9_717.z;
bool l9_738=l9_734;
float l9_739=l9_722;
float l9_740=fast::clamp(l9_735,l9_736,l9_737);
float l9_741=step(abs(l9_735-l9_740),9.9999997e-06);
l9_739*=(l9_741+((1.0-float(l9_738))*(1.0-l9_741)));
l9_735=l9_740;
l9_712.x=l9_735;
l9_722=l9_739;
bool l9_742=l9_718;
bool l9_743;
if (l9_742)
{
l9_743=l9_715.y==3;
}
else
{
l9_743=l9_742;
}
float l9_744=l9_712.y;
float l9_745=l9_717.y;
float l9_746=l9_717.w;
bool l9_747=l9_743;
float l9_748=l9_722;
float l9_749=fast::clamp(l9_744,l9_745,l9_746);
float l9_750=step(abs(l9_744-l9_749),9.9999997e-06);
l9_748*=(l9_750+((1.0-float(l9_747))*(1.0-l9_750)));
l9_744=l9_749;
l9_712.y=l9_744;
l9_722=l9_748;
}
float2 l9_751=l9_712;
bool l9_752=l9_713;
float3x3 l9_753=l9_714;
if (l9_752)
{
l9_751=float2((l9_753*float3(l9_751,1.0)).xy);
}
float2 l9_754=l9_751;
l9_712=l9_754;
float l9_755=l9_712.x;
int l9_756=l9_715.x;
bool l9_757=l9_721;
float l9_758=l9_722;
if ((l9_756==0)||(l9_756==3))
{
float l9_759=l9_755;
float l9_760=0.0;
float l9_761=1.0;
bool l9_762=l9_757;
float l9_763=l9_758;
float l9_764=fast::clamp(l9_759,l9_760,l9_761);
float l9_765=step(abs(l9_759-l9_764),9.9999997e-06);
l9_763*=(l9_765+((1.0-float(l9_762))*(1.0-l9_765)));
l9_759=l9_764;
l9_755=l9_759;
l9_758=l9_763;
}
l9_712.x=l9_755;
l9_722=l9_758;
float l9_766=l9_712.y;
int l9_767=l9_715.y;
bool l9_768=l9_721;
float l9_769=l9_722;
if ((l9_767==0)||(l9_767==3))
{
float l9_770=l9_766;
float l9_771=0.0;
float l9_772=1.0;
bool l9_773=l9_768;
float l9_774=l9_769;
float l9_775=fast::clamp(l9_770,l9_771,l9_772);
float l9_776=step(abs(l9_770-l9_775),9.9999997e-06);
l9_774*=(l9_776+((1.0-float(l9_773))*(1.0-l9_776)));
l9_770=l9_775;
l9_766=l9_770;
l9_769=l9_774;
}
l9_712.y=l9_766;
l9_722=l9_769;
float2 l9_777=l9_712;
int l9_778=l9_710;
int l9_779=l9_711;
float l9_780=l9_720;
float2 l9_781=l9_777;
int l9_782=l9_778;
int l9_783=l9_779;
float3 l9_784=float3(0.0);
if (l9_782==0)
{
l9_784=float3(l9_781,0.0);
}
else
{
if (l9_782==1)
{
l9_784=float3(l9_781.x,(l9_781.y*0.5)+(0.5-(float(l9_783)*0.5)),0.0);
}
else
{
l9_784=float3(l9_781,float(l9_783));
}
}
float3 l9_785=l9_784;
float3 l9_786=l9_785;
float4 l9_787=sc_set0.strokeTexture.sample(sc_set0.strokeTextureSmpSC,l9_786.xy,bias(l9_780));
float4 l9_788=l9_787;
if (l9_718)
{
l9_788=mix(l9_719,l9_788,float4(l9_722));
}
float4 l9_789=l9_788;
l9_703=l9_789;
float4 l9_790=float4(0.0);
float4 l9_791=(*sc_set0.UserUniforms).strokeColor;
l9_790=l9_791;
float4 l9_792=float4(0.0);
l9_792=l9_703*l9_790;
l9_690=l9_792;
l9_694=l9_690;
}
else
{
if (NODE_164_DROPLIST_ITEM_tmp==2)
{
float4 l9_793=float4(0.0);
float4 l9_794=float4(0.0);
float4 l9_795=float4(0.0);
float4 l9_796=(*sc_set0.UserUniforms).Port_Default_N323;
ssGlobals l9_797=l9_693;
float4 l9_798;
if (int((int(toQuadStrokeGrad_tmp)!=0))==0)
{
float4 l9_799=float4(0.0);
float4 l9_800=(*sc_set0.UserUniforms).shapeGradColorA2;
l9_799=l9_800;
float4 l9_801=float4(0.0);
l9_801=l9_799;
float4 l9_802=float4(0.0);
float4 l9_803=(*sc_set0.UserUniforms).shapeGradColorB2;
l9_802=l9_803;
float4 l9_804=float4(0.0);
l9_804=l9_802;
float2 l9_805=float2(0.0);
l9_805=l9_797.Surface_UVCoord0;
float2 l9_806=float2(0.0);
l9_806=(((l9_805-float2((*sc_set0.UserUniforms).Port_RangeMinA_N231))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N231-(*sc_set0.UserUniforms).Port_RangeMinA_N231)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N231-(*sc_set0.UserUniforms).Port_RangeMinB_N231))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N231);
float2 l9_807=float2(0.0);
float2 l9_808=(*sc_set0.UserUniforms).shapeScaleGrad2;
l9_807=l9_808;
float2 l9_809=float2(0.0);
l9_809=l9_807;
float2 l9_810=float2(0.0);
l9_810=((l9_806-(*sc_set0.UserUniforms).Port_Center_N233)*l9_809)+(*sc_set0.UserUniforms).Port_Center_N233;
float2 l9_811=float2(0.0);
float2 l9_812=(*sc_set0.UserUniforms).shapeGradPointA2;
l9_811=l9_812;
float2 l9_813=float2(0.0);
l9_813=l9_811;
float2 l9_814=float2(0.0);
l9_814=l9_810-l9_813;
float2 l9_815=float2(0.0);
float2 l9_816=(*sc_set0.UserUniforms).shapeGradPointB2;
l9_815=l9_816;
float2 l9_817=float2(0.0);
l9_817=l9_815;
float2 l9_818=float2(0.0);
l9_818=l9_817-l9_813;
float l9_819=0.0;
l9_819=dot(l9_814,l9_818);
float l9_820=0.0;
l9_820=dot(l9_818,l9_818);
float l9_821=0.0;
l9_821=l9_819/l9_820;
float l9_822=0.0;
l9_822=fast::clamp(l9_821+0.001,(*sc_set0.UserUniforms).Port_Input1_N241+0.001,(*sc_set0.UserUniforms).Port_Input2_N241+0.001)-0.001;
float l9_823=0.0;
l9_823=smoothstep((*sc_set0.UserUniforms).Port_Input0_N242,(*sc_set0.UserUniforms).Port_Input1_N242,l9_822);
float4 l9_824=float4(0.0);
l9_824=mix(l9_801,l9_804,float4(l9_823));
float4 l9_825=float4(0.0);
l9_825=l9_824;
l9_794=l9_825;
l9_798=l9_794;
}
else
{
if (int((int(toQuadStrokeGrad_tmp)!=0))==1)
{
float4 l9_826=float4(0.0);
float4 l9_827=(*sc_set0.UserUniforms).shapeGradColorA2;
l9_826=l9_827;
float4 l9_828=float4(0.0);
l9_828=l9_826;
float4 l9_829=float4(0.0);
float4 l9_830=(*sc_set0.UserUniforms).shapeGradColorB2;
l9_829=l9_830;
float4 l9_831=float4(0.0);
l9_831=l9_829;
float2 l9_832=float2(0.0);
l9_832=l9_797.Surface_UVCoord0;
float2 l9_833=float2(0.0);
l9_833=(((l9_832-float2((*sc_set0.UserUniforms).Port_RangeMinA_N252))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N252-(*sc_set0.UserUniforms).Port_RangeMinA_N252)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N252-(*sc_set0.UserUniforms).Port_RangeMinB_N252))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N252);
float2 l9_834=float2(0.0);
float2 l9_835=(*sc_set0.UserUniforms).shapeScaleGrad2;
l9_834=l9_835;
float2 l9_836=float2(0.0);
l9_836=l9_834;
float2 l9_837=float2(0.0);
float2 l9_838=(*sc_set0.UserUniforms).shapeQuadOffset2;
l9_837=l9_838;
float2 l9_839=float2(0.0);
l9_839=l9_837;
float2 l9_840=float2(0.0);
l9_840=(l9_833*l9_836)+l9_839;
float l9_841=0.0;
float l9_842=0.0;
float2 l9_843=l9_840;
float l9_844=l9_843.x;
float l9_845=l9_843.y;
l9_841=l9_844;
l9_842=l9_845;
float4 l9_846=float4(0.0);
l9_846=mix(l9_828,l9_831,float4(l9_841));
float4 l9_847=float4(0.0);
float4 l9_848=(*sc_set0.UserUniforms).shapeGradColorC2;
l9_847=l9_848;
float4 l9_849=float4(0.0);
l9_849=l9_847;
float4 l9_850=float4(0.0);
float4 l9_851=(*sc_set0.UserUniforms).shapeGradColorD2;
l9_850=l9_851;
float4 l9_852=float4(0.0);
l9_852=l9_850;
float4 l9_853=float4(0.0);
l9_853=mix(l9_849,l9_852,float4(l9_841));
float4 l9_854=float4(0.0);
l9_854=mix(l9_846,l9_853,float4(l9_842));
float4 l9_855=float4(0.0);
l9_855=l9_854;
l9_795=l9_855;
l9_798=l9_795;
}
else
{
l9_798=l9_796;
}
}
l9_793=l9_798;
l9_691=l9_793;
l9_694=l9_691;
}
else
{
l9_694=l9_692;
}
}
}
l9_688=l9_694;
l9_684=l9_688;
l9_687=l9_684;
}
else
{
l9_687=l9_685;
}
}
l9_682=l9_687;
float4 l9_856=float4(0.0);
l9_856=mix(l9_681,l9_682,float4(l9_664));
l9_12=l9_856;
l9_17=l9_12;
}
else
{
float4 l9_857=float4(0.0);
float4 l9_858=float4(0.0);
float4 l9_859=float4(0.0);
float4 l9_860=(*sc_set0.UserUniforms).Port_Default_N126;
float4 l9_861;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
float l9_862=0.0;
float l9_863;
if ((int(Tweak_N124_tmp)!=0))
{
l9_863=1.001;
}
else
{
l9_863=0.001;
}
l9_863-=0.001;
l9_862=l9_863;
float l9_864=0.0;
l9_864=(((l9_862-(*sc_set0.UserUniforms).Port_RangeMinA_N136)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N136-(*sc_set0.UserUniforms).Port_RangeMinA_N136)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N136-(*sc_set0.UserUniforms).Port_RangeMinB_N136))+(*sc_set0.UserUniforms).Port_RangeMinB_N136;
l9_858=float4(l9_864);
l9_861=l9_858;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float4 l9_865=float4(0.0);
float4 l9_866=(*sc_set0.UserUniforms).shadowColor;
l9_865=l9_866;
l9_859=l9_865;
l9_861=l9_859;
}
else
{
l9_861=l9_860;
}
}
l9_857=l9_861;
float l9_867=0.0;
float l9_868=(*sc_set0.UserUniforms).shapeAlpha;
l9_867=l9_868;
float2 l9_869=float2(0.0);
l9_869=l9_14.Surface_UVCoord0;
float4 l9_870=float4(0.0);
float4 l9_871=(*sc_set0.UserUniforms).Port_Value0_N154;
float4 l9_872=float4(1.0);
float4 l9_873=(*sc_set0.UserUniforms).Port_Default_N154;
float4 l9_874;
if (int((int(shapeAspectFix_tmp)!=0))==0)
{
l9_874=l9_871;
}
else
{
if (int((int(shapeAspectFix_tmp)!=0))==1)
{
float l9_875=0.0;
l9_875=(*sc_set0.UserUniforms).sc_Camera.aspect;
float l9_876=0.0;
l9_876=1.0/l9_875;
float2 l9_877=float2(0.0);
l9_877.x=(*sc_set0.UserUniforms).Port_Value1_N157;
l9_877.y=l9_876;
l9_872=float4(l9_877,0.0,0.0);
l9_874=l9_872;
}
else
{
l9_874=l9_873;
}
}
l9_870=l9_874;
float2 l9_878=float2(0.0);
l9_878=(l9_869*l9_870.xy)+(*sc_set0.UserUniforms).Port_Input2_N148;
float l9_879=0.0;
float l9_880=(*sc_set0.UserUniforms).shapeWidthX;
l9_879=l9_880;
float l9_881=0.0;
l9_881=l9_879;
float l9_882=0.0;
float l9_883=0.0;
float l9_884=(*sc_set0.UserUniforms).Port_Value0_N287;
float l9_885=0.0;
float l9_886=(*sc_set0.UserUniforms).Port_Default_N287;
float l9_887=0.0;
float l9_888=float((*sc_set0.UserUniforms).xRightPin!=0);
l9_887=l9_888;
float l9_889=0.0;
l9_889=l9_887;
l9_883=l9_889;
l9_883=floor(l9_883);
float l9_890;
if (l9_883==0.0)
{
l9_890=l9_884;
}
else
{
if (l9_883==1.0)
{
float l9_891=0.0;
float l9_892=0.0;
float l9_893=0.0;
float l9_894=(*sc_set0.UserUniforms).Port_Default_N294;
float l9_895;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_896=0.0;
float l9_897=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_898=l9_897+0.001;
l9_898-=0.001;
l9_896=l9_898;
l9_892=l9_896;
l9_895=l9_892;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_899=0.0;
float l9_900=(*sc_set0.UserUniforms).strokeThickness;
l9_899=l9_900;
float l9_901=0.0;
l9_901=l9_899;
float l9_902=0.0;
float l9_903=l9_901;
float l9_904=(*sc_set0.UserUniforms).Port_RangeMinA_N276;
float l9_905=(*sc_set0.UserUniforms).Port_RangeMaxA_N276;
float l9_906=(*sc_set0.UserUniforms).Port_RangeMinB_N276;
float l9_907=(*sc_set0.UserUniforms).Port_RangeMaxB_N276;
float l9_908=(((l9_903-l9_904)/((l9_905-l9_904)+1e-06))*(l9_907-l9_906))+l9_906;
float l9_909;
if (l9_907>l9_906)
{
l9_909=fast::clamp(l9_908,l9_906,l9_907);
}
else
{
l9_909=fast::clamp(l9_908,l9_907,l9_906);
}
l9_908=l9_909;
l9_902=l9_908;
l9_893=l9_902;
l9_895=l9_893;
}
else
{
l9_895=l9_894;
}
}
l9_891=l9_895;
l9_885=l9_891;
l9_890=l9_885;
}
else
{
l9_890=l9_886;
}
}
l9_882=l9_890;
float l9_910=0.0;
float l9_911=0.0;
float l9_912=(*sc_set0.UserUniforms).Port_Value0_N281;
float l9_913=0.0;
float l9_914=(*sc_set0.UserUniforms).Port_Default_N281;
float l9_915=0.0;
float l9_916=float((*sc_set0.UserUniforms).xLeftPin!=0);
l9_915=l9_916;
float l9_917=0.0;
l9_917=l9_915;
l9_911=l9_917;
l9_911=floor(l9_911);
float l9_918;
if (l9_911==0.0)
{
l9_918=l9_912;
}
else
{
if (l9_911==1.0)
{
float l9_919=0.0;
float l9_920=0.0;
float l9_921=0.0;
float l9_922=(*sc_set0.UserUniforms).Port_Default_N296;
float l9_923;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_924=0.0;
float l9_925=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_926=l9_925+0.001;
l9_926-=0.001;
l9_924=l9_926;
l9_920=l9_924;
l9_923=l9_920;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_927=0.0;
float l9_928=(*sc_set0.UserUniforms).strokeThickness;
l9_927=l9_928;
float l9_929=0.0;
l9_929=l9_927;
float l9_930=0.0;
float l9_931=l9_929;
float l9_932=(*sc_set0.UserUniforms).Port_RangeMinA_N295;
float l9_933=(*sc_set0.UserUniforms).Port_RangeMaxA_N295;
float l9_934=(*sc_set0.UserUniforms).Port_RangeMinB_N295;
float l9_935=(*sc_set0.UserUniforms).Port_RangeMaxB_N295;
float l9_936=(((l9_931-l9_932)/((l9_933-l9_932)+1e-06))*(l9_935-l9_934))+l9_934;
float l9_937;
if (l9_935>l9_934)
{
l9_937=fast::clamp(l9_936,l9_934,l9_935);
}
else
{
l9_937=fast::clamp(l9_936,l9_935,l9_934);
}
l9_936=l9_937;
l9_930=l9_936;
l9_921=l9_930;
l9_923=l9_921;
}
else
{
l9_923=l9_922;
}
}
l9_919=l9_923;
l9_913=l9_919;
l9_918=l9_913;
}
else
{
l9_918=l9_914;
}
}
l9_910=l9_918;
float l9_938=0.0;
float l9_939=l9_881;
float l9_940=(*sc_set0.UserUniforms).Port_RangeMinA_N268;
float l9_941=(*sc_set0.UserUniforms).Port_RangeMaxA_N268;
float l9_942=l9_882;
float l9_943=l9_910;
float l9_944=(((l9_939-l9_940)/((l9_941-l9_940)+1e-06))*(l9_943-l9_942))+l9_942;
float l9_945;
if (l9_943>l9_942)
{
l9_945=fast::clamp(l9_944,l9_942,l9_943);
}
else
{
l9_945=fast::clamp(l9_944,l9_943,l9_942);
}
l9_944=l9_945;
l9_938=l9_944;
float l9_946=0.0;
float l9_947=(*sc_set0.UserUniforms).xOffset;
l9_946=l9_947;
float l9_948=0.0;
l9_948=l9_946;
float l9_949=0.0;
float l9_950=0.0;
float l9_951=(*sc_set0.UserUniforms).Port_Value0_N282;
float l9_952=(*sc_set0.UserUniforms).Port_Value1_N282;
float l9_953=(*sc_set0.UserUniforms).Port_Default_N282;
float l9_954=0.0;
float l9_955=float((*sc_set0.UserUniforms).xLeftPin!=0);
l9_954=l9_955;
float l9_956=0.0;
l9_956=l9_954;
l9_950=l9_956;
l9_950=floor(l9_950);
float l9_957;
if (l9_950==0.0)
{
l9_957=l9_951;
}
else
{
if (l9_950==1.0)
{
l9_957=l9_952;
}
else
{
l9_957=l9_953;
}
}
l9_949=l9_957;
float l9_958=0.0;
l9_958=l9_948+l9_949;
float l9_959=0.0;
l9_959=1.0-l9_958;
float l9_960=0.0;
float l9_961=(*sc_set0.UserUniforms).Port_Value0_N308;
float l9_962=0.0;
float l9_963=(*sc_set0.UserUniforms).Port_Default_N308;
float l9_964;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_964=l9_961;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_965=0.0;
float l9_966=0.0;
float l9_967=(*sc_set0.UserUniforms).Port_Value0_N304;
float l9_968=0.0;
float l9_969=(*sc_set0.UserUniforms).Port_Default_N304;
float l9_970=0.0;
float l9_971=float((*sc_set0.UserUniforms).xLeftPin!=0);
l9_970=l9_971;
float l9_972=0.0;
l9_972=l9_970;
l9_966=l9_972;
l9_966=floor(l9_966);
float l9_973;
if (l9_966==0.0)
{
l9_973=l9_967;
}
else
{
if (l9_966==1.0)
{
float l9_974=0.0;
float l9_975=(*sc_set0.UserUniforms).strokeThickness;
l9_974=l9_975;
float l9_976=0.0;
l9_976=l9_974;
float l9_977=0.0;
float l9_978=l9_976;
float l9_979=(*sc_set0.UserUniforms).Port_RangeMinA_N303;
float l9_980=(*sc_set0.UserUniforms).Port_RangeMaxA_N303;
float l9_981=(*sc_set0.UserUniforms).Port_RangeMinB_N303;
float l9_982=(*sc_set0.UserUniforms).Port_RangeMaxB_N303;
float l9_983=(((l9_978-l9_979)/((l9_980-l9_979)+1e-06))*(l9_982-l9_981))+l9_981;
float l9_984;
if (l9_982>l9_981)
{
l9_984=fast::clamp(l9_983,l9_981,l9_982);
}
else
{
l9_984=fast::clamp(l9_983,l9_982,l9_981);
}
l9_983=l9_984;
l9_977=l9_983;
l9_968=l9_977;
l9_973=l9_968;
}
else
{
l9_973=l9_969;
}
}
l9_965=l9_973;
l9_962=l9_965;
l9_964=l9_962;
}
else
{
l9_964=l9_963;
}
}
l9_960=l9_964;
float l9_985=0.0;
l9_985=l9_959+l9_960;
float l9_986=0.0;
l9_986=l9_938+l9_985;
float l9_987=0.0;
float l9_988=(*sc_set0.UserUniforms).shapeHeightY;
l9_987=l9_988;
float l9_989=0.0;
l9_989=l9_987;
float l9_990=0.0;
float l9_991=0.0;
float l9_992=(*sc_set0.UserUniforms).Port_Value0_N289;
float l9_993=0.0;
float l9_994=(*sc_set0.UserUniforms).Port_Default_N289;
float l9_995=0.0;
float l9_996=float((*sc_set0.UserUniforms).yUpPin!=0);
l9_995=l9_996;
float l9_997=0.0;
l9_997=l9_995;
l9_991=l9_997;
l9_991=floor(l9_991);
float l9_998;
if (l9_991==0.0)
{
l9_998=l9_992;
}
else
{
if (l9_991==1.0)
{
float l9_999=0.0;
float l9_1000=0.0;
float l9_1001=0.0;
float l9_1002=(*sc_set0.UserUniforms).Port_Default_N297;
float l9_1003;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_1004=0.0;
float l9_1005=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_1006=l9_1005+0.001;
l9_1006-=0.001;
l9_1004=l9_1006;
l9_1000=l9_1004;
l9_1003=l9_1000;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_1007=0.0;
float l9_1008=(*sc_set0.UserUniforms).strokeThickness;
l9_1007=l9_1008;
float l9_1009=0.0;
l9_1009=l9_1007;
float l9_1010=0.0;
float l9_1011=l9_1009;
float l9_1012=(*sc_set0.UserUniforms).Port_RangeMinA_N299;
float l9_1013=(*sc_set0.UserUniforms).Port_RangeMaxA_N299;
float l9_1014=(*sc_set0.UserUniforms).Port_RangeMinB_N299;
float l9_1015=(*sc_set0.UserUniforms).Port_RangeMaxB_N299;
float l9_1016=(((l9_1011-l9_1012)/((l9_1013-l9_1012)+1e-06))*(l9_1015-l9_1014))+l9_1014;
float l9_1017;
if (l9_1015>l9_1014)
{
l9_1017=fast::clamp(l9_1016,l9_1014,l9_1015);
}
else
{
l9_1017=fast::clamp(l9_1016,l9_1015,l9_1014);
}
l9_1016=l9_1017;
l9_1010=l9_1016;
l9_1001=l9_1010;
l9_1003=l9_1001;
}
else
{
l9_1003=l9_1002;
}
}
l9_999=l9_1003;
l9_993=l9_999;
l9_998=l9_993;
}
else
{
l9_998=l9_994;
}
}
l9_990=l9_998;
float l9_1018=0.0;
float l9_1019=0.0;
float l9_1020=(*sc_set0.UserUniforms).Port_Value0_N286;
float l9_1021=0.0;
float l9_1022=(*sc_set0.UserUniforms).Port_Default_N286;
float l9_1023=0.0;
float l9_1024=float((*sc_set0.UserUniforms).yDownPin!=0);
l9_1023=l9_1024;
float l9_1025=0.0;
l9_1025=l9_1023;
l9_1019=l9_1025;
l9_1019=floor(l9_1019);
float l9_1026;
if (l9_1019==0.0)
{
l9_1026=l9_1020;
}
else
{
if (l9_1019==1.0)
{
float l9_1027=0.0;
float l9_1028=0.0;
float l9_1029=0.0;
float l9_1030=(*sc_set0.UserUniforms).Port_Default_N298;
float l9_1031;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_1032=0.0;
float l9_1033=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_1034=l9_1033+0.001;
l9_1034-=0.001;
l9_1032=l9_1034;
l9_1028=l9_1032;
l9_1031=l9_1028;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_1035=0.0;
float l9_1036=(*sc_set0.UserUniforms).strokeThickness;
l9_1035=l9_1036;
float l9_1037=0.0;
l9_1037=l9_1035;
float l9_1038=0.0;
float l9_1039=l9_1037;
float l9_1040=(*sc_set0.UserUniforms).Port_RangeMinA_N300;
float l9_1041=(*sc_set0.UserUniforms).Port_RangeMaxA_N300;
float l9_1042=(*sc_set0.UserUniforms).Port_RangeMinB_N300;
float l9_1043=(*sc_set0.UserUniforms).Port_RangeMaxB_N300;
float l9_1044=(((l9_1039-l9_1040)/((l9_1041-l9_1040)+1e-06))*(l9_1043-l9_1042))+l9_1042;
float l9_1045;
if (l9_1043>l9_1042)
{
l9_1045=fast::clamp(l9_1044,l9_1042,l9_1043);
}
else
{
l9_1045=fast::clamp(l9_1044,l9_1043,l9_1042);
}
l9_1044=l9_1045;
l9_1038=l9_1044;
l9_1029=l9_1038;
l9_1031=l9_1029;
}
else
{
l9_1031=l9_1030;
}
}
l9_1027=l9_1031;
l9_1021=l9_1027;
l9_1026=l9_1021;
}
else
{
l9_1026=l9_1022;
}
}
l9_1018=l9_1026;
float l9_1046=0.0;
float l9_1047=l9_989;
float l9_1048=(*sc_set0.UserUniforms).Port_RangeMinA_N277;
float l9_1049=(*sc_set0.UserUniforms).Port_RangeMaxA_N277;
float l9_1050=l9_990;
float l9_1051=l9_1018;
float l9_1052=(((l9_1047-l9_1048)/((l9_1049-l9_1048)+1e-06))*(l9_1051-l9_1050))+l9_1050;
float l9_1053;
if (l9_1051>l9_1050)
{
l9_1053=fast::clamp(l9_1052,l9_1050,l9_1051);
}
else
{
l9_1053=fast::clamp(l9_1052,l9_1051,l9_1050);
}
l9_1052=l9_1053;
l9_1046=l9_1052;
float l9_1054=0.0;
float l9_1055=(*sc_set0.UserUniforms).yOffset;
l9_1054=l9_1055;
float l9_1056=0.0;
l9_1056=l9_1054;
float l9_1057=0.0;
float l9_1058=0.0;
float l9_1059=(*sc_set0.UserUniforms).Port_Value0_N293;
float l9_1060=(*sc_set0.UserUniforms).Port_Value1_N293;
float l9_1061=(*sc_set0.UserUniforms).Port_Default_N293;
float l9_1062=0.0;
float l9_1063=float((*sc_set0.UserUniforms).yDownPin!=0);
l9_1062=l9_1063;
float l9_1064=0.0;
l9_1064=l9_1062;
l9_1058=l9_1064;
l9_1058=floor(l9_1058);
float l9_1065;
if (l9_1058==0.0)
{
l9_1065=l9_1059;
}
else
{
if (l9_1058==1.0)
{
l9_1065=l9_1060;
}
else
{
l9_1065=l9_1061;
}
}
l9_1057=l9_1065;
float l9_1066=0.0;
l9_1066=l9_1056+l9_1057;
float l9_1067=0.0;
float l9_1068=(*sc_set0.UserUniforms).Port_Value0_N301;
float l9_1069=0.0;
float l9_1070=(*sc_set0.UserUniforms).Port_Default_N301;
float l9_1071;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_1071=l9_1068;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_1072=0.0;
float l9_1073=0.0;
float l9_1074=(*sc_set0.UserUniforms).Port_Value0_N306;
float l9_1075=0.0;
float l9_1076=(*sc_set0.UserUniforms).Port_Default_N306;
float l9_1077=0.0;
float l9_1078=float((*sc_set0.UserUniforms).yDownPin!=0);
l9_1077=l9_1078;
float l9_1079=0.0;
l9_1079=l9_1077;
l9_1073=l9_1079;
l9_1073=floor(l9_1073);
float l9_1080;
if (l9_1073==0.0)
{
l9_1080=l9_1074;
}
else
{
if (l9_1073==1.0)
{
float l9_1081=0.0;
float l9_1082=(*sc_set0.UserUniforms).strokeThickness;
l9_1081=l9_1082;
float l9_1083=0.0;
l9_1083=l9_1081;
float l9_1084=0.0;
float l9_1085=l9_1083;
float l9_1086=(*sc_set0.UserUniforms).Port_RangeMinA_N305;
float l9_1087=(*sc_set0.UserUniforms).Port_RangeMaxA_N305;
float l9_1088=(*sc_set0.UserUniforms).Port_RangeMinB_N305;
float l9_1089=(*sc_set0.UserUniforms).Port_RangeMaxB_N305;
float l9_1090=(((l9_1085-l9_1086)/((l9_1087-l9_1086)+1e-06))*(l9_1089-l9_1088))+l9_1088;
float l9_1091;
if (l9_1089>l9_1088)
{
l9_1091=fast::clamp(l9_1090,l9_1088,l9_1089);
}
else
{
l9_1091=fast::clamp(l9_1090,l9_1089,l9_1088);
}
l9_1090=l9_1091;
l9_1084=l9_1090;
l9_1075=l9_1084;
l9_1080=l9_1075;
}
else
{
l9_1080=l9_1076;
}
}
l9_1072=l9_1080;
l9_1069=l9_1072;
l9_1071=l9_1069;
}
else
{
l9_1071=l9_1070;
}
}
l9_1067=l9_1071;
float l9_1092=0.0;
l9_1092=l9_1066+l9_1067;
float l9_1093=0.0;
l9_1093=l9_1046+l9_1092;
float2 l9_1094=float2(0.0);
l9_1094.x=l9_986;
l9_1094.y=l9_1093;
float2 l9_1095=float2(0.0);
l9_1095=l9_1094;
float2 l9_1096=float2(0.0);
l9_1096=l9_878+l9_1095;
float l9_1097=0.0;
float l9_1098=(*sc_set0.UserUniforms).Port_Value0_N132;
float l9_1099=0.0;
float l9_1100=(*sc_set0.UserUniforms).Port_Default_N132;
float l9_1101;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_1101=l9_1098;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_1102=0.0;
float l9_1103=(*sc_set0.UserUniforms).shadowRotation;
l9_1102=l9_1103;
float l9_1104=0.0;
l9_1104=l9_1102+(*sc_set0.UserUniforms).Port_Input1_N141;
l9_1099=l9_1104;
l9_1101=l9_1099;
}
else
{
l9_1101=l9_1100;
}
}
l9_1097=l9_1101;
float2 l9_1105=float2(0.0);
float2 l9_1106=l9_1096;
float l9_1107=l9_1097;
float2 l9_1108=(*sc_set0.UserUniforms).Port_Center_N092;
float l9_1109=sin(radians(l9_1107));
float l9_1110=cos(radians(l9_1107));
float2 l9_1111=l9_1106-l9_1108;
l9_1111=float2(dot(float2(l9_1110,l9_1109),l9_1111),dot(float2(-l9_1109,l9_1110),l9_1111))+l9_1108;
l9_1105=l9_1111;
float l9_1112=0.0;
float l9_1113=(*sc_set0.UserUniforms).Port_Value0_N131;
float l9_1114=0.0;
float l9_1115=(*sc_set0.UserUniforms).Port_Default_N131;
float l9_1116;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_1116=l9_1113;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_1117=0.0;
float l9_1118=(*sc_set0.UserUniforms).shadowDistance;
l9_1117=l9_1118;
l9_1114=l9_1117;
l9_1116=l9_1114;
}
else
{
l9_1116=l9_1115;
}
}
l9_1112=l9_1116;
float l9_1119=0.0;
l9_1119=l9_1112/(*sc_set0.UserUniforms).Port_Input1_N160;
float2 l9_1120=float2(0.0);
l9_1120.x=(*sc_set0.UserUniforms).Port_Value1_N097;
l9_1120.y=l9_1119;
float2 l9_1121=float2(0.0);
l9_1121=l9_1105+l9_1120;
float l9_1122=0.0;
l9_1122=l9_1097+(*sc_set0.UserUniforms).Port_Input1_N263;
float l9_1123=0.0;
l9_1123=1.0-l9_1122;
float2 l9_1124=float2(0.0);
float2 l9_1125=l9_1121;
float l9_1126=l9_1123;
float2 l9_1127=(*sc_set0.UserUniforms).Port_Center_N094;
float l9_1128=sin(radians(l9_1126));
float l9_1129=cos(radians(l9_1126));
float2 l9_1130=l9_1125-l9_1127;
l9_1130=float2(dot(float2(l9_1129,l9_1128),l9_1130),dot(float2(-l9_1128,l9_1129),l9_1130))+l9_1127;
l9_1124=l9_1130;
float l9_1131=0.0;
float l9_1132=(*sc_set0.UserUniforms).shapeRotation;
l9_1131=l9_1132;
float2 l9_1133=float2(0.0);
float2 l9_1134=l9_1124;
float l9_1135=l9_1131;
float2 l9_1136=(*sc_set0.UserUniforms).Port_Center_N100;
float l9_1137=sin(radians(l9_1135));
float l9_1138=cos(radians(l9_1135));
float2 l9_1139=l9_1134-l9_1136;
l9_1139=float2(dot(float2(l9_1138,l9_1137),l9_1139),dot(float2(-l9_1137,l9_1138),l9_1139))+l9_1136;
l9_1133=l9_1139;
float l9_1140=0.0;
float l9_1141=(*sc_set0.UserUniforms).Port_Value0_N125;
float l9_1142=0.0;
float l9_1143=(*sc_set0.UserUniforms).Port_Default_N125;
float l9_1144;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_1144=l9_1141;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_1145=0.0;
float l9_1146=(*sc_set0.UserUniforms).shadowBlur;
l9_1145=l9_1146;
l9_1142=l9_1145;
l9_1144=l9_1142;
}
else
{
l9_1144=l9_1143;
}
}
l9_1140=l9_1144;
float l9_1147=0.0;
float l9_1148=l9_1140;
float l9_1149=(*sc_set0.UserUniforms).Port_RangeMinA_N138;
float l9_1150=(*sc_set0.UserUniforms).Port_RangeMaxA_N138;
float l9_1151=(*sc_set0.UserUniforms).Port_RangeMinB_N138;
float l9_1152=(*sc_set0.UserUniforms).Port_RangeMaxB_N138;
float l9_1153=(((l9_1148-l9_1149)/((l9_1150-l9_1149)+1e-06))*(l9_1152-l9_1151))+l9_1151;
float l9_1154;
if (l9_1152>l9_1151)
{
l9_1154=fast::clamp(l9_1153,l9_1151,l9_1152);
}
else
{
l9_1154=fast::clamp(l9_1153,l9_1152,l9_1151);
}
l9_1153=l9_1154;
l9_1147=l9_1153;
float2 l9_1155=float2(0.0);
l9_1155=((l9_1133-(*sc_set0.UserUniforms).Port_Center_N137)*float2(l9_1147))+(*sc_set0.UserUniforms).Port_Center_N137;
float2 l9_1156=float2(0.0);
l9_1156=l9_1155*float2((*sc_set0.UserUniforms).Port_Input1_N019);
float2 l9_1157=float2(0.0);
l9_1157=l9_1156+float2((*sc_set0.UserUniforms).Port_Input1_N020);
float2 l9_1158=float2(0.0);
l9_1158=abs(l9_1157);
float l9_1159=0.0;
float l9_1160=(*sc_set0.UserUniforms).Port_Value0_N122;
float l9_1161=0.0;
float l9_1162=(*sc_set0.UserUniforms).Port_Default_N122;
float l9_1163;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_1163=l9_1160;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_1164=0.0;
float l9_1165=(*sc_set0.UserUniforms).strokeThickness;
l9_1164=l9_1165;
l9_1161=l9_1164;
l9_1163=l9_1161;
}
else
{
l9_1163=l9_1162;
}
}
l9_1159=l9_1163;
float l9_1166=0.0;
l9_1166=l9_1159/(*sc_set0.UserUniforms).Port_Input1_N056;
float l9_1167=0.0;
l9_1167=1.0-l9_1166;
float l9_1168=0.0;
float l9_1169=l9_879;
float l9_1170=(*sc_set0.UserUniforms).Port_RangeMinA_N021;
float l9_1171=(*sc_set0.UserUniforms).Port_RangeMaxA_N021;
float l9_1172=(*sc_set0.UserUniforms).Port_RangeMinB_N021;
float l9_1173=l9_1167;
float l9_1174=(((l9_1169-l9_1170)/((l9_1171-l9_1170)+1e-06))*(l9_1173-l9_1172))+l9_1172;
float l9_1175;
if (l9_1173>l9_1172)
{
l9_1175=fast::clamp(l9_1174,l9_1172,l9_1173);
}
else
{
l9_1175=fast::clamp(l9_1174,l9_1173,l9_1172);
}
l9_1174=l9_1175;
l9_1168=l9_1174;
float l9_1176=0.0;
l9_1176=1.0-l9_1166;
float l9_1177=0.0;
float l9_1178=l9_987;
float l9_1179=(*sc_set0.UserUniforms).Port_RangeMinA_N022;
float l9_1180=(*sc_set0.UserUniforms).Port_RangeMaxA_N022;
float l9_1181=(*sc_set0.UserUniforms).Port_RangeMinB_N022;
float l9_1182=l9_1176;
float l9_1183=(((l9_1178-l9_1179)/((l9_1180-l9_1179)+1e-06))*(l9_1182-l9_1181))+l9_1181;
float l9_1184;
if (l9_1182>l9_1181)
{
l9_1184=fast::clamp(l9_1183,l9_1181,l9_1182);
}
else
{
l9_1184=fast::clamp(l9_1183,l9_1182,l9_1181);
}
l9_1183=l9_1184;
l9_1177=l9_1183;
float2 l9_1185=float2(0.0);
l9_1185.x=l9_1168;
l9_1185.y=l9_1177;
float2 l9_1186=float2(0.0);
l9_1186=l9_1158-l9_1185;
float l9_1187=0.0;
float l9_1188=(*sc_set0.UserUniforms).shapeRoundness;
l9_1187=l9_1188;
float l9_1189=0.0;
l9_1189=abs(l9_1187);
float l9_1190=0.0;
l9_1190=fast::min(l9_1189,l9_1168);
float l9_1191=0.0;
l9_1191=fast::min(l9_1190,l9_1177);
float l9_1192=0.0;
l9_1192=fast::max(l9_1191,(*sc_set0.UserUniforms).Port_Input1_N030);
float2 l9_1193=float2(0.0);
l9_1193=l9_1186+float2(l9_1192);
float2 l9_1194=float2(0.0);
l9_1194=fast::max(l9_1193,(*sc_set0.UserUniforms).Port_Input1_N032);
float l9_1195=0.0;
l9_1195=length(l9_1194);
float l9_1196=0.0;
l9_1196=l9_1195/l9_1192;
float l9_1197=0.0;
l9_1197=1.0-l9_1196;
float l9_1198=0.0;
float l9_1199=l9_1197;
float l9_1200=fwidth(l9_1199);
l9_1198=l9_1200;
float l9_1201=0.0;
l9_1201=l9_1140*(*sc_set0.UserUniforms).Port_Input1_N127;
float l9_1202=0.0;
l9_1202=(((l9_1198-(*sc_set0.UserUniforms).Port_RangeMinA_N135)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N135-(*sc_set0.UserUniforms).Port_RangeMinA_N135)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N135-l9_1201))+l9_1201;
float l9_1203=0.0;
l9_1203=l9_1197/l9_1202;
float l9_1204=0.0;
l9_1204=fast::clamp(l9_1203+0.001,(*sc_set0.UserUniforms).Port_Input1_N038+0.001,(*sc_set0.UserUniforms).Port_Input2_N038+0.001)-0.001;
float l9_1205=0.0;
l9_1205=l9_867*l9_1204;
float l9_1206=0.0;
l9_1206=1.0-l9_1203;
float l9_1207=0.0;
l9_1207=fast::clamp(l9_1206+0.001,(*sc_set0.UserUniforms).Port_Input1_N264+0.001,(*sc_set0.UserUniforms).Port_Input2_N264+0.001)-0.001;
float l9_1208=0.0;
float l9_1209=l9_879;
float l9_1210=(*sc_set0.UserUniforms).Port_RangeMinA_N039;
float l9_1211=(*sc_set0.UserUniforms).Port_RangeMaxA_N039;
float l9_1212=l9_1166;
float l9_1213=(*sc_set0.UserUniforms).Port_RangeMaxB_N039;
float l9_1214=(((l9_1209-l9_1210)/((l9_1211-l9_1210)+1e-06))*(l9_1213-l9_1212))+l9_1212;
float l9_1215;
if (l9_1213>l9_1212)
{
l9_1215=fast::clamp(l9_1214,l9_1212,l9_1213);
}
else
{
l9_1215=fast::clamp(l9_1214,l9_1213,l9_1212);
}
l9_1214=l9_1215;
l9_1208=l9_1214;
float l9_1216=0.0;
float l9_1217=l9_987;
float l9_1218=(*sc_set0.UserUniforms).Port_RangeMinA_N042;
float l9_1219=(*sc_set0.UserUniforms).Port_RangeMaxA_N042;
float l9_1220=l9_1166;
float l9_1221=(*sc_set0.UserUniforms).Port_RangeMaxB_N042;
float l9_1222=(((l9_1217-l9_1218)/((l9_1219-l9_1218)+1e-06))*(l9_1221-l9_1220))+l9_1220;
float l9_1223;
if (l9_1221>l9_1220)
{
l9_1223=fast::clamp(l9_1222,l9_1220,l9_1221);
}
else
{
l9_1223=fast::clamp(l9_1222,l9_1221,l9_1220);
}
l9_1222=l9_1223;
l9_1216=l9_1222;
float2 l9_1224=float2(0.0);
l9_1224.x=l9_1208;
l9_1224.y=l9_1216;
float2 l9_1225=float2(0.0);
l9_1225=l9_1158-l9_1224;
float l9_1226=0.0;
float l9_1227=l9_1187;
float l9_1228=(*sc_set0.UserUniforms).Port_RangeMinA_N057;
float l9_1229=(*sc_set0.UserUniforms).Port_RangeMaxA_N057;
float l9_1230=(*sc_set0.UserUniforms).Port_RangeMinB_N057;
float l9_1231=(*sc_set0.UserUniforms).Port_RangeMaxB_N057;
float l9_1232=(((l9_1227-l9_1228)/((l9_1229-l9_1228)+1e-06))*(l9_1231-l9_1230))+l9_1230;
float l9_1233;
if (l9_1231>l9_1230)
{
l9_1233=fast::clamp(l9_1232,l9_1230,l9_1231);
}
else
{
l9_1233=fast::clamp(l9_1232,l9_1231,l9_1230);
}
l9_1232=l9_1233;
l9_1226=l9_1232;
float l9_1234=0.0;
l9_1234=(((l9_1159-(*sc_set0.UserUniforms).Port_RangeMinA_N101)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N101-(*sc_set0.UserUniforms).Port_RangeMinA_N101)+1e-06))*(l9_1226-(*sc_set0.UserUniforms).Port_RangeMinB_N101))+(*sc_set0.UserUniforms).Port_RangeMinB_N101;
float l9_1235=0.0;
float l9_1236=l9_1187;
float l9_1237=(*sc_set0.UserUniforms).Port_RangeMinA_N047;
float l9_1238=(*sc_set0.UserUniforms).Port_RangeMaxA_N047;
float l9_1239=l9_1234;
float l9_1240=(*sc_set0.UserUniforms).Port_RangeMaxB_N047;
float l9_1241=(((l9_1236-l9_1237)/((l9_1238-l9_1237)+1e-06))*(l9_1240-l9_1239))+l9_1239;
float l9_1242;
if (l9_1240>l9_1239)
{
l9_1242=fast::clamp(l9_1241,l9_1239,l9_1240);
}
else
{
l9_1242=fast::clamp(l9_1241,l9_1240,l9_1239);
}
l9_1241=l9_1242;
l9_1235=l9_1241;
float l9_1243=0.0;
l9_1243=abs(l9_1235);
float l9_1244=0.0;
l9_1244=fast::min(l9_1243,l9_1208);
float l9_1245=0.0;
l9_1245=fast::min(l9_1244,l9_1216);
float l9_1246=0.0;
l9_1246=fast::max(l9_1245,(*sc_set0.UserUniforms).Port_Input1_N051);
float2 l9_1247=float2(0.0);
l9_1247=l9_1225+float2(l9_1246);
float2 l9_1248=float2(0.0);
l9_1248=fast::max(l9_1247,(*sc_set0.UserUniforms).Port_Input1_N053);
float l9_1249=0.0;
l9_1249=length(l9_1248);
float l9_1250=0.0;
l9_1250=l9_1249/l9_1246;
float l9_1251=0.0;
l9_1251=1.0-l9_1250;
float l9_1252=0.0;
float l9_1253=l9_1251;
float l9_1254=fwidth(l9_1253);
l9_1252=l9_1254;
float l9_1255=0.0;
l9_1255=(((l9_1252-(*sc_set0.UserUniforms).Port_RangeMinA_N133)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N133-(*sc_set0.UserUniforms).Port_RangeMinA_N133)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N133-l9_1140))+l9_1140;
float l9_1256=0.0;
l9_1256=l9_1251/l9_1255;
float l9_1257=0.0;
l9_1257=fast::clamp(l9_1256+0.001,(*sc_set0.UserUniforms).Port_Input1_N064+0.001,(*sc_set0.UserUniforms).Port_Input2_N064+0.001)-0.001;
float l9_1258=0.0;
l9_1258=l9_1207*l9_1257;
float l9_1259=0.0;
l9_1259=fast::clamp(l9_1258+0.001,(*sc_set0.UserUniforms).Port_Input1_N066+0.001,(*sc_set0.UserUniforms).Port_Input2_N066+0.001)-0.001;
float l9_1260=0.0;
float l9_1261=(*sc_set0.UserUniforms).Port_Value0_N068;
float l9_1262=0.0;
float l9_1263=(*sc_set0.UserUniforms).Port_Default_N068;
float l9_1264;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_1264=l9_1261;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_1265=0.0;
float l9_1266=(*sc_set0.UserUniforms).strokeAlpha;
l9_1265=l9_1266;
l9_1262=l9_1265;
l9_1264=l9_1262;
}
else
{
l9_1264=l9_1263;
}
}
l9_1260=l9_1264;
float l9_1267=0.0;
l9_1267=l9_1259*l9_1260;
float l9_1268=0.0;
l9_1268=l9_1205+l9_1267;
float l9_1269=0.0;
l9_1269=fast::clamp(l9_1268+0.001,(*sc_set0.UserUniforms).Port_Input1_N072+0.001,(*sc_set0.UserUniforms).Port_Input2_N072+0.001)-0.001;
float l9_1270=0.0;
float l9_1271=(*sc_set0.UserUniforms).Port_Value0_N123;
float l9_1272=0.0;
float l9_1273=(*sc_set0.UserUniforms).Port_Default_N123;
float l9_1274;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_1274=l9_1271;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_1275=0.0;
float l9_1276=(*sc_set0.UserUniforms).shadowAlpha;
l9_1275=l9_1276;
l9_1272=l9_1275;
l9_1274=l9_1272;
}
else
{
l9_1274=l9_1273;
}
}
l9_1270=l9_1274;
float l9_1277=0.0;
l9_1277=l9_1269*l9_1270;
float4 l9_1278=float4(0.0);
l9_1278=float4(l9_857.xyz.x,l9_857.xyz.y,l9_857.xyz.z,l9_1278.w);
l9_1278.w=l9_1277;
float l9_1279=0.0;
l9_1279=l9_1278.w;
float l9_1280=0.0;
float l9_1281;
if ((int(Tweak_N124_tmp)!=0))
{
l9_1281=1.001;
}
else
{
l9_1281=0.001;
}
l9_1281-=0.001;
l9_1280=l9_1281;
float l9_1282=0.0;
l9_1282=l9_1279*l9_1280;
float4 l9_1283=float4(0.0);
l9_1283=float4(l9_1278.xyz.x,l9_1278.xyz.y,l9_1278.xyz.z,l9_1283.w);
l9_1283.w=l9_1282;
float l9_1284=0.0;
float l9_1285;
if ((int(innerCutout_tmp)!=0))
{
l9_1285=1.001;
}
else
{
l9_1285=0.001;
}
l9_1285-=0.001;
l9_1284=l9_1285;
float2 l9_1286=float2(0.0);
float2 l9_1287=l9_1096;
float l9_1288=l9_1131;
float2 l9_1289=(*sc_set0.UserUniforms).Port_Center_N113;
float l9_1290=sin(radians(l9_1288));
float l9_1291=cos(radians(l9_1288));
float2 l9_1292=l9_1287-l9_1289;
l9_1292=float2(dot(float2(l9_1291,l9_1290),l9_1292),dot(float2(-l9_1290,l9_1291),l9_1292))+l9_1289;
l9_1286=l9_1292;
float2 l9_1293=float2(0.0);
l9_1293=l9_1286*float2((*sc_set0.UserUniforms).Port_Input1_N089);
float2 l9_1294=float2(0.0);
l9_1294=l9_1293+float2((*sc_set0.UserUniforms).Port_Input1_N090);
float2 l9_1295=float2(0.0);
l9_1295=abs(l9_1294);
float2 l9_1296=float2(0.0);
l9_1296.x=l9_1168;
l9_1296.y=l9_1177;
float2 l9_1297=float2(0.0);
l9_1297=l9_1295-l9_1296;
float l9_1298=0.0;
l9_1298=abs(l9_1187);
float l9_1299=0.0;
l9_1299=fast::min(l9_1298,l9_1168);
float l9_1300=0.0;
l9_1300=fast::min(l9_1299,l9_1177);
float l9_1301=0.0;
l9_1301=fast::max(l9_1300,(*sc_set0.UserUniforms).Port_Input1_N103);
float2 l9_1302=float2(0.0);
l9_1302=l9_1297+float2(l9_1301);
float2 l9_1303=float2(0.0);
l9_1303=fast::max(l9_1302,(*sc_set0.UserUniforms).Port_Input1_N105);
float l9_1304=0.0;
l9_1304=length(l9_1303);
float l9_1305=0.0;
l9_1305=l9_1304/l9_1301;
float l9_1306=0.0;
l9_1306=1.0-l9_1305;
float l9_1307=0.0;
float l9_1308=l9_1306;
float l9_1309=fwidth(l9_1308);
l9_1307=l9_1309;
float l9_1310=0.0;
l9_1310=l9_1306/l9_1307;
float l9_1311=0.0;
l9_1311=fast::clamp(l9_1310+0.001,(*sc_set0.UserUniforms).Port_Input1_N112+0.001,(*sc_set0.UserUniforms).Port_Input2_N112+0.001)-0.001;
float l9_1312=0.0;
l9_1312=l9_1284*l9_1311;
float4 l9_1313=float4(0.0);
l9_1313=mix(l9_1283,float4((*sc_set0.UserUniforms).Port_Input1_N259),float4(l9_1312));
float4 l9_1314=float4(0.0);
float4 l9_1315=float4(0.0);
float4 l9_1316=float4(0.0);
float4 l9_1317=float4(0.0);
float4 l9_1318=(*sc_set0.UserUniforms).Port_Default_N149;
ssGlobals l9_1319=l9_14;
float4 l9_1320;
if (NODE_161_DROPLIST_ITEM_tmp==0)
{
float4 l9_1321=float4(0.0);
float4 l9_1322=(*sc_set0.UserUniforms).shapeColor;
l9_1321=l9_1322;
float4 l9_1323=float4(0.0);
l9_1323=float4(l9_1321.x,l9_1321.y,l9_1321.z,1.0);
l9_1315=l9_1323;
l9_1320=l9_1315;
}
else
{
if (NODE_161_DROPLIST_ITEM_tmp==1)
{
float2 l9_1324=float2(0.0);
l9_1324=l9_1319.Surface_UVCoord0;
float2 l9_1325=float2(0.0);
float2 l9_1326=(*sc_set0.UserUniforms).shapeScale;
l9_1325=l9_1326;
float2 l9_1327=float2(0.0);
float2 l9_1328=(*sc_set0.UserUniforms).shapeOffset;
l9_1327=l9_1328;
float2 l9_1329=float2(0.0);
l9_1329=(l9_1324*l9_1325)+l9_1327;
float4 l9_1330=float4(0.0);
int l9_1331;
if ((int(shapeTextureHasSwappedViews_tmp)!=0))
{
int l9_1332=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1332=0;
}
else
{
l9_1332=in.varStereoViewID;
}
int l9_1333=l9_1332;
l9_1331=1-l9_1333;
}
else
{
int l9_1334=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1334=0;
}
else
{
l9_1334=in.varStereoViewID;
}
int l9_1335=l9_1334;
l9_1331=l9_1335;
}
int l9_1336=l9_1331;
int l9_1337=shapeTextureLayout_tmp;
int l9_1338=l9_1336;
float2 l9_1339=l9_1329;
bool l9_1340=(int(SC_USE_UV_TRANSFORM_shapeTexture_tmp)!=0);
float3x3 l9_1341=(*sc_set0.UserUniforms).shapeTextureTransform;
int2 l9_1342=int2(SC_SOFTWARE_WRAP_MODE_U_shapeTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_shapeTexture_tmp);
bool l9_1343=(int(SC_USE_UV_MIN_MAX_shapeTexture_tmp)!=0);
float4 l9_1344=(*sc_set0.UserUniforms).shapeTextureUvMinMax;
bool l9_1345=(int(SC_USE_CLAMP_TO_BORDER_shapeTexture_tmp)!=0);
float4 l9_1346=(*sc_set0.UserUniforms).shapeTextureBorderColor;
float l9_1347=0.0;
bool l9_1348=l9_1345&&(!l9_1343);
float l9_1349=1.0;
float l9_1350=l9_1339.x;
int l9_1351=l9_1342.x;
if (l9_1351==1)
{
l9_1350=fract(l9_1350);
}
else
{
if (l9_1351==2)
{
float l9_1352=fract(l9_1350);
float l9_1353=l9_1350-l9_1352;
float l9_1354=step(0.25,fract(l9_1353*0.5));
l9_1350=mix(l9_1352,1.0-l9_1352,fast::clamp(l9_1354,0.0,1.0));
}
}
l9_1339.x=l9_1350;
float l9_1355=l9_1339.y;
int l9_1356=l9_1342.y;
if (l9_1356==1)
{
l9_1355=fract(l9_1355);
}
else
{
if (l9_1356==2)
{
float l9_1357=fract(l9_1355);
float l9_1358=l9_1355-l9_1357;
float l9_1359=step(0.25,fract(l9_1358*0.5));
l9_1355=mix(l9_1357,1.0-l9_1357,fast::clamp(l9_1359,0.0,1.0));
}
}
l9_1339.y=l9_1355;
if (l9_1343)
{
bool l9_1360=l9_1345;
bool l9_1361;
if (l9_1360)
{
l9_1361=l9_1342.x==3;
}
else
{
l9_1361=l9_1360;
}
float l9_1362=l9_1339.x;
float l9_1363=l9_1344.x;
float l9_1364=l9_1344.z;
bool l9_1365=l9_1361;
float l9_1366=l9_1349;
float l9_1367=fast::clamp(l9_1362,l9_1363,l9_1364);
float l9_1368=step(abs(l9_1362-l9_1367),9.9999997e-06);
l9_1366*=(l9_1368+((1.0-float(l9_1365))*(1.0-l9_1368)));
l9_1362=l9_1367;
l9_1339.x=l9_1362;
l9_1349=l9_1366;
bool l9_1369=l9_1345;
bool l9_1370;
if (l9_1369)
{
l9_1370=l9_1342.y==3;
}
else
{
l9_1370=l9_1369;
}
float l9_1371=l9_1339.y;
float l9_1372=l9_1344.y;
float l9_1373=l9_1344.w;
bool l9_1374=l9_1370;
float l9_1375=l9_1349;
float l9_1376=fast::clamp(l9_1371,l9_1372,l9_1373);
float l9_1377=step(abs(l9_1371-l9_1376),9.9999997e-06);
l9_1375*=(l9_1377+((1.0-float(l9_1374))*(1.0-l9_1377)));
l9_1371=l9_1376;
l9_1339.y=l9_1371;
l9_1349=l9_1375;
}
float2 l9_1378=l9_1339;
bool l9_1379=l9_1340;
float3x3 l9_1380=l9_1341;
if (l9_1379)
{
l9_1378=float2((l9_1380*float3(l9_1378,1.0)).xy);
}
float2 l9_1381=l9_1378;
l9_1339=l9_1381;
float l9_1382=l9_1339.x;
int l9_1383=l9_1342.x;
bool l9_1384=l9_1348;
float l9_1385=l9_1349;
if ((l9_1383==0)||(l9_1383==3))
{
float l9_1386=l9_1382;
float l9_1387=0.0;
float l9_1388=1.0;
bool l9_1389=l9_1384;
float l9_1390=l9_1385;
float l9_1391=fast::clamp(l9_1386,l9_1387,l9_1388);
float l9_1392=step(abs(l9_1386-l9_1391),9.9999997e-06);
l9_1390*=(l9_1392+((1.0-float(l9_1389))*(1.0-l9_1392)));
l9_1386=l9_1391;
l9_1382=l9_1386;
l9_1385=l9_1390;
}
l9_1339.x=l9_1382;
l9_1349=l9_1385;
float l9_1393=l9_1339.y;
int l9_1394=l9_1342.y;
bool l9_1395=l9_1348;
float l9_1396=l9_1349;
if ((l9_1394==0)||(l9_1394==3))
{
float l9_1397=l9_1393;
float l9_1398=0.0;
float l9_1399=1.0;
bool l9_1400=l9_1395;
float l9_1401=l9_1396;
float l9_1402=fast::clamp(l9_1397,l9_1398,l9_1399);
float l9_1403=step(abs(l9_1397-l9_1402),9.9999997e-06);
l9_1401*=(l9_1403+((1.0-float(l9_1400))*(1.0-l9_1403)));
l9_1397=l9_1402;
l9_1393=l9_1397;
l9_1396=l9_1401;
}
l9_1339.y=l9_1393;
l9_1349=l9_1396;
float2 l9_1404=l9_1339;
int l9_1405=l9_1337;
int l9_1406=l9_1338;
float l9_1407=l9_1347;
float2 l9_1408=l9_1404;
int l9_1409=l9_1405;
int l9_1410=l9_1406;
float3 l9_1411=float3(0.0);
if (l9_1409==0)
{
l9_1411=float3(l9_1408,0.0);
}
else
{
if (l9_1409==1)
{
l9_1411=float3(l9_1408.x,(l9_1408.y*0.5)+(0.5-(float(l9_1410)*0.5)),0.0);
}
else
{
l9_1411=float3(l9_1408,float(l9_1410));
}
}
float3 l9_1412=l9_1411;
float3 l9_1413=l9_1412;
float4 l9_1414=sc_set0.shapeTexture.sample(sc_set0.shapeTextureSmpSC,l9_1413.xy,bias(l9_1407));
float4 l9_1415=l9_1414;
if (l9_1345)
{
l9_1415=mix(l9_1346,l9_1415,float4(l9_1349));
}
float4 l9_1416=l9_1415;
l9_1330=l9_1416;
float4 l9_1417=float4(0.0);
float4 l9_1418=(*sc_set0.UserUniforms).shapeColor;
l9_1417=l9_1418;
float4 l9_1419=float4(0.0);
l9_1419=l9_1330*l9_1417;
l9_1316=l9_1419;
l9_1320=l9_1316;
}
else
{
if (NODE_161_DROPLIST_ITEM_tmp==2)
{
float4 l9_1420=float4(0.0);
float4 l9_1421=float4(0.0);
float4 l9_1422=float4(0.0);
float4 l9_1423=(*sc_set0.UserUniforms).Port_Default_N209;
ssGlobals l9_1424=l9_1319;
float4 l9_1425;
if (int((int(toQuadShapeGrad_tmp)!=0))==0)
{
float4 l9_1426=float4(0.0);
float4 l9_1427=(*sc_set0.UserUniforms).shapeGradColorA;
l9_1426=l9_1427;
float4 l9_1428=float4(0.0);
l9_1428=l9_1426;
float4 l9_1429=float4(0.0);
float4 l9_1430=(*sc_set0.UserUniforms).shapeGradColorB;
l9_1429=l9_1430;
float4 l9_1431=float4(0.0);
l9_1431=l9_1429;
float2 l9_1432=float2(0.0);
l9_1432=l9_1424.Surface_UVCoord0;
float2 l9_1433=float2(0.0);
l9_1433=(((l9_1432-float2((*sc_set0.UserUniforms).Port_RangeMinA_N175))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N175-(*sc_set0.UserUniforms).Port_RangeMinA_N175)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N175-(*sc_set0.UserUniforms).Port_RangeMinB_N175))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N175);
float2 l9_1434=float2(0.0);
float2 l9_1435=(*sc_set0.UserUniforms).shapeScaleGrad;
l9_1434=l9_1435;
float2 l9_1436=float2(0.0);
l9_1436=l9_1434;
float2 l9_1437=float2(0.0);
l9_1437=((l9_1433-(*sc_set0.UserUniforms).Port_Center_N177)*l9_1436)+(*sc_set0.UserUniforms).Port_Center_N177;
float2 l9_1438=float2(0.0);
float2 l9_1439=(*sc_set0.UserUniforms).shapeGradPointA;
l9_1438=l9_1439;
float2 l9_1440=float2(0.0);
l9_1440=l9_1438;
float2 l9_1441=float2(0.0);
l9_1441=l9_1437-l9_1440;
float2 l9_1442=float2(0.0);
float2 l9_1443=(*sc_set0.UserUniforms).shapeGradPointB;
l9_1442=l9_1443;
float2 l9_1444=float2(0.0);
l9_1444=l9_1442;
float2 l9_1445=float2(0.0);
l9_1445=l9_1444-l9_1440;
float l9_1446=0.0;
l9_1446=dot(l9_1441,l9_1445);
float l9_1447=0.0;
l9_1447=dot(l9_1445,l9_1445);
float l9_1448=0.0;
l9_1448=l9_1446/l9_1447;
float l9_1449=0.0;
l9_1449=fast::clamp(l9_1448+0.001,(*sc_set0.UserUniforms).Port_Input1_N185+0.001,(*sc_set0.UserUniforms).Port_Input2_N185+0.001)-0.001;
float l9_1450=0.0;
l9_1450=smoothstep((*sc_set0.UserUniforms).Port_Input0_N186,(*sc_set0.UserUniforms).Port_Input1_N186,l9_1449);
float4 l9_1451=float4(0.0);
l9_1451=mix(l9_1428,l9_1431,float4(l9_1450));
float4 l9_1452=float4(0.0);
l9_1452=l9_1451;
l9_1421=l9_1452;
l9_1425=l9_1421;
}
else
{
if (int((int(toQuadShapeGrad_tmp)!=0))==1)
{
float4 l9_1453=float4(0.0);
float4 l9_1454=(*sc_set0.UserUniforms).shapeGradColorA;
l9_1453=l9_1454;
float4 l9_1455=float4(0.0);
l9_1455=l9_1453;
float4 l9_1456=float4(0.0);
float4 l9_1457=(*sc_set0.UserUniforms).shapeGradColorB;
l9_1456=l9_1457;
float4 l9_1458=float4(0.0);
l9_1458=l9_1456;
float2 l9_1459=float2(0.0);
l9_1459=l9_1424.Surface_UVCoord0;
float2 l9_1460=float2(0.0);
l9_1460=(((l9_1459-float2((*sc_set0.UserUniforms).Port_RangeMinA_N198))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N198-(*sc_set0.UserUniforms).Port_RangeMinA_N198)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N198-(*sc_set0.UserUniforms).Port_RangeMinB_N198))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N198);
float2 l9_1461=float2(0.0);
float2 l9_1462=(*sc_set0.UserUniforms).shapeScaleGrad;
l9_1461=l9_1462;
float2 l9_1463=float2(0.0);
l9_1463=l9_1461;
float2 l9_1464=float2(0.0);
float2 l9_1465=(*sc_set0.UserUniforms).shapeQuadOffset;
l9_1464=l9_1465;
float2 l9_1466=float2(0.0);
l9_1466=l9_1464;
float2 l9_1467=float2(0.0);
l9_1467=(l9_1460*l9_1463)+l9_1466;
float l9_1468=0.0;
float l9_1469=0.0;
float2 l9_1470=l9_1467;
float l9_1471=l9_1470.x;
float l9_1472=l9_1470.y;
l9_1468=l9_1471;
l9_1469=l9_1472;
float4 l9_1473=float4(0.0);
l9_1473=mix(l9_1455,l9_1458,float4(l9_1468));
float4 l9_1474=float4(0.0);
float4 l9_1475=(*sc_set0.UserUniforms).shapeGradColorC;
l9_1474=l9_1475;
float4 l9_1476=float4(0.0);
l9_1476=l9_1474;
float4 l9_1477=float4(0.0);
float4 l9_1478=(*sc_set0.UserUniforms).shapeGradColorD;
l9_1477=l9_1478;
float4 l9_1479=float4(0.0);
l9_1479=l9_1477;
float4 l9_1480=float4(0.0);
l9_1480=mix(l9_1476,l9_1479,float4(l9_1468));
float4 l9_1481=float4(0.0);
l9_1481=mix(l9_1473,l9_1480,float4(l9_1469));
float4 l9_1482=float4(0.0);
l9_1482=l9_1481;
l9_1422=l9_1482;
l9_1425=l9_1422;
}
else
{
l9_1425=l9_1423;
}
}
l9_1420=l9_1425;
l9_1317=l9_1420;
l9_1320=l9_1317;
}
else
{
l9_1320=l9_1318;
}
}
}
l9_1314=l9_1320;
float l9_1483=0.0;
l9_1483=fast::clamp(l9_1310+0.001,(*sc_set0.UserUniforms).Port_Input1_N265+0.001,(*sc_set0.UserUniforms).Port_Input2_N265+0.001)-0.001;
float l9_1484=0.0;
l9_1484=1.0-l9_1483;
float2 l9_1485=float2(0.0);
l9_1485.x=l9_1208;
l9_1485.y=l9_1216;
float2 l9_1486=float2(0.0);
l9_1486=l9_1295-l9_1485;
float l9_1487=0.0;
l9_1487=abs(l9_1235);
float l9_1488=0.0;
l9_1488=fast::min(l9_1487,l9_1208);
float l9_1489=0.0;
l9_1489=fast::min(l9_1488,l9_1216);
float l9_1490=0.0;
l9_1490=fast::max(l9_1489,(*sc_set0.UserUniforms).Port_Input1_N098);
float2 l9_1491=float2(0.0);
l9_1491=l9_1486+float2(l9_1490);
float2 l9_1492=float2(0.0);
l9_1492=fast::max(l9_1491,(*sc_set0.UserUniforms).Port_Input1_N115);
float l9_1493=0.0;
l9_1493=length(l9_1492);
float l9_1494=0.0;
l9_1494=l9_1493/l9_1490;
float l9_1495=0.0;
l9_1495=1.0-l9_1494;
float l9_1496=0.0;
float l9_1497=l9_1495;
float l9_1498=fwidth(l9_1497);
l9_1496=l9_1498;
float l9_1499=0.0;
l9_1499=l9_1495/l9_1496;
float l9_1500=0.0;
l9_1500=fast::clamp(l9_1499+0.001,(*sc_set0.UserUniforms).Port_Input1_N142+0.001,(*sc_set0.UserUniforms).Port_Input2_N142+0.001)-0.001;
float l9_1501=0.0;
l9_1501=l9_1484*l9_1500;
float l9_1502=0.0;
l9_1502=fast::clamp(l9_1501+0.001,(*sc_set0.UserUniforms).Port_Input1_N144+0.001,(*sc_set0.UserUniforms).Port_Input2_N144+0.001)-0.001;
float l9_1503=0.0;
l9_1503=l9_1502*l9_1260;
float l9_1504=0.0;
l9_1504=l9_1311*l9_867;
float l9_1505=0.0;
l9_1505=l9_1503+l9_1504;
float l9_1506=0.0;
l9_1506=fast::max(l9_1503,l9_1504);
float l9_1507=0.0;
l9_1507=l9_1505-l9_1506;
float l9_1508=0.0;
l9_1508=l9_1507+l9_1504;
float l9_1509=0.0;
float l9_1510;
if ((int(shapeColorInvert_tmp)!=0))
{
l9_1510=1.001;
}
else
{
l9_1510=0.001;
}
l9_1510-=0.001;
l9_1509=l9_1510;
float l9_1511=0.0;
l9_1511=1.0-l9_1509;
float l9_1512=0.0;
float l9_1513=l9_1508;
float l9_1514=(*sc_set0.UserUniforms).Port_RangeMinA_N171;
float l9_1515=(*sc_set0.UserUniforms).Port_RangeMaxA_N171;
float l9_1516=l9_1511;
float l9_1517=l9_1509;
float l9_1518=(((l9_1513-l9_1514)/((l9_1515-l9_1514)+1e-06))*(l9_1517-l9_1516))+l9_1516;
float l9_1519;
if (l9_1517>l9_1516)
{
l9_1519=fast::clamp(l9_1518,l9_1516,l9_1517);
}
else
{
l9_1519=fast::clamp(l9_1518,l9_1517,l9_1516);
}
l9_1518=l9_1519;
l9_1512=l9_1518;
float4 l9_1520=float4(0.0);
l9_1520=mix(l9_1313,l9_1314,float4(l9_1512));
float4 l9_1521=float4(0.0);
float4 l9_1522=(*sc_set0.UserUniforms).Port_Value0_N325;
float4 l9_1523=float4(0.0);
float4 l9_1524=(*sc_set0.UserUniforms).Port_Default_N325;
ssGlobals l9_1525=l9_14;
float4 l9_1526;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_1526=l9_1522;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float4 l9_1527=float4(0.0);
float4 l9_1528=float4(0.0);
float4 l9_1529=float4(0.0);
float4 l9_1530=float4(0.0);
float4 l9_1531=(*sc_set0.UserUniforms).Port_Default_N324;
ssGlobals l9_1532=l9_1525;
float4 l9_1533;
if (NODE_164_DROPLIST_ITEM_tmp==0)
{
float4 l9_1534=float4(0.0);
float4 l9_1535=(*sc_set0.UserUniforms).strokeColor;
l9_1534=l9_1535;
l9_1528=l9_1534;
l9_1533=l9_1528;
}
else
{
if (NODE_164_DROPLIST_ITEM_tmp==1)
{
float2 l9_1536=float2(0.0);
l9_1536=l9_1532.Surface_UVCoord0;
float2 l9_1537=float2(0.0);
float2 l9_1538=(*sc_set0.UserUniforms).strokeScale;
l9_1537=l9_1538;
float2 l9_1539=float2(0.0);
float2 l9_1540=(*sc_set0.UserUniforms).strokeOffset;
l9_1539=l9_1540;
float2 l9_1541=float2(0.0);
l9_1541=(l9_1536*l9_1537)+l9_1539;
float4 l9_1542=float4(0.0);
int l9_1543;
if ((int(strokeTextureHasSwappedViews_tmp)!=0))
{
int l9_1544=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1544=0;
}
else
{
l9_1544=in.varStereoViewID;
}
int l9_1545=l9_1544;
l9_1543=1-l9_1545;
}
else
{
int l9_1546=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1546=0;
}
else
{
l9_1546=in.varStereoViewID;
}
int l9_1547=l9_1546;
l9_1543=l9_1547;
}
int l9_1548=l9_1543;
int l9_1549=strokeTextureLayout_tmp;
int l9_1550=l9_1548;
float2 l9_1551=l9_1541;
bool l9_1552=(int(SC_USE_UV_TRANSFORM_strokeTexture_tmp)!=0);
float3x3 l9_1553=(*sc_set0.UserUniforms).strokeTextureTransform;
int2 l9_1554=int2(SC_SOFTWARE_WRAP_MODE_U_strokeTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_strokeTexture_tmp);
bool l9_1555=(int(SC_USE_UV_MIN_MAX_strokeTexture_tmp)!=0);
float4 l9_1556=(*sc_set0.UserUniforms).strokeTextureUvMinMax;
bool l9_1557=(int(SC_USE_CLAMP_TO_BORDER_strokeTexture_tmp)!=0);
float4 l9_1558=(*sc_set0.UserUniforms).strokeTextureBorderColor;
float l9_1559=0.0;
bool l9_1560=l9_1557&&(!l9_1555);
float l9_1561=1.0;
float l9_1562=l9_1551.x;
int l9_1563=l9_1554.x;
if (l9_1563==1)
{
l9_1562=fract(l9_1562);
}
else
{
if (l9_1563==2)
{
float l9_1564=fract(l9_1562);
float l9_1565=l9_1562-l9_1564;
float l9_1566=step(0.25,fract(l9_1565*0.5));
l9_1562=mix(l9_1564,1.0-l9_1564,fast::clamp(l9_1566,0.0,1.0));
}
}
l9_1551.x=l9_1562;
float l9_1567=l9_1551.y;
int l9_1568=l9_1554.y;
if (l9_1568==1)
{
l9_1567=fract(l9_1567);
}
else
{
if (l9_1568==2)
{
float l9_1569=fract(l9_1567);
float l9_1570=l9_1567-l9_1569;
float l9_1571=step(0.25,fract(l9_1570*0.5));
l9_1567=mix(l9_1569,1.0-l9_1569,fast::clamp(l9_1571,0.0,1.0));
}
}
l9_1551.y=l9_1567;
if (l9_1555)
{
bool l9_1572=l9_1557;
bool l9_1573;
if (l9_1572)
{
l9_1573=l9_1554.x==3;
}
else
{
l9_1573=l9_1572;
}
float l9_1574=l9_1551.x;
float l9_1575=l9_1556.x;
float l9_1576=l9_1556.z;
bool l9_1577=l9_1573;
float l9_1578=l9_1561;
float l9_1579=fast::clamp(l9_1574,l9_1575,l9_1576);
float l9_1580=step(abs(l9_1574-l9_1579),9.9999997e-06);
l9_1578*=(l9_1580+((1.0-float(l9_1577))*(1.0-l9_1580)));
l9_1574=l9_1579;
l9_1551.x=l9_1574;
l9_1561=l9_1578;
bool l9_1581=l9_1557;
bool l9_1582;
if (l9_1581)
{
l9_1582=l9_1554.y==3;
}
else
{
l9_1582=l9_1581;
}
float l9_1583=l9_1551.y;
float l9_1584=l9_1556.y;
float l9_1585=l9_1556.w;
bool l9_1586=l9_1582;
float l9_1587=l9_1561;
float l9_1588=fast::clamp(l9_1583,l9_1584,l9_1585);
float l9_1589=step(abs(l9_1583-l9_1588),9.9999997e-06);
l9_1587*=(l9_1589+((1.0-float(l9_1586))*(1.0-l9_1589)));
l9_1583=l9_1588;
l9_1551.y=l9_1583;
l9_1561=l9_1587;
}
float2 l9_1590=l9_1551;
bool l9_1591=l9_1552;
float3x3 l9_1592=l9_1553;
if (l9_1591)
{
l9_1590=float2((l9_1592*float3(l9_1590,1.0)).xy);
}
float2 l9_1593=l9_1590;
l9_1551=l9_1593;
float l9_1594=l9_1551.x;
int l9_1595=l9_1554.x;
bool l9_1596=l9_1560;
float l9_1597=l9_1561;
if ((l9_1595==0)||(l9_1595==3))
{
float l9_1598=l9_1594;
float l9_1599=0.0;
float l9_1600=1.0;
bool l9_1601=l9_1596;
float l9_1602=l9_1597;
float l9_1603=fast::clamp(l9_1598,l9_1599,l9_1600);
float l9_1604=step(abs(l9_1598-l9_1603),9.9999997e-06);
l9_1602*=(l9_1604+((1.0-float(l9_1601))*(1.0-l9_1604)));
l9_1598=l9_1603;
l9_1594=l9_1598;
l9_1597=l9_1602;
}
l9_1551.x=l9_1594;
l9_1561=l9_1597;
float l9_1605=l9_1551.y;
int l9_1606=l9_1554.y;
bool l9_1607=l9_1560;
float l9_1608=l9_1561;
if ((l9_1606==0)||(l9_1606==3))
{
float l9_1609=l9_1605;
float l9_1610=0.0;
float l9_1611=1.0;
bool l9_1612=l9_1607;
float l9_1613=l9_1608;
float l9_1614=fast::clamp(l9_1609,l9_1610,l9_1611);
float l9_1615=step(abs(l9_1609-l9_1614),9.9999997e-06);
l9_1613*=(l9_1615+((1.0-float(l9_1612))*(1.0-l9_1615)));
l9_1609=l9_1614;
l9_1605=l9_1609;
l9_1608=l9_1613;
}
l9_1551.y=l9_1605;
l9_1561=l9_1608;
float2 l9_1616=l9_1551;
int l9_1617=l9_1549;
int l9_1618=l9_1550;
float l9_1619=l9_1559;
float2 l9_1620=l9_1616;
int l9_1621=l9_1617;
int l9_1622=l9_1618;
float3 l9_1623=float3(0.0);
if (l9_1621==0)
{
l9_1623=float3(l9_1620,0.0);
}
else
{
if (l9_1621==1)
{
l9_1623=float3(l9_1620.x,(l9_1620.y*0.5)+(0.5-(float(l9_1622)*0.5)),0.0);
}
else
{
l9_1623=float3(l9_1620,float(l9_1622));
}
}
float3 l9_1624=l9_1623;
float3 l9_1625=l9_1624;
float4 l9_1626=sc_set0.strokeTexture.sample(sc_set0.strokeTextureSmpSC,l9_1625.xy,bias(l9_1619));
float4 l9_1627=l9_1626;
if (l9_1557)
{
l9_1627=mix(l9_1558,l9_1627,float4(l9_1561));
}
float4 l9_1628=l9_1627;
l9_1542=l9_1628;
float4 l9_1629=float4(0.0);
float4 l9_1630=(*sc_set0.UserUniforms).strokeColor;
l9_1629=l9_1630;
float4 l9_1631=float4(0.0);
l9_1631=l9_1542*l9_1629;
l9_1529=l9_1631;
l9_1533=l9_1529;
}
else
{
if (NODE_164_DROPLIST_ITEM_tmp==2)
{
float4 l9_1632=float4(0.0);
float4 l9_1633=float4(0.0);
float4 l9_1634=float4(0.0);
float4 l9_1635=(*sc_set0.UserUniforms).Port_Default_N323;
ssGlobals l9_1636=l9_1532;
float4 l9_1637;
if (int((int(toQuadStrokeGrad_tmp)!=0))==0)
{
float4 l9_1638=float4(0.0);
float4 l9_1639=(*sc_set0.UserUniforms).shapeGradColorA2;
l9_1638=l9_1639;
float4 l9_1640=float4(0.0);
l9_1640=l9_1638;
float4 l9_1641=float4(0.0);
float4 l9_1642=(*sc_set0.UserUniforms).shapeGradColorB2;
l9_1641=l9_1642;
float4 l9_1643=float4(0.0);
l9_1643=l9_1641;
float2 l9_1644=float2(0.0);
l9_1644=l9_1636.Surface_UVCoord0;
float2 l9_1645=float2(0.0);
l9_1645=(((l9_1644-float2((*sc_set0.UserUniforms).Port_RangeMinA_N231))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N231-(*sc_set0.UserUniforms).Port_RangeMinA_N231)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N231-(*sc_set0.UserUniforms).Port_RangeMinB_N231))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N231);
float2 l9_1646=float2(0.0);
float2 l9_1647=(*sc_set0.UserUniforms).shapeScaleGrad2;
l9_1646=l9_1647;
float2 l9_1648=float2(0.0);
l9_1648=l9_1646;
float2 l9_1649=float2(0.0);
l9_1649=((l9_1645-(*sc_set0.UserUniforms).Port_Center_N233)*l9_1648)+(*sc_set0.UserUniforms).Port_Center_N233;
float2 l9_1650=float2(0.0);
float2 l9_1651=(*sc_set0.UserUniforms).shapeGradPointA2;
l9_1650=l9_1651;
float2 l9_1652=float2(0.0);
l9_1652=l9_1650;
float2 l9_1653=float2(0.0);
l9_1653=l9_1649-l9_1652;
float2 l9_1654=float2(0.0);
float2 l9_1655=(*sc_set0.UserUniforms).shapeGradPointB2;
l9_1654=l9_1655;
float2 l9_1656=float2(0.0);
l9_1656=l9_1654;
float2 l9_1657=float2(0.0);
l9_1657=l9_1656-l9_1652;
float l9_1658=0.0;
l9_1658=dot(l9_1653,l9_1657);
float l9_1659=0.0;
l9_1659=dot(l9_1657,l9_1657);
float l9_1660=0.0;
l9_1660=l9_1658/l9_1659;
float l9_1661=0.0;
l9_1661=fast::clamp(l9_1660+0.001,(*sc_set0.UserUniforms).Port_Input1_N241+0.001,(*sc_set0.UserUniforms).Port_Input2_N241+0.001)-0.001;
float l9_1662=0.0;
l9_1662=smoothstep((*sc_set0.UserUniforms).Port_Input0_N242,(*sc_set0.UserUniforms).Port_Input1_N242,l9_1661);
float4 l9_1663=float4(0.0);
l9_1663=mix(l9_1640,l9_1643,float4(l9_1662));
float4 l9_1664=float4(0.0);
l9_1664=l9_1663;
l9_1633=l9_1664;
l9_1637=l9_1633;
}
else
{
if (int((int(toQuadStrokeGrad_tmp)!=0))==1)
{
float4 l9_1665=float4(0.0);
float4 l9_1666=(*sc_set0.UserUniforms).shapeGradColorA2;
l9_1665=l9_1666;
float4 l9_1667=float4(0.0);
l9_1667=l9_1665;
float4 l9_1668=float4(0.0);
float4 l9_1669=(*sc_set0.UserUniforms).shapeGradColorB2;
l9_1668=l9_1669;
float4 l9_1670=float4(0.0);
l9_1670=l9_1668;
float2 l9_1671=float2(0.0);
l9_1671=l9_1636.Surface_UVCoord0;
float2 l9_1672=float2(0.0);
l9_1672=(((l9_1671-float2((*sc_set0.UserUniforms).Port_RangeMinA_N252))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N252-(*sc_set0.UserUniforms).Port_RangeMinA_N252)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N252-(*sc_set0.UserUniforms).Port_RangeMinB_N252))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N252);
float2 l9_1673=float2(0.0);
float2 l9_1674=(*sc_set0.UserUniforms).shapeScaleGrad2;
l9_1673=l9_1674;
float2 l9_1675=float2(0.0);
l9_1675=l9_1673;
float2 l9_1676=float2(0.0);
float2 l9_1677=(*sc_set0.UserUniforms).shapeQuadOffset2;
l9_1676=l9_1677;
float2 l9_1678=float2(0.0);
l9_1678=l9_1676;
float2 l9_1679=float2(0.0);
l9_1679=(l9_1672*l9_1675)+l9_1678;
float l9_1680=0.0;
float l9_1681=0.0;
float2 l9_1682=l9_1679;
float l9_1683=l9_1682.x;
float l9_1684=l9_1682.y;
l9_1680=l9_1683;
l9_1681=l9_1684;
float4 l9_1685=float4(0.0);
l9_1685=mix(l9_1667,l9_1670,float4(l9_1680));
float4 l9_1686=float4(0.0);
float4 l9_1687=(*sc_set0.UserUniforms).shapeGradColorC2;
l9_1686=l9_1687;
float4 l9_1688=float4(0.0);
l9_1688=l9_1686;
float4 l9_1689=float4(0.0);
float4 l9_1690=(*sc_set0.UserUniforms).shapeGradColorD2;
l9_1689=l9_1690;
float4 l9_1691=float4(0.0);
l9_1691=l9_1689;
float4 l9_1692=float4(0.0);
l9_1692=mix(l9_1688,l9_1691,float4(l9_1680));
float4 l9_1693=float4(0.0);
l9_1693=mix(l9_1685,l9_1692,float4(l9_1681));
float4 l9_1694=float4(0.0);
l9_1694=l9_1693;
l9_1634=l9_1694;
l9_1637=l9_1634;
}
else
{
l9_1637=l9_1635;
}
}
l9_1632=l9_1637;
l9_1530=l9_1632;
l9_1533=l9_1530;
}
else
{
l9_1533=l9_1531;
}
}
}
l9_1527=l9_1533;
l9_1523=l9_1527;
l9_1526=l9_1523;
}
else
{
l9_1526=l9_1524;
}
}
l9_1521=l9_1526;
float4 l9_1695=float4(0.0);
l9_1695=mix(l9_1520,l9_1521,float4(l9_1503));
float l9_1696=0.0;
float l9_1697=0.0;
float l9_1698=0.0;
float l9_1699=0.0;
float4 l9_1700=l9_1695;
float l9_1701=l9_1700.x;
float l9_1702=l9_1700.y;
float l9_1703=l9_1700.z;
float l9_1704=l9_1700.w;
l9_1696=l9_1701;
l9_1697=l9_1702;
l9_1698=l9_1703;
l9_1699=l9_1704;
float l9_1705=0.0;
l9_1705=l9_1699*(*sc_set0.UserUniforms).Port_Input1_N335;
float4 l9_1706=float4(0.0);
l9_1706.x=l9_1696;
l9_1706.y=l9_1697;
l9_1706.z=l9_1698;
l9_1706.w=l9_1705;
l9_13=l9_1706;
l9_17=l9_13;
}
l9_10=l9_17;
param_1=l9_10;
param_3=param_1;
}
else
{
float4 l9_1707=float4(0.0);
float l9_1708=0.0;
float4 l9_1709=float4(0.0);
float4 l9_1710=float4(0.0);
ssGlobals l9_1711=param_4;
float l9_1712=0.0;
float l9_1713=float((*sc_set0.UserUniforms).Hover!=0);
l9_1712=l9_1713;
l9_1708=l9_1712;
float4 l9_1714;
if ((l9_1708*1.0)!=0.0)
{
float4 l9_1715=float4(0.0);
float4 l9_1716=float4(0.0);
float4 l9_1717=float4(0.0);
float4 l9_1718=(*sc_set0.UserUniforms).Port_Default_N126;
float4 l9_1719;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
float l9_1720=0.0;
float l9_1721;
if ((int(Tweak_N124_tmp)!=0))
{
l9_1721=1.001;
}
else
{
l9_1721=0.001;
}
l9_1721-=0.001;
l9_1720=l9_1721;
float l9_1722=0.0;
l9_1722=(((l9_1720-(*sc_set0.UserUniforms).Port_RangeMinA_N136)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N136-(*sc_set0.UserUniforms).Port_RangeMinA_N136)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N136-(*sc_set0.UserUniforms).Port_RangeMinB_N136))+(*sc_set0.UserUniforms).Port_RangeMinB_N136;
l9_1716=float4(l9_1722);
l9_1719=l9_1716;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float4 l9_1723=float4(0.0);
float4 l9_1724=(*sc_set0.UserUniforms).shadowColor;
l9_1723=l9_1724;
l9_1717=l9_1723;
l9_1719=l9_1717;
}
else
{
l9_1719=l9_1718;
}
}
l9_1715=l9_1719;
float l9_1725=0.0;
float l9_1726=(*sc_set0.UserUniforms).shapeAlpha;
l9_1725=l9_1726;
float2 l9_1727=float2(0.0);
l9_1727=l9_1711.Surface_UVCoord0;
float4 l9_1728=float4(0.0);
float4 l9_1729=(*sc_set0.UserUniforms).Port_Value0_N154;
float4 l9_1730=float4(1.0);
float4 l9_1731=(*sc_set0.UserUniforms).Port_Default_N154;
float4 l9_1732;
if (int((int(shapeAspectFix_tmp)!=0))==0)
{
l9_1732=l9_1729;
}
else
{
if (int((int(shapeAspectFix_tmp)!=0))==1)
{
float l9_1733=0.0;
l9_1733=(*sc_set0.UserUniforms).sc_Camera.aspect;
float l9_1734=0.0;
l9_1734=1.0/l9_1733;
float2 l9_1735=float2(0.0);
l9_1735.x=(*sc_set0.UserUniforms).Port_Value1_N157;
l9_1735.y=l9_1734;
l9_1730=float4(l9_1735,0.0,0.0);
l9_1732=l9_1730;
}
else
{
l9_1732=l9_1731;
}
}
l9_1728=l9_1732;
float2 l9_1736=float2(0.0);
l9_1736=(l9_1727*l9_1728.xy)+(*sc_set0.UserUniforms).Port_Input2_N148;
float l9_1737=0.0;
float l9_1738=(*sc_set0.UserUniforms).shapeWidthX;
l9_1737=l9_1738;
float l9_1739=0.0;
l9_1739=l9_1737;
float l9_1740=0.0;
float l9_1741=0.0;
float l9_1742=(*sc_set0.UserUniforms).Port_Value0_N287;
float l9_1743=0.0;
float l9_1744=(*sc_set0.UserUniforms).Port_Default_N287;
float l9_1745=0.0;
float l9_1746=float((*sc_set0.UserUniforms).xRightPin!=0);
l9_1745=l9_1746;
float l9_1747=0.0;
l9_1747=l9_1745;
l9_1741=l9_1747;
l9_1741=floor(l9_1741);
float l9_1748;
if (l9_1741==0.0)
{
l9_1748=l9_1742;
}
else
{
if (l9_1741==1.0)
{
float l9_1749=0.0;
float l9_1750=0.0;
float l9_1751=0.0;
float l9_1752=(*sc_set0.UserUniforms).Port_Default_N294;
float l9_1753;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_1754=0.0;
float l9_1755=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_1756=l9_1755+0.001;
l9_1756-=0.001;
l9_1754=l9_1756;
l9_1750=l9_1754;
l9_1753=l9_1750;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_1757=0.0;
float l9_1758=(*sc_set0.UserUniforms).strokeThickness;
l9_1757=l9_1758;
float l9_1759=0.0;
l9_1759=l9_1757;
float l9_1760=0.0;
float l9_1761=l9_1759;
float l9_1762=(*sc_set0.UserUniforms).Port_RangeMinA_N276;
float l9_1763=(*sc_set0.UserUniforms).Port_RangeMaxA_N276;
float l9_1764=(*sc_set0.UserUniforms).Port_RangeMinB_N276;
float l9_1765=(*sc_set0.UserUniforms).Port_RangeMaxB_N276;
float l9_1766=(((l9_1761-l9_1762)/((l9_1763-l9_1762)+1e-06))*(l9_1765-l9_1764))+l9_1764;
float l9_1767;
if (l9_1765>l9_1764)
{
l9_1767=fast::clamp(l9_1766,l9_1764,l9_1765);
}
else
{
l9_1767=fast::clamp(l9_1766,l9_1765,l9_1764);
}
l9_1766=l9_1767;
l9_1760=l9_1766;
l9_1751=l9_1760;
l9_1753=l9_1751;
}
else
{
l9_1753=l9_1752;
}
}
l9_1749=l9_1753;
l9_1743=l9_1749;
l9_1748=l9_1743;
}
else
{
l9_1748=l9_1744;
}
}
l9_1740=l9_1748;
float l9_1768=0.0;
float l9_1769=0.0;
float l9_1770=(*sc_set0.UserUniforms).Port_Value0_N281;
float l9_1771=0.0;
float l9_1772=(*sc_set0.UserUniforms).Port_Default_N281;
float l9_1773=0.0;
float l9_1774=float((*sc_set0.UserUniforms).xLeftPin!=0);
l9_1773=l9_1774;
float l9_1775=0.0;
l9_1775=l9_1773;
l9_1769=l9_1775;
l9_1769=floor(l9_1769);
float l9_1776;
if (l9_1769==0.0)
{
l9_1776=l9_1770;
}
else
{
if (l9_1769==1.0)
{
float l9_1777=0.0;
float l9_1778=0.0;
float l9_1779=0.0;
float l9_1780=(*sc_set0.UserUniforms).Port_Default_N296;
float l9_1781;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_1782=0.0;
float l9_1783=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_1784=l9_1783+0.001;
l9_1784-=0.001;
l9_1782=l9_1784;
l9_1778=l9_1782;
l9_1781=l9_1778;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_1785=0.0;
float l9_1786=(*sc_set0.UserUniforms).strokeThickness;
l9_1785=l9_1786;
float l9_1787=0.0;
l9_1787=l9_1785;
float l9_1788=0.0;
float l9_1789=l9_1787;
float l9_1790=(*sc_set0.UserUniforms).Port_RangeMinA_N295;
float l9_1791=(*sc_set0.UserUniforms).Port_RangeMaxA_N295;
float l9_1792=(*sc_set0.UserUniforms).Port_RangeMinB_N295;
float l9_1793=(*sc_set0.UserUniforms).Port_RangeMaxB_N295;
float l9_1794=(((l9_1789-l9_1790)/((l9_1791-l9_1790)+1e-06))*(l9_1793-l9_1792))+l9_1792;
float l9_1795;
if (l9_1793>l9_1792)
{
l9_1795=fast::clamp(l9_1794,l9_1792,l9_1793);
}
else
{
l9_1795=fast::clamp(l9_1794,l9_1793,l9_1792);
}
l9_1794=l9_1795;
l9_1788=l9_1794;
l9_1779=l9_1788;
l9_1781=l9_1779;
}
else
{
l9_1781=l9_1780;
}
}
l9_1777=l9_1781;
l9_1771=l9_1777;
l9_1776=l9_1771;
}
else
{
l9_1776=l9_1772;
}
}
l9_1768=l9_1776;
float l9_1796=0.0;
float l9_1797=l9_1739;
float l9_1798=(*sc_set0.UserUniforms).Port_RangeMinA_N268;
float l9_1799=(*sc_set0.UserUniforms).Port_RangeMaxA_N268;
float l9_1800=l9_1740;
float l9_1801=l9_1768;
float l9_1802=(((l9_1797-l9_1798)/((l9_1799-l9_1798)+1e-06))*(l9_1801-l9_1800))+l9_1800;
float l9_1803;
if (l9_1801>l9_1800)
{
l9_1803=fast::clamp(l9_1802,l9_1800,l9_1801);
}
else
{
l9_1803=fast::clamp(l9_1802,l9_1801,l9_1800);
}
l9_1802=l9_1803;
l9_1796=l9_1802;
float l9_1804=0.0;
float l9_1805=(*sc_set0.UserUniforms).xOffset;
l9_1804=l9_1805;
float l9_1806=0.0;
l9_1806=l9_1804;
float l9_1807=0.0;
float l9_1808=0.0;
float l9_1809=(*sc_set0.UserUniforms).Port_Value0_N282;
float l9_1810=(*sc_set0.UserUniforms).Port_Value1_N282;
float l9_1811=(*sc_set0.UserUniforms).Port_Default_N282;
float l9_1812=0.0;
float l9_1813=float((*sc_set0.UserUniforms).xLeftPin!=0);
l9_1812=l9_1813;
float l9_1814=0.0;
l9_1814=l9_1812;
l9_1808=l9_1814;
l9_1808=floor(l9_1808);
float l9_1815;
if (l9_1808==0.0)
{
l9_1815=l9_1809;
}
else
{
if (l9_1808==1.0)
{
l9_1815=l9_1810;
}
else
{
l9_1815=l9_1811;
}
}
l9_1807=l9_1815;
float l9_1816=0.0;
l9_1816=l9_1806+l9_1807;
float l9_1817=0.0;
l9_1817=1.0-l9_1816;
float l9_1818=0.0;
float l9_1819=(*sc_set0.UserUniforms).Port_Value0_N308;
float l9_1820=0.0;
float l9_1821=(*sc_set0.UserUniforms).Port_Default_N308;
float l9_1822;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_1822=l9_1819;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_1823=0.0;
float l9_1824=0.0;
float l9_1825=(*sc_set0.UserUniforms).Port_Value0_N304;
float l9_1826=0.0;
float l9_1827=(*sc_set0.UserUniforms).Port_Default_N304;
float l9_1828=0.0;
float l9_1829=float((*sc_set0.UserUniforms).xLeftPin!=0);
l9_1828=l9_1829;
float l9_1830=0.0;
l9_1830=l9_1828;
l9_1824=l9_1830;
l9_1824=floor(l9_1824);
float l9_1831;
if (l9_1824==0.0)
{
l9_1831=l9_1825;
}
else
{
if (l9_1824==1.0)
{
float l9_1832=0.0;
float l9_1833=(*sc_set0.UserUniforms).strokeThickness;
l9_1832=l9_1833;
float l9_1834=0.0;
l9_1834=l9_1832;
float l9_1835=0.0;
float l9_1836=l9_1834;
float l9_1837=(*sc_set0.UserUniforms).Port_RangeMinA_N303;
float l9_1838=(*sc_set0.UserUniforms).Port_RangeMaxA_N303;
float l9_1839=(*sc_set0.UserUniforms).Port_RangeMinB_N303;
float l9_1840=(*sc_set0.UserUniforms).Port_RangeMaxB_N303;
float l9_1841=(((l9_1836-l9_1837)/((l9_1838-l9_1837)+1e-06))*(l9_1840-l9_1839))+l9_1839;
float l9_1842;
if (l9_1840>l9_1839)
{
l9_1842=fast::clamp(l9_1841,l9_1839,l9_1840);
}
else
{
l9_1842=fast::clamp(l9_1841,l9_1840,l9_1839);
}
l9_1841=l9_1842;
l9_1835=l9_1841;
l9_1826=l9_1835;
l9_1831=l9_1826;
}
else
{
l9_1831=l9_1827;
}
}
l9_1823=l9_1831;
l9_1820=l9_1823;
l9_1822=l9_1820;
}
else
{
l9_1822=l9_1821;
}
}
l9_1818=l9_1822;
float l9_1843=0.0;
l9_1843=l9_1817+l9_1818;
float l9_1844=0.0;
l9_1844=l9_1796+l9_1843;
float l9_1845=0.0;
float l9_1846=(*sc_set0.UserUniforms).shapeHeightY;
l9_1845=l9_1846;
float l9_1847=0.0;
l9_1847=l9_1845;
float l9_1848=0.0;
float l9_1849=0.0;
float l9_1850=(*sc_set0.UserUniforms).Port_Value0_N289;
float l9_1851=0.0;
float l9_1852=(*sc_set0.UserUniforms).Port_Default_N289;
float l9_1853=0.0;
float l9_1854=float((*sc_set0.UserUniforms).yUpPin!=0);
l9_1853=l9_1854;
float l9_1855=0.0;
l9_1855=l9_1853;
l9_1849=l9_1855;
l9_1849=floor(l9_1849);
float l9_1856;
if (l9_1849==0.0)
{
l9_1856=l9_1850;
}
else
{
if (l9_1849==1.0)
{
float l9_1857=0.0;
float l9_1858=0.0;
float l9_1859=0.0;
float l9_1860=(*sc_set0.UserUniforms).Port_Default_N297;
float l9_1861;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_1862=0.0;
float l9_1863=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_1864=l9_1863+0.001;
l9_1864-=0.001;
l9_1862=l9_1864;
l9_1858=l9_1862;
l9_1861=l9_1858;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_1865=0.0;
float l9_1866=(*sc_set0.UserUniforms).strokeThickness;
l9_1865=l9_1866;
float l9_1867=0.0;
l9_1867=l9_1865;
float l9_1868=0.0;
float l9_1869=l9_1867;
float l9_1870=(*sc_set0.UserUniforms).Port_RangeMinA_N299;
float l9_1871=(*sc_set0.UserUniforms).Port_RangeMaxA_N299;
float l9_1872=(*sc_set0.UserUniforms).Port_RangeMinB_N299;
float l9_1873=(*sc_set0.UserUniforms).Port_RangeMaxB_N299;
float l9_1874=(((l9_1869-l9_1870)/((l9_1871-l9_1870)+1e-06))*(l9_1873-l9_1872))+l9_1872;
float l9_1875;
if (l9_1873>l9_1872)
{
l9_1875=fast::clamp(l9_1874,l9_1872,l9_1873);
}
else
{
l9_1875=fast::clamp(l9_1874,l9_1873,l9_1872);
}
l9_1874=l9_1875;
l9_1868=l9_1874;
l9_1859=l9_1868;
l9_1861=l9_1859;
}
else
{
l9_1861=l9_1860;
}
}
l9_1857=l9_1861;
l9_1851=l9_1857;
l9_1856=l9_1851;
}
else
{
l9_1856=l9_1852;
}
}
l9_1848=l9_1856;
float l9_1876=0.0;
float l9_1877=0.0;
float l9_1878=(*sc_set0.UserUniforms).Port_Value0_N286;
float l9_1879=0.0;
float l9_1880=(*sc_set0.UserUniforms).Port_Default_N286;
float l9_1881=0.0;
float l9_1882=float((*sc_set0.UserUniforms).yDownPin!=0);
l9_1881=l9_1882;
float l9_1883=0.0;
l9_1883=l9_1881;
l9_1877=l9_1883;
l9_1877=floor(l9_1877);
float l9_1884;
if (l9_1877==0.0)
{
l9_1884=l9_1878;
}
else
{
if (l9_1877==1.0)
{
float l9_1885=0.0;
float l9_1886=0.0;
float l9_1887=0.0;
float l9_1888=(*sc_set0.UserUniforms).Port_Default_N298;
float l9_1889;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_1890=0.0;
float l9_1891=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_1892=l9_1891+0.001;
l9_1892-=0.001;
l9_1890=l9_1892;
l9_1886=l9_1890;
l9_1889=l9_1886;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_1893=0.0;
float l9_1894=(*sc_set0.UserUniforms).strokeThickness;
l9_1893=l9_1894;
float l9_1895=0.0;
l9_1895=l9_1893;
float l9_1896=0.0;
float l9_1897=l9_1895;
float l9_1898=(*sc_set0.UserUniforms).Port_RangeMinA_N300;
float l9_1899=(*sc_set0.UserUniforms).Port_RangeMaxA_N300;
float l9_1900=(*sc_set0.UserUniforms).Port_RangeMinB_N300;
float l9_1901=(*sc_set0.UserUniforms).Port_RangeMaxB_N300;
float l9_1902=(((l9_1897-l9_1898)/((l9_1899-l9_1898)+1e-06))*(l9_1901-l9_1900))+l9_1900;
float l9_1903;
if (l9_1901>l9_1900)
{
l9_1903=fast::clamp(l9_1902,l9_1900,l9_1901);
}
else
{
l9_1903=fast::clamp(l9_1902,l9_1901,l9_1900);
}
l9_1902=l9_1903;
l9_1896=l9_1902;
l9_1887=l9_1896;
l9_1889=l9_1887;
}
else
{
l9_1889=l9_1888;
}
}
l9_1885=l9_1889;
l9_1879=l9_1885;
l9_1884=l9_1879;
}
else
{
l9_1884=l9_1880;
}
}
l9_1876=l9_1884;
float l9_1904=0.0;
float l9_1905=l9_1847;
float l9_1906=(*sc_set0.UserUniforms).Port_RangeMinA_N277;
float l9_1907=(*sc_set0.UserUniforms).Port_RangeMaxA_N277;
float l9_1908=l9_1848;
float l9_1909=l9_1876;
float l9_1910=(((l9_1905-l9_1906)/((l9_1907-l9_1906)+1e-06))*(l9_1909-l9_1908))+l9_1908;
float l9_1911;
if (l9_1909>l9_1908)
{
l9_1911=fast::clamp(l9_1910,l9_1908,l9_1909);
}
else
{
l9_1911=fast::clamp(l9_1910,l9_1909,l9_1908);
}
l9_1910=l9_1911;
l9_1904=l9_1910;
float l9_1912=0.0;
float l9_1913=(*sc_set0.UserUniforms).yOffset;
l9_1912=l9_1913;
float l9_1914=0.0;
l9_1914=l9_1912;
float l9_1915=0.0;
float l9_1916=0.0;
float l9_1917=(*sc_set0.UserUniforms).Port_Value0_N293;
float l9_1918=(*sc_set0.UserUniforms).Port_Value1_N293;
float l9_1919=(*sc_set0.UserUniforms).Port_Default_N293;
float l9_1920=0.0;
float l9_1921=float((*sc_set0.UserUniforms).yDownPin!=0);
l9_1920=l9_1921;
float l9_1922=0.0;
l9_1922=l9_1920;
l9_1916=l9_1922;
l9_1916=floor(l9_1916);
float l9_1923;
if (l9_1916==0.0)
{
l9_1923=l9_1917;
}
else
{
if (l9_1916==1.0)
{
l9_1923=l9_1918;
}
else
{
l9_1923=l9_1919;
}
}
l9_1915=l9_1923;
float l9_1924=0.0;
l9_1924=l9_1914+l9_1915;
float l9_1925=0.0;
float l9_1926=(*sc_set0.UserUniforms).Port_Value0_N301;
float l9_1927=0.0;
float l9_1928=(*sc_set0.UserUniforms).Port_Default_N301;
float l9_1929;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_1929=l9_1926;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_1930=0.0;
float l9_1931=0.0;
float l9_1932=(*sc_set0.UserUniforms).Port_Value0_N306;
float l9_1933=0.0;
float l9_1934=(*sc_set0.UserUniforms).Port_Default_N306;
float l9_1935=0.0;
float l9_1936=float((*sc_set0.UserUniforms).yDownPin!=0);
l9_1935=l9_1936;
float l9_1937=0.0;
l9_1937=l9_1935;
l9_1931=l9_1937;
l9_1931=floor(l9_1931);
float l9_1938;
if (l9_1931==0.0)
{
l9_1938=l9_1932;
}
else
{
if (l9_1931==1.0)
{
float l9_1939=0.0;
float l9_1940=(*sc_set0.UserUniforms).strokeThickness;
l9_1939=l9_1940;
float l9_1941=0.0;
l9_1941=l9_1939;
float l9_1942=0.0;
float l9_1943=l9_1941;
float l9_1944=(*sc_set0.UserUniforms).Port_RangeMinA_N305;
float l9_1945=(*sc_set0.UserUniforms).Port_RangeMaxA_N305;
float l9_1946=(*sc_set0.UserUniforms).Port_RangeMinB_N305;
float l9_1947=(*sc_set0.UserUniforms).Port_RangeMaxB_N305;
float l9_1948=(((l9_1943-l9_1944)/((l9_1945-l9_1944)+1e-06))*(l9_1947-l9_1946))+l9_1946;
float l9_1949;
if (l9_1947>l9_1946)
{
l9_1949=fast::clamp(l9_1948,l9_1946,l9_1947);
}
else
{
l9_1949=fast::clamp(l9_1948,l9_1947,l9_1946);
}
l9_1948=l9_1949;
l9_1942=l9_1948;
l9_1933=l9_1942;
l9_1938=l9_1933;
}
else
{
l9_1938=l9_1934;
}
}
l9_1930=l9_1938;
l9_1927=l9_1930;
l9_1929=l9_1927;
}
else
{
l9_1929=l9_1928;
}
}
l9_1925=l9_1929;
float l9_1950=0.0;
l9_1950=l9_1924+l9_1925;
float l9_1951=0.0;
l9_1951=l9_1904+l9_1950;
float2 l9_1952=float2(0.0);
l9_1952.x=l9_1844;
l9_1952.y=l9_1951;
float2 l9_1953=float2(0.0);
l9_1953=l9_1952;
float2 l9_1954=float2(0.0);
l9_1954=l9_1736+l9_1953;
float l9_1955=0.0;
float l9_1956=(*sc_set0.UserUniforms).Port_Value0_N132;
float l9_1957=0.0;
float l9_1958=(*sc_set0.UserUniforms).Port_Default_N132;
float l9_1959;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_1959=l9_1956;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_1960=0.0;
float l9_1961=(*sc_set0.UserUniforms).shadowRotation;
l9_1960=l9_1961;
float l9_1962=0.0;
l9_1962=l9_1960+(*sc_set0.UserUniforms).Port_Input1_N141;
l9_1957=l9_1962;
l9_1959=l9_1957;
}
else
{
l9_1959=l9_1958;
}
}
l9_1955=l9_1959;
float2 l9_1963=float2(0.0);
float2 l9_1964=l9_1954;
float l9_1965=l9_1955;
float2 l9_1966=(*sc_set0.UserUniforms).Port_Center_N092;
float l9_1967=sin(radians(l9_1965));
float l9_1968=cos(radians(l9_1965));
float2 l9_1969=l9_1964-l9_1966;
l9_1969=float2(dot(float2(l9_1968,l9_1967),l9_1969),dot(float2(-l9_1967,l9_1968),l9_1969))+l9_1966;
l9_1963=l9_1969;
float l9_1970=0.0;
float l9_1971=(*sc_set0.UserUniforms).Port_Value0_N131;
float l9_1972=0.0;
float l9_1973=(*sc_set0.UserUniforms).Port_Default_N131;
float l9_1974;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_1974=l9_1971;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_1975=0.0;
float l9_1976=(*sc_set0.UserUniforms).shadowDistance;
l9_1975=l9_1976;
l9_1972=l9_1975;
l9_1974=l9_1972;
}
else
{
l9_1974=l9_1973;
}
}
l9_1970=l9_1974;
float l9_1977=0.0;
l9_1977=l9_1970/(*sc_set0.UserUniforms).Port_Input1_N160;
float2 l9_1978=float2(0.0);
l9_1978.x=(*sc_set0.UserUniforms).Port_Value1_N097;
l9_1978.y=l9_1977;
float2 l9_1979=float2(0.0);
l9_1979=l9_1963+l9_1978;
float l9_1980=0.0;
l9_1980=l9_1955+(*sc_set0.UserUniforms).Port_Input1_N263;
float l9_1981=0.0;
l9_1981=1.0-l9_1980;
float2 l9_1982=float2(0.0);
float2 l9_1983=l9_1979;
float l9_1984=l9_1981;
float2 l9_1985=(*sc_set0.UserUniforms).Port_Center_N094;
float l9_1986=sin(radians(l9_1984));
float l9_1987=cos(radians(l9_1984));
float2 l9_1988=l9_1983-l9_1985;
l9_1988=float2(dot(float2(l9_1987,l9_1986),l9_1988),dot(float2(-l9_1986,l9_1987),l9_1988))+l9_1985;
l9_1982=l9_1988;
float l9_1989=0.0;
float l9_1990=(*sc_set0.UserUniforms).shapeRotation;
l9_1989=l9_1990;
float2 l9_1991=float2(0.0);
float2 l9_1992=l9_1982;
float l9_1993=l9_1989;
float2 l9_1994=(*sc_set0.UserUniforms).Port_Center_N100;
float l9_1995=sin(radians(l9_1993));
float l9_1996=cos(radians(l9_1993));
float2 l9_1997=l9_1992-l9_1994;
l9_1997=float2(dot(float2(l9_1996,l9_1995),l9_1997),dot(float2(-l9_1995,l9_1996),l9_1997))+l9_1994;
l9_1991=l9_1997;
float l9_1998=0.0;
float l9_1999=(*sc_set0.UserUniforms).Port_Value0_N125;
float l9_2000=0.0;
float l9_2001=(*sc_set0.UserUniforms).Port_Default_N125;
float l9_2002;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_2002=l9_1999;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_2003=0.0;
float l9_2004=(*sc_set0.UserUniforms).shadowBlur;
l9_2003=l9_2004;
l9_2000=l9_2003;
l9_2002=l9_2000;
}
else
{
l9_2002=l9_2001;
}
}
l9_1998=l9_2002;
float l9_2005=0.0;
float l9_2006=l9_1998;
float l9_2007=(*sc_set0.UserUniforms).Port_RangeMinA_N138;
float l9_2008=(*sc_set0.UserUniforms).Port_RangeMaxA_N138;
float l9_2009=(*sc_set0.UserUniforms).Port_RangeMinB_N138;
float l9_2010=(*sc_set0.UserUniforms).Port_RangeMaxB_N138;
float l9_2011=(((l9_2006-l9_2007)/((l9_2008-l9_2007)+1e-06))*(l9_2010-l9_2009))+l9_2009;
float l9_2012;
if (l9_2010>l9_2009)
{
l9_2012=fast::clamp(l9_2011,l9_2009,l9_2010);
}
else
{
l9_2012=fast::clamp(l9_2011,l9_2010,l9_2009);
}
l9_2011=l9_2012;
l9_2005=l9_2011;
float2 l9_2013=float2(0.0);
l9_2013=((l9_1991-(*sc_set0.UserUniforms).Port_Center_N137)*float2(l9_2005))+(*sc_set0.UserUniforms).Port_Center_N137;
float2 l9_2014=float2(0.0);
l9_2014=l9_2013*float2((*sc_set0.UserUniforms).Port_Input1_N019);
float2 l9_2015=float2(0.0);
l9_2015=l9_2014+float2((*sc_set0.UserUniforms).Port_Input1_N020);
float2 l9_2016=float2(0.0);
l9_2016=abs(l9_2015);
float l9_2017=0.0;
float l9_2018=(*sc_set0.UserUniforms).Port_Value0_N122;
float l9_2019=0.0;
float l9_2020=(*sc_set0.UserUniforms).Port_Default_N122;
float l9_2021;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_2021=l9_2018;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_2022=0.0;
float l9_2023=(*sc_set0.UserUniforms).strokeThickness;
l9_2022=l9_2023;
l9_2019=l9_2022;
l9_2021=l9_2019;
}
else
{
l9_2021=l9_2020;
}
}
l9_2017=l9_2021;
float l9_2024=0.0;
l9_2024=l9_2017/(*sc_set0.UserUniforms).Port_Input1_N056;
float l9_2025=0.0;
l9_2025=1.0-l9_2024;
float l9_2026=0.0;
float l9_2027=l9_1737;
float l9_2028=(*sc_set0.UserUniforms).Port_RangeMinA_N021;
float l9_2029=(*sc_set0.UserUniforms).Port_RangeMaxA_N021;
float l9_2030=(*sc_set0.UserUniforms).Port_RangeMinB_N021;
float l9_2031=l9_2025;
float l9_2032=(((l9_2027-l9_2028)/((l9_2029-l9_2028)+1e-06))*(l9_2031-l9_2030))+l9_2030;
float l9_2033;
if (l9_2031>l9_2030)
{
l9_2033=fast::clamp(l9_2032,l9_2030,l9_2031);
}
else
{
l9_2033=fast::clamp(l9_2032,l9_2031,l9_2030);
}
l9_2032=l9_2033;
l9_2026=l9_2032;
float l9_2034=0.0;
l9_2034=1.0-l9_2024;
float l9_2035=0.0;
float l9_2036=l9_1845;
float l9_2037=(*sc_set0.UserUniforms).Port_RangeMinA_N022;
float l9_2038=(*sc_set0.UserUniforms).Port_RangeMaxA_N022;
float l9_2039=(*sc_set0.UserUniforms).Port_RangeMinB_N022;
float l9_2040=l9_2034;
float l9_2041=(((l9_2036-l9_2037)/((l9_2038-l9_2037)+1e-06))*(l9_2040-l9_2039))+l9_2039;
float l9_2042;
if (l9_2040>l9_2039)
{
l9_2042=fast::clamp(l9_2041,l9_2039,l9_2040);
}
else
{
l9_2042=fast::clamp(l9_2041,l9_2040,l9_2039);
}
l9_2041=l9_2042;
l9_2035=l9_2041;
float2 l9_2043=float2(0.0);
l9_2043.x=l9_2026;
l9_2043.y=l9_2035;
float2 l9_2044=float2(0.0);
l9_2044=l9_2016-l9_2043;
float l9_2045=0.0;
float l9_2046=(*sc_set0.UserUniforms).shapeRoundness;
l9_2045=l9_2046;
float l9_2047=0.0;
l9_2047=abs(l9_2045);
float l9_2048=0.0;
l9_2048=fast::min(l9_2047,l9_2026);
float l9_2049=0.0;
l9_2049=fast::min(l9_2048,l9_2035);
float l9_2050=0.0;
l9_2050=fast::max(l9_2049,(*sc_set0.UserUniforms).Port_Input1_N030);
float2 l9_2051=float2(0.0);
l9_2051=l9_2044+float2(l9_2050);
float2 l9_2052=float2(0.0);
l9_2052=fast::max(l9_2051,(*sc_set0.UserUniforms).Port_Input1_N032);
float l9_2053=0.0;
l9_2053=length(l9_2052);
float l9_2054=0.0;
l9_2054=l9_2053/l9_2050;
float l9_2055=0.0;
l9_2055=1.0-l9_2054;
float l9_2056=0.0;
float l9_2057=l9_2055;
float l9_2058=fwidth(l9_2057);
l9_2056=l9_2058;
float l9_2059=0.0;
l9_2059=l9_1998*(*sc_set0.UserUniforms).Port_Input1_N127;
float l9_2060=0.0;
l9_2060=(((l9_2056-(*sc_set0.UserUniforms).Port_RangeMinA_N135)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N135-(*sc_set0.UserUniforms).Port_RangeMinA_N135)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N135-l9_2059))+l9_2059;
float l9_2061=0.0;
l9_2061=l9_2055/l9_2060;
float l9_2062=0.0;
l9_2062=fast::clamp(l9_2061+0.001,(*sc_set0.UserUniforms).Port_Input1_N038+0.001,(*sc_set0.UserUniforms).Port_Input2_N038+0.001)-0.001;
float l9_2063=0.0;
l9_2063=l9_1725*l9_2062;
float l9_2064=0.0;
l9_2064=1.0-l9_2061;
float l9_2065=0.0;
l9_2065=fast::clamp(l9_2064+0.001,(*sc_set0.UserUniforms).Port_Input1_N264+0.001,(*sc_set0.UserUniforms).Port_Input2_N264+0.001)-0.001;
float l9_2066=0.0;
float l9_2067=l9_1737;
float l9_2068=(*sc_set0.UserUniforms).Port_RangeMinA_N039;
float l9_2069=(*sc_set0.UserUniforms).Port_RangeMaxA_N039;
float l9_2070=l9_2024;
float l9_2071=(*sc_set0.UserUniforms).Port_RangeMaxB_N039;
float l9_2072=(((l9_2067-l9_2068)/((l9_2069-l9_2068)+1e-06))*(l9_2071-l9_2070))+l9_2070;
float l9_2073;
if (l9_2071>l9_2070)
{
l9_2073=fast::clamp(l9_2072,l9_2070,l9_2071);
}
else
{
l9_2073=fast::clamp(l9_2072,l9_2071,l9_2070);
}
l9_2072=l9_2073;
l9_2066=l9_2072;
float l9_2074=0.0;
float l9_2075=l9_1845;
float l9_2076=(*sc_set0.UserUniforms).Port_RangeMinA_N042;
float l9_2077=(*sc_set0.UserUniforms).Port_RangeMaxA_N042;
float l9_2078=l9_2024;
float l9_2079=(*sc_set0.UserUniforms).Port_RangeMaxB_N042;
float l9_2080=(((l9_2075-l9_2076)/((l9_2077-l9_2076)+1e-06))*(l9_2079-l9_2078))+l9_2078;
float l9_2081;
if (l9_2079>l9_2078)
{
l9_2081=fast::clamp(l9_2080,l9_2078,l9_2079);
}
else
{
l9_2081=fast::clamp(l9_2080,l9_2079,l9_2078);
}
l9_2080=l9_2081;
l9_2074=l9_2080;
float2 l9_2082=float2(0.0);
l9_2082.x=l9_2066;
l9_2082.y=l9_2074;
float2 l9_2083=float2(0.0);
l9_2083=l9_2016-l9_2082;
float l9_2084=0.0;
float l9_2085=l9_2045;
float l9_2086=(*sc_set0.UserUniforms).Port_RangeMinA_N057;
float l9_2087=(*sc_set0.UserUniforms).Port_RangeMaxA_N057;
float l9_2088=(*sc_set0.UserUniforms).Port_RangeMinB_N057;
float l9_2089=(*sc_set0.UserUniforms).Port_RangeMaxB_N057;
float l9_2090=(((l9_2085-l9_2086)/((l9_2087-l9_2086)+1e-06))*(l9_2089-l9_2088))+l9_2088;
float l9_2091;
if (l9_2089>l9_2088)
{
l9_2091=fast::clamp(l9_2090,l9_2088,l9_2089);
}
else
{
l9_2091=fast::clamp(l9_2090,l9_2089,l9_2088);
}
l9_2090=l9_2091;
l9_2084=l9_2090;
float l9_2092=0.0;
l9_2092=(((l9_2017-(*sc_set0.UserUniforms).Port_RangeMinA_N101)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N101-(*sc_set0.UserUniforms).Port_RangeMinA_N101)+1e-06))*(l9_2084-(*sc_set0.UserUniforms).Port_RangeMinB_N101))+(*sc_set0.UserUniforms).Port_RangeMinB_N101;
float l9_2093=0.0;
float l9_2094=l9_2045;
float l9_2095=(*sc_set0.UserUniforms).Port_RangeMinA_N047;
float l9_2096=(*sc_set0.UserUniforms).Port_RangeMaxA_N047;
float l9_2097=l9_2092;
float l9_2098=(*sc_set0.UserUniforms).Port_RangeMaxB_N047;
float l9_2099=(((l9_2094-l9_2095)/((l9_2096-l9_2095)+1e-06))*(l9_2098-l9_2097))+l9_2097;
float l9_2100;
if (l9_2098>l9_2097)
{
l9_2100=fast::clamp(l9_2099,l9_2097,l9_2098);
}
else
{
l9_2100=fast::clamp(l9_2099,l9_2098,l9_2097);
}
l9_2099=l9_2100;
l9_2093=l9_2099;
float l9_2101=0.0;
l9_2101=abs(l9_2093);
float l9_2102=0.0;
l9_2102=fast::min(l9_2101,l9_2066);
float l9_2103=0.0;
l9_2103=fast::min(l9_2102,l9_2074);
float l9_2104=0.0;
l9_2104=fast::max(l9_2103,(*sc_set0.UserUniforms).Port_Input1_N051);
float2 l9_2105=float2(0.0);
l9_2105=l9_2083+float2(l9_2104);
float2 l9_2106=float2(0.0);
l9_2106=fast::max(l9_2105,(*sc_set0.UserUniforms).Port_Input1_N053);
float l9_2107=0.0;
l9_2107=length(l9_2106);
float l9_2108=0.0;
l9_2108=l9_2107/l9_2104;
float l9_2109=0.0;
l9_2109=1.0-l9_2108;
float l9_2110=0.0;
float l9_2111=l9_2109;
float l9_2112=fwidth(l9_2111);
l9_2110=l9_2112;
float l9_2113=0.0;
l9_2113=(((l9_2110-(*sc_set0.UserUniforms).Port_RangeMinA_N133)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N133-(*sc_set0.UserUniforms).Port_RangeMinA_N133)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N133-l9_1998))+l9_1998;
float l9_2114=0.0;
l9_2114=l9_2109/l9_2113;
float l9_2115=0.0;
l9_2115=fast::clamp(l9_2114+0.001,(*sc_set0.UserUniforms).Port_Input1_N064+0.001,(*sc_set0.UserUniforms).Port_Input2_N064+0.001)-0.001;
float l9_2116=0.0;
l9_2116=l9_2065*l9_2115;
float l9_2117=0.0;
l9_2117=fast::clamp(l9_2116+0.001,(*sc_set0.UserUniforms).Port_Input1_N066+0.001,(*sc_set0.UserUniforms).Port_Input2_N066+0.001)-0.001;
float l9_2118=0.0;
float l9_2119=(*sc_set0.UserUniforms).Port_Value0_N068;
float l9_2120=0.0;
float l9_2121=(*sc_set0.UserUniforms).Port_Default_N068;
float l9_2122;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_2122=l9_2119;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_2123=0.0;
float l9_2124=(*sc_set0.UserUniforms).strokeAlpha;
l9_2123=l9_2124;
l9_2120=l9_2123;
l9_2122=l9_2120;
}
else
{
l9_2122=l9_2121;
}
}
l9_2118=l9_2122;
float l9_2125=0.0;
l9_2125=l9_2117*l9_2118;
float l9_2126=0.0;
l9_2126=l9_2063+l9_2125;
float l9_2127=0.0;
l9_2127=fast::clamp(l9_2126+0.001,(*sc_set0.UserUniforms).Port_Input1_N072+0.001,(*sc_set0.UserUniforms).Port_Input2_N072+0.001)-0.001;
float l9_2128=0.0;
float l9_2129=(*sc_set0.UserUniforms).Port_Value0_N123;
float l9_2130=0.0;
float l9_2131=(*sc_set0.UserUniforms).Port_Default_N123;
float l9_2132;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_2132=l9_2129;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_2133=0.0;
float l9_2134=(*sc_set0.UserUniforms).shadowAlpha;
l9_2133=l9_2134;
l9_2130=l9_2133;
l9_2132=l9_2130;
}
else
{
l9_2132=l9_2131;
}
}
l9_2128=l9_2132;
float l9_2135=0.0;
l9_2135=l9_2127*l9_2128;
float4 l9_2136=float4(0.0);
l9_2136=float4(l9_1715.xyz.x,l9_1715.xyz.y,l9_1715.xyz.z,l9_2136.w);
l9_2136.w=l9_2135;
float l9_2137=0.0;
l9_2137=l9_2136.w;
float l9_2138=0.0;
float l9_2139;
if ((int(Tweak_N124_tmp)!=0))
{
l9_2139=1.001;
}
else
{
l9_2139=0.001;
}
l9_2139-=0.001;
l9_2138=l9_2139;
float l9_2140=0.0;
l9_2140=l9_2137*l9_2138;
float4 l9_2141=float4(0.0);
l9_2141=float4(l9_2136.xyz.x,l9_2136.xyz.y,l9_2136.xyz.z,l9_2141.w);
l9_2141.w=l9_2140;
float l9_2142=0.0;
float l9_2143;
if ((int(innerCutout_tmp)!=0))
{
l9_2143=1.001;
}
else
{
l9_2143=0.001;
}
l9_2143-=0.001;
l9_2142=l9_2143;
float2 l9_2144=float2(0.0);
float2 l9_2145=l9_1954;
float l9_2146=l9_1989;
float2 l9_2147=(*sc_set0.UserUniforms).Port_Center_N113;
float l9_2148=sin(radians(l9_2146));
float l9_2149=cos(radians(l9_2146));
float2 l9_2150=l9_2145-l9_2147;
l9_2150=float2(dot(float2(l9_2149,l9_2148),l9_2150),dot(float2(-l9_2148,l9_2149),l9_2150))+l9_2147;
l9_2144=l9_2150;
float2 l9_2151=float2(0.0);
l9_2151=l9_2144*float2((*sc_set0.UserUniforms).Port_Input1_N089);
float2 l9_2152=float2(0.0);
l9_2152=l9_2151+float2((*sc_set0.UserUniforms).Port_Input1_N090);
float2 l9_2153=float2(0.0);
l9_2153=abs(l9_2152);
float2 l9_2154=float2(0.0);
l9_2154.x=l9_2026;
l9_2154.y=l9_2035;
float2 l9_2155=float2(0.0);
l9_2155=l9_2153-l9_2154;
float l9_2156=0.0;
l9_2156=abs(l9_2045);
float l9_2157=0.0;
l9_2157=fast::min(l9_2156,l9_2026);
float l9_2158=0.0;
l9_2158=fast::min(l9_2157,l9_2035);
float l9_2159=0.0;
l9_2159=fast::max(l9_2158,(*sc_set0.UserUniforms).Port_Input1_N103);
float2 l9_2160=float2(0.0);
l9_2160=l9_2155+float2(l9_2159);
float2 l9_2161=float2(0.0);
l9_2161=fast::max(l9_2160,(*sc_set0.UserUniforms).Port_Input1_N105);
float l9_2162=0.0;
l9_2162=length(l9_2161);
float l9_2163=0.0;
l9_2163=l9_2162/l9_2159;
float l9_2164=0.0;
l9_2164=1.0-l9_2163;
float l9_2165=0.0;
float l9_2166=l9_2164;
float l9_2167=fwidth(l9_2166);
l9_2165=l9_2167;
float l9_2168=0.0;
l9_2168=l9_2164/l9_2165;
float l9_2169=0.0;
l9_2169=fast::clamp(l9_2168+0.001,(*sc_set0.UserUniforms).Port_Input1_N112+0.001,(*sc_set0.UserUniforms).Port_Input2_N112+0.001)-0.001;
float l9_2170=0.0;
l9_2170=l9_2142*l9_2169;
float4 l9_2171=float4(0.0);
l9_2171=mix(l9_2141,float4((*sc_set0.UserUniforms).Port_Input1_N259),float4(l9_2170));
float4 l9_2172=float4(0.0);
float4 l9_2173=float4(0.0);
float4 l9_2174=float4(0.0);
float4 l9_2175=float4(0.0);
float4 l9_2176=(*sc_set0.UserUniforms).Port_Default_N149;
ssGlobals l9_2177=l9_1711;
float4 l9_2178;
if (NODE_161_DROPLIST_ITEM_tmp==0)
{
float4 l9_2179=float4(0.0);
float4 l9_2180=(*sc_set0.UserUniforms).shapeColor;
l9_2179=l9_2180;
float4 l9_2181=float4(0.0);
l9_2181=float4(l9_2179.x,l9_2179.y,l9_2179.z,1.0);
l9_2173=l9_2181;
l9_2178=l9_2173;
}
else
{
if (NODE_161_DROPLIST_ITEM_tmp==1)
{
float2 l9_2182=float2(0.0);
l9_2182=l9_2177.Surface_UVCoord0;
float2 l9_2183=float2(0.0);
float2 l9_2184=(*sc_set0.UserUniforms).shapeScale;
l9_2183=l9_2184;
float2 l9_2185=float2(0.0);
float2 l9_2186=(*sc_set0.UserUniforms).shapeOffset;
l9_2185=l9_2186;
float2 l9_2187=float2(0.0);
l9_2187=(l9_2182*l9_2183)+l9_2185;
float4 l9_2188=float4(0.0);
int l9_2189;
if ((int(shapeTextureHasSwappedViews_tmp)!=0))
{
int l9_2190=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2190=0;
}
else
{
l9_2190=in.varStereoViewID;
}
int l9_2191=l9_2190;
l9_2189=1-l9_2191;
}
else
{
int l9_2192=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2192=0;
}
else
{
l9_2192=in.varStereoViewID;
}
int l9_2193=l9_2192;
l9_2189=l9_2193;
}
int l9_2194=l9_2189;
int l9_2195=shapeTextureLayout_tmp;
int l9_2196=l9_2194;
float2 l9_2197=l9_2187;
bool l9_2198=(int(SC_USE_UV_TRANSFORM_shapeTexture_tmp)!=0);
float3x3 l9_2199=(*sc_set0.UserUniforms).shapeTextureTransform;
int2 l9_2200=int2(SC_SOFTWARE_WRAP_MODE_U_shapeTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_shapeTexture_tmp);
bool l9_2201=(int(SC_USE_UV_MIN_MAX_shapeTexture_tmp)!=0);
float4 l9_2202=(*sc_set0.UserUniforms).shapeTextureUvMinMax;
bool l9_2203=(int(SC_USE_CLAMP_TO_BORDER_shapeTexture_tmp)!=0);
float4 l9_2204=(*sc_set0.UserUniforms).shapeTextureBorderColor;
float l9_2205=0.0;
bool l9_2206=l9_2203&&(!l9_2201);
float l9_2207=1.0;
float l9_2208=l9_2197.x;
int l9_2209=l9_2200.x;
if (l9_2209==1)
{
l9_2208=fract(l9_2208);
}
else
{
if (l9_2209==2)
{
float l9_2210=fract(l9_2208);
float l9_2211=l9_2208-l9_2210;
float l9_2212=step(0.25,fract(l9_2211*0.5));
l9_2208=mix(l9_2210,1.0-l9_2210,fast::clamp(l9_2212,0.0,1.0));
}
}
l9_2197.x=l9_2208;
float l9_2213=l9_2197.y;
int l9_2214=l9_2200.y;
if (l9_2214==1)
{
l9_2213=fract(l9_2213);
}
else
{
if (l9_2214==2)
{
float l9_2215=fract(l9_2213);
float l9_2216=l9_2213-l9_2215;
float l9_2217=step(0.25,fract(l9_2216*0.5));
l9_2213=mix(l9_2215,1.0-l9_2215,fast::clamp(l9_2217,0.0,1.0));
}
}
l9_2197.y=l9_2213;
if (l9_2201)
{
bool l9_2218=l9_2203;
bool l9_2219;
if (l9_2218)
{
l9_2219=l9_2200.x==3;
}
else
{
l9_2219=l9_2218;
}
float l9_2220=l9_2197.x;
float l9_2221=l9_2202.x;
float l9_2222=l9_2202.z;
bool l9_2223=l9_2219;
float l9_2224=l9_2207;
float l9_2225=fast::clamp(l9_2220,l9_2221,l9_2222);
float l9_2226=step(abs(l9_2220-l9_2225),9.9999997e-06);
l9_2224*=(l9_2226+((1.0-float(l9_2223))*(1.0-l9_2226)));
l9_2220=l9_2225;
l9_2197.x=l9_2220;
l9_2207=l9_2224;
bool l9_2227=l9_2203;
bool l9_2228;
if (l9_2227)
{
l9_2228=l9_2200.y==3;
}
else
{
l9_2228=l9_2227;
}
float l9_2229=l9_2197.y;
float l9_2230=l9_2202.y;
float l9_2231=l9_2202.w;
bool l9_2232=l9_2228;
float l9_2233=l9_2207;
float l9_2234=fast::clamp(l9_2229,l9_2230,l9_2231);
float l9_2235=step(abs(l9_2229-l9_2234),9.9999997e-06);
l9_2233*=(l9_2235+((1.0-float(l9_2232))*(1.0-l9_2235)));
l9_2229=l9_2234;
l9_2197.y=l9_2229;
l9_2207=l9_2233;
}
float2 l9_2236=l9_2197;
bool l9_2237=l9_2198;
float3x3 l9_2238=l9_2199;
if (l9_2237)
{
l9_2236=float2((l9_2238*float3(l9_2236,1.0)).xy);
}
float2 l9_2239=l9_2236;
l9_2197=l9_2239;
float l9_2240=l9_2197.x;
int l9_2241=l9_2200.x;
bool l9_2242=l9_2206;
float l9_2243=l9_2207;
if ((l9_2241==0)||(l9_2241==3))
{
float l9_2244=l9_2240;
float l9_2245=0.0;
float l9_2246=1.0;
bool l9_2247=l9_2242;
float l9_2248=l9_2243;
float l9_2249=fast::clamp(l9_2244,l9_2245,l9_2246);
float l9_2250=step(abs(l9_2244-l9_2249),9.9999997e-06);
l9_2248*=(l9_2250+((1.0-float(l9_2247))*(1.0-l9_2250)));
l9_2244=l9_2249;
l9_2240=l9_2244;
l9_2243=l9_2248;
}
l9_2197.x=l9_2240;
l9_2207=l9_2243;
float l9_2251=l9_2197.y;
int l9_2252=l9_2200.y;
bool l9_2253=l9_2206;
float l9_2254=l9_2207;
if ((l9_2252==0)||(l9_2252==3))
{
float l9_2255=l9_2251;
float l9_2256=0.0;
float l9_2257=1.0;
bool l9_2258=l9_2253;
float l9_2259=l9_2254;
float l9_2260=fast::clamp(l9_2255,l9_2256,l9_2257);
float l9_2261=step(abs(l9_2255-l9_2260),9.9999997e-06);
l9_2259*=(l9_2261+((1.0-float(l9_2258))*(1.0-l9_2261)));
l9_2255=l9_2260;
l9_2251=l9_2255;
l9_2254=l9_2259;
}
l9_2197.y=l9_2251;
l9_2207=l9_2254;
float2 l9_2262=l9_2197;
int l9_2263=l9_2195;
int l9_2264=l9_2196;
float l9_2265=l9_2205;
float2 l9_2266=l9_2262;
int l9_2267=l9_2263;
int l9_2268=l9_2264;
float3 l9_2269=float3(0.0);
if (l9_2267==0)
{
l9_2269=float3(l9_2266,0.0);
}
else
{
if (l9_2267==1)
{
l9_2269=float3(l9_2266.x,(l9_2266.y*0.5)+(0.5-(float(l9_2268)*0.5)),0.0);
}
else
{
l9_2269=float3(l9_2266,float(l9_2268));
}
}
float3 l9_2270=l9_2269;
float3 l9_2271=l9_2270;
float4 l9_2272=sc_set0.shapeTexture.sample(sc_set0.shapeTextureSmpSC,l9_2271.xy,bias(l9_2265));
float4 l9_2273=l9_2272;
if (l9_2203)
{
l9_2273=mix(l9_2204,l9_2273,float4(l9_2207));
}
float4 l9_2274=l9_2273;
l9_2188=l9_2274;
float4 l9_2275=float4(0.0);
float4 l9_2276=(*sc_set0.UserUniforms).shapeColor;
l9_2275=l9_2276;
float4 l9_2277=float4(0.0);
l9_2277=l9_2188*l9_2275;
l9_2174=l9_2277;
l9_2178=l9_2174;
}
else
{
if (NODE_161_DROPLIST_ITEM_tmp==2)
{
float4 l9_2278=float4(0.0);
float4 l9_2279=float4(0.0);
float4 l9_2280=float4(0.0);
float4 l9_2281=(*sc_set0.UserUniforms).Port_Default_N209;
ssGlobals l9_2282=l9_2177;
float4 l9_2283;
if (int((int(toQuadShapeGrad_tmp)!=0))==0)
{
float4 l9_2284=float4(0.0);
float4 l9_2285=(*sc_set0.UserUniforms).shapeGradColorA;
l9_2284=l9_2285;
float4 l9_2286=float4(0.0);
l9_2286=l9_2284;
float4 l9_2287=float4(0.0);
float4 l9_2288=(*sc_set0.UserUniforms).shapeGradColorB;
l9_2287=l9_2288;
float4 l9_2289=float4(0.0);
l9_2289=l9_2287;
float2 l9_2290=float2(0.0);
l9_2290=l9_2282.Surface_UVCoord0;
float2 l9_2291=float2(0.0);
l9_2291=(((l9_2290-float2((*sc_set0.UserUniforms).Port_RangeMinA_N175))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N175-(*sc_set0.UserUniforms).Port_RangeMinA_N175)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N175-(*sc_set0.UserUniforms).Port_RangeMinB_N175))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N175);
float2 l9_2292=float2(0.0);
float2 l9_2293=(*sc_set0.UserUniforms).shapeScaleGrad;
l9_2292=l9_2293;
float2 l9_2294=float2(0.0);
l9_2294=l9_2292;
float2 l9_2295=float2(0.0);
l9_2295=((l9_2291-(*sc_set0.UserUniforms).Port_Center_N177)*l9_2294)+(*sc_set0.UserUniforms).Port_Center_N177;
float2 l9_2296=float2(0.0);
float2 l9_2297=(*sc_set0.UserUniforms).shapeGradPointA;
l9_2296=l9_2297;
float2 l9_2298=float2(0.0);
l9_2298=l9_2296;
float2 l9_2299=float2(0.0);
l9_2299=l9_2295-l9_2298;
float2 l9_2300=float2(0.0);
float2 l9_2301=(*sc_set0.UserUniforms).shapeGradPointB;
l9_2300=l9_2301;
float2 l9_2302=float2(0.0);
l9_2302=l9_2300;
float2 l9_2303=float2(0.0);
l9_2303=l9_2302-l9_2298;
float l9_2304=0.0;
l9_2304=dot(l9_2299,l9_2303);
float l9_2305=0.0;
l9_2305=dot(l9_2303,l9_2303);
float l9_2306=0.0;
l9_2306=l9_2304/l9_2305;
float l9_2307=0.0;
l9_2307=fast::clamp(l9_2306+0.001,(*sc_set0.UserUniforms).Port_Input1_N185+0.001,(*sc_set0.UserUniforms).Port_Input2_N185+0.001)-0.001;
float l9_2308=0.0;
l9_2308=smoothstep((*sc_set0.UserUniforms).Port_Input0_N186,(*sc_set0.UserUniforms).Port_Input1_N186,l9_2307);
float4 l9_2309=float4(0.0);
l9_2309=mix(l9_2286,l9_2289,float4(l9_2308));
float4 l9_2310=float4(0.0);
l9_2310=l9_2309;
l9_2279=l9_2310;
l9_2283=l9_2279;
}
else
{
if (int((int(toQuadShapeGrad_tmp)!=0))==1)
{
float4 l9_2311=float4(0.0);
float4 l9_2312=(*sc_set0.UserUniforms).shapeGradColorA;
l9_2311=l9_2312;
float4 l9_2313=float4(0.0);
l9_2313=l9_2311;
float4 l9_2314=float4(0.0);
float4 l9_2315=(*sc_set0.UserUniforms).shapeGradColorB;
l9_2314=l9_2315;
float4 l9_2316=float4(0.0);
l9_2316=l9_2314;
float2 l9_2317=float2(0.0);
l9_2317=l9_2282.Surface_UVCoord0;
float2 l9_2318=float2(0.0);
l9_2318=(((l9_2317-float2((*sc_set0.UserUniforms).Port_RangeMinA_N198))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N198-(*sc_set0.UserUniforms).Port_RangeMinA_N198)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N198-(*sc_set0.UserUniforms).Port_RangeMinB_N198))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N198);
float2 l9_2319=float2(0.0);
float2 l9_2320=(*sc_set0.UserUniforms).shapeScaleGrad;
l9_2319=l9_2320;
float2 l9_2321=float2(0.0);
l9_2321=l9_2319;
float2 l9_2322=float2(0.0);
float2 l9_2323=(*sc_set0.UserUniforms).shapeQuadOffset;
l9_2322=l9_2323;
float2 l9_2324=float2(0.0);
l9_2324=l9_2322;
float2 l9_2325=float2(0.0);
l9_2325=(l9_2318*l9_2321)+l9_2324;
float l9_2326=0.0;
float l9_2327=0.0;
float2 l9_2328=l9_2325;
float l9_2329=l9_2328.x;
float l9_2330=l9_2328.y;
l9_2326=l9_2329;
l9_2327=l9_2330;
float4 l9_2331=float4(0.0);
l9_2331=mix(l9_2313,l9_2316,float4(l9_2326));
float4 l9_2332=float4(0.0);
float4 l9_2333=(*sc_set0.UserUniforms).shapeGradColorC;
l9_2332=l9_2333;
float4 l9_2334=float4(0.0);
l9_2334=l9_2332;
float4 l9_2335=float4(0.0);
float4 l9_2336=(*sc_set0.UserUniforms).shapeGradColorD;
l9_2335=l9_2336;
float4 l9_2337=float4(0.0);
l9_2337=l9_2335;
float4 l9_2338=float4(0.0);
l9_2338=mix(l9_2334,l9_2337,float4(l9_2326));
float4 l9_2339=float4(0.0);
l9_2339=mix(l9_2331,l9_2338,float4(l9_2327));
float4 l9_2340=float4(0.0);
l9_2340=l9_2339;
l9_2280=l9_2340;
l9_2283=l9_2280;
}
else
{
l9_2283=l9_2281;
}
}
l9_2278=l9_2283;
l9_2175=l9_2278;
l9_2178=l9_2175;
}
else
{
l9_2178=l9_2176;
}
}
}
l9_2172=l9_2178;
float l9_2341=0.0;
l9_2341=fast::clamp(l9_2168+0.001,(*sc_set0.UserUniforms).Port_Input1_N265+0.001,(*sc_set0.UserUniforms).Port_Input2_N265+0.001)-0.001;
float l9_2342=0.0;
l9_2342=1.0-l9_2341;
float2 l9_2343=float2(0.0);
l9_2343.x=l9_2066;
l9_2343.y=l9_2074;
float2 l9_2344=float2(0.0);
l9_2344=l9_2153-l9_2343;
float l9_2345=0.0;
l9_2345=abs(l9_2093);
float l9_2346=0.0;
l9_2346=fast::min(l9_2345,l9_2066);
float l9_2347=0.0;
l9_2347=fast::min(l9_2346,l9_2074);
float l9_2348=0.0;
l9_2348=fast::max(l9_2347,(*sc_set0.UserUniforms).Port_Input1_N098);
float2 l9_2349=float2(0.0);
l9_2349=l9_2344+float2(l9_2348);
float2 l9_2350=float2(0.0);
l9_2350=fast::max(l9_2349,(*sc_set0.UserUniforms).Port_Input1_N115);
float l9_2351=0.0;
l9_2351=length(l9_2350);
float l9_2352=0.0;
l9_2352=l9_2351/l9_2348;
float l9_2353=0.0;
l9_2353=1.0-l9_2352;
float l9_2354=0.0;
float l9_2355=l9_2353;
float l9_2356=fwidth(l9_2355);
l9_2354=l9_2356;
float l9_2357=0.0;
l9_2357=l9_2353/l9_2354;
float l9_2358=0.0;
l9_2358=fast::clamp(l9_2357+0.001,(*sc_set0.UserUniforms).Port_Input1_N142+0.001,(*sc_set0.UserUniforms).Port_Input2_N142+0.001)-0.001;
float l9_2359=0.0;
l9_2359=l9_2342*l9_2358;
float l9_2360=0.0;
l9_2360=fast::clamp(l9_2359+0.001,(*sc_set0.UserUniforms).Port_Input1_N144+0.001,(*sc_set0.UserUniforms).Port_Input2_N144+0.001)-0.001;
float l9_2361=0.0;
l9_2361=l9_2360*l9_2118;
float l9_2362=0.0;
l9_2362=l9_2169*l9_1725;
float l9_2363=0.0;
l9_2363=l9_2361+l9_2362;
float l9_2364=0.0;
l9_2364=fast::max(l9_2361,l9_2362);
float l9_2365=0.0;
l9_2365=l9_2363-l9_2364;
float l9_2366=0.0;
l9_2366=l9_2365+l9_2362;
float l9_2367=0.0;
float l9_2368;
if ((int(shapeColorInvert_tmp)!=0))
{
l9_2368=1.001;
}
else
{
l9_2368=0.001;
}
l9_2368-=0.001;
l9_2367=l9_2368;
float l9_2369=0.0;
l9_2369=1.0-l9_2367;
float l9_2370=0.0;
float l9_2371=l9_2366;
float l9_2372=(*sc_set0.UserUniforms).Port_RangeMinA_N171;
float l9_2373=(*sc_set0.UserUniforms).Port_RangeMaxA_N171;
float l9_2374=l9_2369;
float l9_2375=l9_2367;
float l9_2376=(((l9_2371-l9_2372)/((l9_2373-l9_2372)+1e-06))*(l9_2375-l9_2374))+l9_2374;
float l9_2377;
if (l9_2375>l9_2374)
{
l9_2377=fast::clamp(l9_2376,l9_2374,l9_2375);
}
else
{
l9_2377=fast::clamp(l9_2376,l9_2375,l9_2374);
}
l9_2376=l9_2377;
l9_2370=l9_2376;
float4 l9_2378=float4(0.0);
l9_2378=mix(l9_2171,l9_2172,float4(l9_2370));
float4 l9_2379=float4(0.0);
float4 l9_2380=(*sc_set0.UserUniforms).Port_Value0_N325;
float4 l9_2381=float4(0.0);
float4 l9_2382=(*sc_set0.UserUniforms).Port_Default_N325;
ssGlobals l9_2383=l9_1711;
float4 l9_2384;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_2384=l9_2380;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float4 l9_2385=float4(0.0);
float4 l9_2386=float4(0.0);
float4 l9_2387=float4(0.0);
float4 l9_2388=float4(0.0);
float4 l9_2389=(*sc_set0.UserUniforms).Port_Default_N324;
ssGlobals l9_2390=l9_2383;
float4 l9_2391;
if (NODE_164_DROPLIST_ITEM_tmp==0)
{
float4 l9_2392=float4(0.0);
float4 l9_2393=(*sc_set0.UserUniforms).strokeColor;
l9_2392=l9_2393;
l9_2386=l9_2392;
l9_2391=l9_2386;
}
else
{
if (NODE_164_DROPLIST_ITEM_tmp==1)
{
float2 l9_2394=float2(0.0);
l9_2394=l9_2390.Surface_UVCoord0;
float2 l9_2395=float2(0.0);
float2 l9_2396=(*sc_set0.UserUniforms).strokeScale;
l9_2395=l9_2396;
float2 l9_2397=float2(0.0);
float2 l9_2398=(*sc_set0.UserUniforms).strokeOffset;
l9_2397=l9_2398;
float2 l9_2399=float2(0.0);
l9_2399=(l9_2394*l9_2395)+l9_2397;
float4 l9_2400=float4(0.0);
int l9_2401;
if ((int(strokeTextureHasSwappedViews_tmp)!=0))
{
int l9_2402=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2402=0;
}
else
{
l9_2402=in.varStereoViewID;
}
int l9_2403=l9_2402;
l9_2401=1-l9_2403;
}
else
{
int l9_2404=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2404=0;
}
else
{
l9_2404=in.varStereoViewID;
}
int l9_2405=l9_2404;
l9_2401=l9_2405;
}
int l9_2406=l9_2401;
int l9_2407=strokeTextureLayout_tmp;
int l9_2408=l9_2406;
float2 l9_2409=l9_2399;
bool l9_2410=(int(SC_USE_UV_TRANSFORM_strokeTexture_tmp)!=0);
float3x3 l9_2411=(*sc_set0.UserUniforms).strokeTextureTransform;
int2 l9_2412=int2(SC_SOFTWARE_WRAP_MODE_U_strokeTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_strokeTexture_tmp);
bool l9_2413=(int(SC_USE_UV_MIN_MAX_strokeTexture_tmp)!=0);
float4 l9_2414=(*sc_set0.UserUniforms).strokeTextureUvMinMax;
bool l9_2415=(int(SC_USE_CLAMP_TO_BORDER_strokeTexture_tmp)!=0);
float4 l9_2416=(*sc_set0.UserUniforms).strokeTextureBorderColor;
float l9_2417=0.0;
bool l9_2418=l9_2415&&(!l9_2413);
float l9_2419=1.0;
float l9_2420=l9_2409.x;
int l9_2421=l9_2412.x;
if (l9_2421==1)
{
l9_2420=fract(l9_2420);
}
else
{
if (l9_2421==2)
{
float l9_2422=fract(l9_2420);
float l9_2423=l9_2420-l9_2422;
float l9_2424=step(0.25,fract(l9_2423*0.5));
l9_2420=mix(l9_2422,1.0-l9_2422,fast::clamp(l9_2424,0.0,1.0));
}
}
l9_2409.x=l9_2420;
float l9_2425=l9_2409.y;
int l9_2426=l9_2412.y;
if (l9_2426==1)
{
l9_2425=fract(l9_2425);
}
else
{
if (l9_2426==2)
{
float l9_2427=fract(l9_2425);
float l9_2428=l9_2425-l9_2427;
float l9_2429=step(0.25,fract(l9_2428*0.5));
l9_2425=mix(l9_2427,1.0-l9_2427,fast::clamp(l9_2429,0.0,1.0));
}
}
l9_2409.y=l9_2425;
if (l9_2413)
{
bool l9_2430=l9_2415;
bool l9_2431;
if (l9_2430)
{
l9_2431=l9_2412.x==3;
}
else
{
l9_2431=l9_2430;
}
float l9_2432=l9_2409.x;
float l9_2433=l9_2414.x;
float l9_2434=l9_2414.z;
bool l9_2435=l9_2431;
float l9_2436=l9_2419;
float l9_2437=fast::clamp(l9_2432,l9_2433,l9_2434);
float l9_2438=step(abs(l9_2432-l9_2437),9.9999997e-06);
l9_2436*=(l9_2438+((1.0-float(l9_2435))*(1.0-l9_2438)));
l9_2432=l9_2437;
l9_2409.x=l9_2432;
l9_2419=l9_2436;
bool l9_2439=l9_2415;
bool l9_2440;
if (l9_2439)
{
l9_2440=l9_2412.y==3;
}
else
{
l9_2440=l9_2439;
}
float l9_2441=l9_2409.y;
float l9_2442=l9_2414.y;
float l9_2443=l9_2414.w;
bool l9_2444=l9_2440;
float l9_2445=l9_2419;
float l9_2446=fast::clamp(l9_2441,l9_2442,l9_2443);
float l9_2447=step(abs(l9_2441-l9_2446),9.9999997e-06);
l9_2445*=(l9_2447+((1.0-float(l9_2444))*(1.0-l9_2447)));
l9_2441=l9_2446;
l9_2409.y=l9_2441;
l9_2419=l9_2445;
}
float2 l9_2448=l9_2409;
bool l9_2449=l9_2410;
float3x3 l9_2450=l9_2411;
if (l9_2449)
{
l9_2448=float2((l9_2450*float3(l9_2448,1.0)).xy);
}
float2 l9_2451=l9_2448;
l9_2409=l9_2451;
float l9_2452=l9_2409.x;
int l9_2453=l9_2412.x;
bool l9_2454=l9_2418;
float l9_2455=l9_2419;
if ((l9_2453==0)||(l9_2453==3))
{
float l9_2456=l9_2452;
float l9_2457=0.0;
float l9_2458=1.0;
bool l9_2459=l9_2454;
float l9_2460=l9_2455;
float l9_2461=fast::clamp(l9_2456,l9_2457,l9_2458);
float l9_2462=step(abs(l9_2456-l9_2461),9.9999997e-06);
l9_2460*=(l9_2462+((1.0-float(l9_2459))*(1.0-l9_2462)));
l9_2456=l9_2461;
l9_2452=l9_2456;
l9_2455=l9_2460;
}
l9_2409.x=l9_2452;
l9_2419=l9_2455;
float l9_2463=l9_2409.y;
int l9_2464=l9_2412.y;
bool l9_2465=l9_2418;
float l9_2466=l9_2419;
if ((l9_2464==0)||(l9_2464==3))
{
float l9_2467=l9_2463;
float l9_2468=0.0;
float l9_2469=1.0;
bool l9_2470=l9_2465;
float l9_2471=l9_2466;
float l9_2472=fast::clamp(l9_2467,l9_2468,l9_2469);
float l9_2473=step(abs(l9_2467-l9_2472),9.9999997e-06);
l9_2471*=(l9_2473+((1.0-float(l9_2470))*(1.0-l9_2473)));
l9_2467=l9_2472;
l9_2463=l9_2467;
l9_2466=l9_2471;
}
l9_2409.y=l9_2463;
l9_2419=l9_2466;
float2 l9_2474=l9_2409;
int l9_2475=l9_2407;
int l9_2476=l9_2408;
float l9_2477=l9_2417;
float2 l9_2478=l9_2474;
int l9_2479=l9_2475;
int l9_2480=l9_2476;
float3 l9_2481=float3(0.0);
if (l9_2479==0)
{
l9_2481=float3(l9_2478,0.0);
}
else
{
if (l9_2479==1)
{
l9_2481=float3(l9_2478.x,(l9_2478.y*0.5)+(0.5-(float(l9_2480)*0.5)),0.0);
}
else
{
l9_2481=float3(l9_2478,float(l9_2480));
}
}
float3 l9_2482=l9_2481;
float3 l9_2483=l9_2482;
float4 l9_2484=sc_set0.strokeTexture.sample(sc_set0.strokeTextureSmpSC,l9_2483.xy,bias(l9_2477));
float4 l9_2485=l9_2484;
if (l9_2415)
{
l9_2485=mix(l9_2416,l9_2485,float4(l9_2419));
}
float4 l9_2486=l9_2485;
l9_2400=l9_2486;
float4 l9_2487=float4(0.0);
float4 l9_2488=(*sc_set0.UserUniforms).strokeColor;
l9_2487=l9_2488;
float4 l9_2489=float4(0.0);
l9_2489=l9_2400*l9_2487;
l9_2387=l9_2489;
l9_2391=l9_2387;
}
else
{
if (NODE_164_DROPLIST_ITEM_tmp==2)
{
float4 l9_2490=float4(0.0);
float4 l9_2491=float4(0.0);
float4 l9_2492=float4(0.0);
float4 l9_2493=(*sc_set0.UserUniforms).Port_Default_N323;
ssGlobals l9_2494=l9_2390;
float4 l9_2495;
if (int((int(toQuadStrokeGrad_tmp)!=0))==0)
{
float4 l9_2496=float4(0.0);
float4 l9_2497=(*sc_set0.UserUniforms).shapeGradColorA2;
l9_2496=l9_2497;
float4 l9_2498=float4(0.0);
l9_2498=l9_2496;
float4 l9_2499=float4(0.0);
float4 l9_2500=(*sc_set0.UserUniforms).shapeGradColorB2;
l9_2499=l9_2500;
float4 l9_2501=float4(0.0);
l9_2501=l9_2499;
float2 l9_2502=float2(0.0);
l9_2502=l9_2494.Surface_UVCoord0;
float2 l9_2503=float2(0.0);
l9_2503=(((l9_2502-float2((*sc_set0.UserUniforms).Port_RangeMinA_N231))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N231-(*sc_set0.UserUniforms).Port_RangeMinA_N231)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N231-(*sc_set0.UserUniforms).Port_RangeMinB_N231))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N231);
float2 l9_2504=float2(0.0);
float2 l9_2505=(*sc_set0.UserUniforms).shapeScaleGrad2;
l9_2504=l9_2505;
float2 l9_2506=float2(0.0);
l9_2506=l9_2504;
float2 l9_2507=float2(0.0);
l9_2507=((l9_2503-(*sc_set0.UserUniforms).Port_Center_N233)*l9_2506)+(*sc_set0.UserUniforms).Port_Center_N233;
float2 l9_2508=float2(0.0);
float2 l9_2509=(*sc_set0.UserUniforms).shapeGradPointA2;
l9_2508=l9_2509;
float2 l9_2510=float2(0.0);
l9_2510=l9_2508;
float2 l9_2511=float2(0.0);
l9_2511=l9_2507-l9_2510;
float2 l9_2512=float2(0.0);
float2 l9_2513=(*sc_set0.UserUniforms).shapeGradPointB2;
l9_2512=l9_2513;
float2 l9_2514=float2(0.0);
l9_2514=l9_2512;
float2 l9_2515=float2(0.0);
l9_2515=l9_2514-l9_2510;
float l9_2516=0.0;
l9_2516=dot(l9_2511,l9_2515);
float l9_2517=0.0;
l9_2517=dot(l9_2515,l9_2515);
float l9_2518=0.0;
l9_2518=l9_2516/l9_2517;
float l9_2519=0.0;
l9_2519=fast::clamp(l9_2518+0.001,(*sc_set0.UserUniforms).Port_Input1_N241+0.001,(*sc_set0.UserUniforms).Port_Input2_N241+0.001)-0.001;
float l9_2520=0.0;
l9_2520=smoothstep((*sc_set0.UserUniforms).Port_Input0_N242,(*sc_set0.UserUniforms).Port_Input1_N242,l9_2519);
float4 l9_2521=float4(0.0);
l9_2521=mix(l9_2498,l9_2501,float4(l9_2520));
float4 l9_2522=float4(0.0);
l9_2522=l9_2521;
l9_2491=l9_2522;
l9_2495=l9_2491;
}
else
{
if (int((int(toQuadStrokeGrad_tmp)!=0))==1)
{
float4 l9_2523=float4(0.0);
float4 l9_2524=(*sc_set0.UserUniforms).shapeGradColorA2;
l9_2523=l9_2524;
float4 l9_2525=float4(0.0);
l9_2525=l9_2523;
float4 l9_2526=float4(0.0);
float4 l9_2527=(*sc_set0.UserUniforms).shapeGradColorB2;
l9_2526=l9_2527;
float4 l9_2528=float4(0.0);
l9_2528=l9_2526;
float2 l9_2529=float2(0.0);
l9_2529=l9_2494.Surface_UVCoord0;
float2 l9_2530=float2(0.0);
l9_2530=(((l9_2529-float2((*sc_set0.UserUniforms).Port_RangeMinA_N252))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N252-(*sc_set0.UserUniforms).Port_RangeMinA_N252)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N252-(*sc_set0.UserUniforms).Port_RangeMinB_N252))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N252);
float2 l9_2531=float2(0.0);
float2 l9_2532=(*sc_set0.UserUniforms).shapeScaleGrad2;
l9_2531=l9_2532;
float2 l9_2533=float2(0.0);
l9_2533=l9_2531;
float2 l9_2534=float2(0.0);
float2 l9_2535=(*sc_set0.UserUniforms).shapeQuadOffset2;
l9_2534=l9_2535;
float2 l9_2536=float2(0.0);
l9_2536=l9_2534;
float2 l9_2537=float2(0.0);
l9_2537=(l9_2530*l9_2533)+l9_2536;
float l9_2538=0.0;
float l9_2539=0.0;
float2 l9_2540=l9_2537;
float l9_2541=l9_2540.x;
float l9_2542=l9_2540.y;
l9_2538=l9_2541;
l9_2539=l9_2542;
float4 l9_2543=float4(0.0);
l9_2543=mix(l9_2525,l9_2528,float4(l9_2538));
float4 l9_2544=float4(0.0);
float4 l9_2545=(*sc_set0.UserUniforms).shapeGradColorC2;
l9_2544=l9_2545;
float4 l9_2546=float4(0.0);
l9_2546=l9_2544;
float4 l9_2547=float4(0.0);
float4 l9_2548=(*sc_set0.UserUniforms).shapeGradColorD2;
l9_2547=l9_2548;
float4 l9_2549=float4(0.0);
l9_2549=l9_2547;
float4 l9_2550=float4(0.0);
l9_2550=mix(l9_2546,l9_2549,float4(l9_2538));
float4 l9_2551=float4(0.0);
l9_2551=mix(l9_2543,l9_2550,float4(l9_2539));
float4 l9_2552=float4(0.0);
l9_2552=l9_2551;
l9_2492=l9_2552;
l9_2495=l9_2492;
}
else
{
l9_2495=l9_2493;
}
}
l9_2490=l9_2495;
l9_2388=l9_2490;
l9_2391=l9_2388;
}
else
{
l9_2391=l9_2389;
}
}
}
l9_2385=l9_2391;
l9_2381=l9_2385;
l9_2384=l9_2381;
}
else
{
l9_2384=l9_2382;
}
}
l9_2379=l9_2384;
float4 l9_2553=float4(0.0);
l9_2553=mix(l9_2378,l9_2379,float4(l9_2361));
l9_1709=l9_2553;
l9_1714=l9_1709;
}
else
{
float4 l9_2554=float4(0.0);
float4 l9_2555=float4(0.0);
float4 l9_2556=float4(0.0);
float4 l9_2557=(*sc_set0.UserUniforms).Port_Default_N126;
float4 l9_2558;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
float l9_2559=0.0;
float l9_2560;
if ((int(Tweak_N124_tmp)!=0))
{
l9_2560=1.001;
}
else
{
l9_2560=0.001;
}
l9_2560-=0.001;
l9_2559=l9_2560;
float l9_2561=0.0;
l9_2561=(((l9_2559-(*sc_set0.UserUniforms).Port_RangeMinA_N136)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N136-(*sc_set0.UserUniforms).Port_RangeMinA_N136)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N136-(*sc_set0.UserUniforms).Port_RangeMinB_N136))+(*sc_set0.UserUniforms).Port_RangeMinB_N136;
l9_2555=float4(l9_2561);
l9_2558=l9_2555;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float4 l9_2562=float4(0.0);
float4 l9_2563=(*sc_set0.UserUniforms).shadowColor;
l9_2562=l9_2563;
l9_2556=l9_2562;
l9_2558=l9_2556;
}
else
{
l9_2558=l9_2557;
}
}
l9_2554=l9_2558;
float l9_2564=0.0;
float l9_2565=(*sc_set0.UserUniforms).shapeAlpha;
l9_2564=l9_2565;
float2 l9_2566=float2(0.0);
l9_2566=l9_1711.Surface_UVCoord0;
float4 l9_2567=float4(0.0);
float4 l9_2568=(*sc_set0.UserUniforms).Port_Value0_N154;
float4 l9_2569=float4(1.0);
float4 l9_2570=(*sc_set0.UserUniforms).Port_Default_N154;
float4 l9_2571;
if (int((int(shapeAspectFix_tmp)!=0))==0)
{
l9_2571=l9_2568;
}
else
{
if (int((int(shapeAspectFix_tmp)!=0))==1)
{
float l9_2572=0.0;
l9_2572=(*sc_set0.UserUniforms).sc_Camera.aspect;
float l9_2573=0.0;
l9_2573=1.0/l9_2572;
float2 l9_2574=float2(0.0);
l9_2574.x=(*sc_set0.UserUniforms).Port_Value1_N157;
l9_2574.y=l9_2573;
l9_2569=float4(l9_2574,0.0,0.0);
l9_2571=l9_2569;
}
else
{
l9_2571=l9_2570;
}
}
l9_2567=l9_2571;
float2 l9_2575=float2(0.0);
l9_2575=(l9_2566*l9_2567.xy)+(*sc_set0.UserUniforms).Port_Input2_N148;
float l9_2576=0.0;
float l9_2577=(*sc_set0.UserUniforms).shapeWidthX;
l9_2576=l9_2577;
float l9_2578=0.0;
l9_2578=l9_2576;
float l9_2579=0.0;
float l9_2580=0.0;
float l9_2581=(*sc_set0.UserUniforms).Port_Value0_N287;
float l9_2582=0.0;
float l9_2583=(*sc_set0.UserUniforms).Port_Default_N287;
float l9_2584=0.0;
float l9_2585=float((*sc_set0.UserUniforms).xRightPin!=0);
l9_2584=l9_2585;
float l9_2586=0.0;
l9_2586=l9_2584;
l9_2580=l9_2586;
l9_2580=floor(l9_2580);
float l9_2587;
if (l9_2580==0.0)
{
l9_2587=l9_2581;
}
else
{
if (l9_2580==1.0)
{
float l9_2588=0.0;
float l9_2589=0.0;
float l9_2590=0.0;
float l9_2591=(*sc_set0.UserUniforms).Port_Default_N294;
float l9_2592;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_2593=0.0;
float l9_2594=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_2595=l9_2594+0.001;
l9_2595-=0.001;
l9_2593=l9_2595;
l9_2589=l9_2593;
l9_2592=l9_2589;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_2596=0.0;
float l9_2597=(*sc_set0.UserUniforms).strokeThickness;
l9_2596=l9_2597;
float l9_2598=0.0;
l9_2598=l9_2596;
float l9_2599=0.0;
float l9_2600=l9_2598;
float l9_2601=(*sc_set0.UserUniforms).Port_RangeMinA_N276;
float l9_2602=(*sc_set0.UserUniforms).Port_RangeMaxA_N276;
float l9_2603=(*sc_set0.UserUniforms).Port_RangeMinB_N276;
float l9_2604=(*sc_set0.UserUniforms).Port_RangeMaxB_N276;
float l9_2605=(((l9_2600-l9_2601)/((l9_2602-l9_2601)+1e-06))*(l9_2604-l9_2603))+l9_2603;
float l9_2606;
if (l9_2604>l9_2603)
{
l9_2606=fast::clamp(l9_2605,l9_2603,l9_2604);
}
else
{
l9_2606=fast::clamp(l9_2605,l9_2604,l9_2603);
}
l9_2605=l9_2606;
l9_2599=l9_2605;
l9_2590=l9_2599;
l9_2592=l9_2590;
}
else
{
l9_2592=l9_2591;
}
}
l9_2588=l9_2592;
l9_2582=l9_2588;
l9_2587=l9_2582;
}
else
{
l9_2587=l9_2583;
}
}
l9_2579=l9_2587;
float l9_2607=0.0;
float l9_2608=0.0;
float l9_2609=(*sc_set0.UserUniforms).Port_Value0_N281;
float l9_2610=0.0;
float l9_2611=(*sc_set0.UserUniforms).Port_Default_N281;
float l9_2612=0.0;
float l9_2613=float((*sc_set0.UserUniforms).xLeftPin!=0);
l9_2612=l9_2613;
float l9_2614=0.0;
l9_2614=l9_2612;
l9_2608=l9_2614;
l9_2608=floor(l9_2608);
float l9_2615;
if (l9_2608==0.0)
{
l9_2615=l9_2609;
}
else
{
if (l9_2608==1.0)
{
float l9_2616=0.0;
float l9_2617=0.0;
float l9_2618=0.0;
float l9_2619=(*sc_set0.UserUniforms).Port_Default_N296;
float l9_2620;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_2621=0.0;
float l9_2622=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_2623=l9_2622+0.001;
l9_2623-=0.001;
l9_2621=l9_2623;
l9_2617=l9_2621;
l9_2620=l9_2617;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_2624=0.0;
float l9_2625=(*sc_set0.UserUniforms).strokeThickness;
l9_2624=l9_2625;
float l9_2626=0.0;
l9_2626=l9_2624;
float l9_2627=0.0;
float l9_2628=l9_2626;
float l9_2629=(*sc_set0.UserUniforms).Port_RangeMinA_N295;
float l9_2630=(*sc_set0.UserUniforms).Port_RangeMaxA_N295;
float l9_2631=(*sc_set0.UserUniforms).Port_RangeMinB_N295;
float l9_2632=(*sc_set0.UserUniforms).Port_RangeMaxB_N295;
float l9_2633=(((l9_2628-l9_2629)/((l9_2630-l9_2629)+1e-06))*(l9_2632-l9_2631))+l9_2631;
float l9_2634;
if (l9_2632>l9_2631)
{
l9_2634=fast::clamp(l9_2633,l9_2631,l9_2632);
}
else
{
l9_2634=fast::clamp(l9_2633,l9_2632,l9_2631);
}
l9_2633=l9_2634;
l9_2627=l9_2633;
l9_2618=l9_2627;
l9_2620=l9_2618;
}
else
{
l9_2620=l9_2619;
}
}
l9_2616=l9_2620;
l9_2610=l9_2616;
l9_2615=l9_2610;
}
else
{
l9_2615=l9_2611;
}
}
l9_2607=l9_2615;
float l9_2635=0.0;
float l9_2636=l9_2578;
float l9_2637=(*sc_set0.UserUniforms).Port_RangeMinA_N268;
float l9_2638=(*sc_set0.UserUniforms).Port_RangeMaxA_N268;
float l9_2639=l9_2579;
float l9_2640=l9_2607;
float l9_2641=(((l9_2636-l9_2637)/((l9_2638-l9_2637)+1e-06))*(l9_2640-l9_2639))+l9_2639;
float l9_2642;
if (l9_2640>l9_2639)
{
l9_2642=fast::clamp(l9_2641,l9_2639,l9_2640);
}
else
{
l9_2642=fast::clamp(l9_2641,l9_2640,l9_2639);
}
l9_2641=l9_2642;
l9_2635=l9_2641;
float l9_2643=0.0;
float l9_2644=(*sc_set0.UserUniforms).xOffset;
l9_2643=l9_2644;
float l9_2645=0.0;
l9_2645=l9_2643;
float l9_2646=0.0;
float l9_2647=0.0;
float l9_2648=(*sc_set0.UserUniforms).Port_Value0_N282;
float l9_2649=(*sc_set0.UserUniforms).Port_Value1_N282;
float l9_2650=(*sc_set0.UserUniforms).Port_Default_N282;
float l9_2651=0.0;
float l9_2652=float((*sc_set0.UserUniforms).xLeftPin!=0);
l9_2651=l9_2652;
float l9_2653=0.0;
l9_2653=l9_2651;
l9_2647=l9_2653;
l9_2647=floor(l9_2647);
float l9_2654;
if (l9_2647==0.0)
{
l9_2654=l9_2648;
}
else
{
if (l9_2647==1.0)
{
l9_2654=l9_2649;
}
else
{
l9_2654=l9_2650;
}
}
l9_2646=l9_2654;
float l9_2655=0.0;
l9_2655=l9_2645+l9_2646;
float l9_2656=0.0;
l9_2656=1.0-l9_2655;
float l9_2657=0.0;
float l9_2658=(*sc_set0.UserUniforms).Port_Value0_N308;
float l9_2659=0.0;
float l9_2660=(*sc_set0.UserUniforms).Port_Default_N308;
float l9_2661;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_2661=l9_2658;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_2662=0.0;
float l9_2663=0.0;
float l9_2664=(*sc_set0.UserUniforms).Port_Value0_N304;
float l9_2665=0.0;
float l9_2666=(*sc_set0.UserUniforms).Port_Default_N304;
float l9_2667=0.0;
float l9_2668=float((*sc_set0.UserUniforms).xLeftPin!=0);
l9_2667=l9_2668;
float l9_2669=0.0;
l9_2669=l9_2667;
l9_2663=l9_2669;
l9_2663=floor(l9_2663);
float l9_2670;
if (l9_2663==0.0)
{
l9_2670=l9_2664;
}
else
{
if (l9_2663==1.0)
{
float l9_2671=0.0;
float l9_2672=(*sc_set0.UserUniforms).strokeThickness;
l9_2671=l9_2672;
float l9_2673=0.0;
l9_2673=l9_2671;
float l9_2674=0.0;
float l9_2675=l9_2673;
float l9_2676=(*sc_set0.UserUniforms).Port_RangeMinA_N303;
float l9_2677=(*sc_set0.UserUniforms).Port_RangeMaxA_N303;
float l9_2678=(*sc_set0.UserUniforms).Port_RangeMinB_N303;
float l9_2679=(*sc_set0.UserUniforms).Port_RangeMaxB_N303;
float l9_2680=(((l9_2675-l9_2676)/((l9_2677-l9_2676)+1e-06))*(l9_2679-l9_2678))+l9_2678;
float l9_2681;
if (l9_2679>l9_2678)
{
l9_2681=fast::clamp(l9_2680,l9_2678,l9_2679);
}
else
{
l9_2681=fast::clamp(l9_2680,l9_2679,l9_2678);
}
l9_2680=l9_2681;
l9_2674=l9_2680;
l9_2665=l9_2674;
l9_2670=l9_2665;
}
else
{
l9_2670=l9_2666;
}
}
l9_2662=l9_2670;
l9_2659=l9_2662;
l9_2661=l9_2659;
}
else
{
l9_2661=l9_2660;
}
}
l9_2657=l9_2661;
float l9_2682=0.0;
l9_2682=l9_2656+l9_2657;
float l9_2683=0.0;
l9_2683=l9_2635+l9_2682;
float l9_2684=0.0;
float l9_2685=(*sc_set0.UserUniforms).shapeHeightY;
l9_2684=l9_2685;
float l9_2686=0.0;
l9_2686=l9_2684;
float l9_2687=0.0;
float l9_2688=0.0;
float l9_2689=(*sc_set0.UserUniforms).Port_Value0_N289;
float l9_2690=0.0;
float l9_2691=(*sc_set0.UserUniforms).Port_Default_N289;
float l9_2692=0.0;
float l9_2693=float((*sc_set0.UserUniforms).yUpPin!=0);
l9_2692=l9_2693;
float l9_2694=0.0;
l9_2694=l9_2692;
l9_2688=l9_2694;
l9_2688=floor(l9_2688);
float l9_2695;
if (l9_2688==0.0)
{
l9_2695=l9_2689;
}
else
{
if (l9_2688==1.0)
{
float l9_2696=0.0;
float l9_2697=0.0;
float l9_2698=0.0;
float l9_2699=(*sc_set0.UserUniforms).Port_Default_N297;
float l9_2700;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_2701=0.0;
float l9_2702=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_2703=l9_2702+0.001;
l9_2703-=0.001;
l9_2701=l9_2703;
l9_2697=l9_2701;
l9_2700=l9_2697;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_2704=0.0;
float l9_2705=(*sc_set0.UserUniforms).strokeThickness;
l9_2704=l9_2705;
float l9_2706=0.0;
l9_2706=l9_2704;
float l9_2707=0.0;
float l9_2708=l9_2706;
float l9_2709=(*sc_set0.UserUniforms).Port_RangeMinA_N299;
float l9_2710=(*sc_set0.UserUniforms).Port_RangeMaxA_N299;
float l9_2711=(*sc_set0.UserUniforms).Port_RangeMinB_N299;
float l9_2712=(*sc_set0.UserUniforms).Port_RangeMaxB_N299;
float l9_2713=(((l9_2708-l9_2709)/((l9_2710-l9_2709)+1e-06))*(l9_2712-l9_2711))+l9_2711;
float l9_2714;
if (l9_2712>l9_2711)
{
l9_2714=fast::clamp(l9_2713,l9_2711,l9_2712);
}
else
{
l9_2714=fast::clamp(l9_2713,l9_2712,l9_2711);
}
l9_2713=l9_2714;
l9_2707=l9_2713;
l9_2698=l9_2707;
l9_2700=l9_2698;
}
else
{
l9_2700=l9_2699;
}
}
l9_2696=l9_2700;
l9_2690=l9_2696;
l9_2695=l9_2690;
}
else
{
l9_2695=l9_2691;
}
}
l9_2687=l9_2695;
float l9_2715=0.0;
float l9_2716=0.0;
float l9_2717=(*sc_set0.UserUniforms).Port_Value0_N286;
float l9_2718=0.0;
float l9_2719=(*sc_set0.UserUniforms).Port_Default_N286;
float l9_2720=0.0;
float l9_2721=float((*sc_set0.UserUniforms).yDownPin!=0);
l9_2720=l9_2721;
float l9_2722=0.0;
l9_2722=l9_2720;
l9_2716=l9_2722;
l9_2716=floor(l9_2716);
float l9_2723;
if (l9_2716==0.0)
{
l9_2723=l9_2717;
}
else
{
if (l9_2716==1.0)
{
float l9_2724=0.0;
float l9_2725=0.0;
float l9_2726=0.0;
float l9_2727=(*sc_set0.UserUniforms).Port_Default_N298;
float l9_2728;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
float l9_2729=0.0;
float l9_2730=(*sc_set0.UserUniforms).Port_Value_N288;
float l9_2731=l9_2730+0.001;
l9_2731-=0.001;
l9_2729=l9_2731;
l9_2725=l9_2729;
l9_2728=l9_2725;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_2732=0.0;
float l9_2733=(*sc_set0.UserUniforms).strokeThickness;
l9_2732=l9_2733;
float l9_2734=0.0;
l9_2734=l9_2732;
float l9_2735=0.0;
float l9_2736=l9_2734;
float l9_2737=(*sc_set0.UserUniforms).Port_RangeMinA_N300;
float l9_2738=(*sc_set0.UserUniforms).Port_RangeMaxA_N300;
float l9_2739=(*sc_set0.UserUniforms).Port_RangeMinB_N300;
float l9_2740=(*sc_set0.UserUniforms).Port_RangeMaxB_N300;
float l9_2741=(((l9_2736-l9_2737)/((l9_2738-l9_2737)+1e-06))*(l9_2740-l9_2739))+l9_2739;
float l9_2742;
if (l9_2740>l9_2739)
{
l9_2742=fast::clamp(l9_2741,l9_2739,l9_2740);
}
else
{
l9_2742=fast::clamp(l9_2741,l9_2740,l9_2739);
}
l9_2741=l9_2742;
l9_2735=l9_2741;
l9_2726=l9_2735;
l9_2728=l9_2726;
}
else
{
l9_2728=l9_2727;
}
}
l9_2724=l9_2728;
l9_2718=l9_2724;
l9_2723=l9_2718;
}
else
{
l9_2723=l9_2719;
}
}
l9_2715=l9_2723;
float l9_2743=0.0;
float l9_2744=l9_2686;
float l9_2745=(*sc_set0.UserUniforms).Port_RangeMinA_N277;
float l9_2746=(*sc_set0.UserUniforms).Port_RangeMaxA_N277;
float l9_2747=l9_2687;
float l9_2748=l9_2715;
float l9_2749=(((l9_2744-l9_2745)/((l9_2746-l9_2745)+1e-06))*(l9_2748-l9_2747))+l9_2747;
float l9_2750;
if (l9_2748>l9_2747)
{
l9_2750=fast::clamp(l9_2749,l9_2747,l9_2748);
}
else
{
l9_2750=fast::clamp(l9_2749,l9_2748,l9_2747);
}
l9_2749=l9_2750;
l9_2743=l9_2749;
float l9_2751=0.0;
float l9_2752=(*sc_set0.UserUniforms).yOffset;
l9_2751=l9_2752;
float l9_2753=0.0;
l9_2753=l9_2751;
float l9_2754=0.0;
float l9_2755=0.0;
float l9_2756=(*sc_set0.UserUniforms).Port_Value0_N293;
float l9_2757=(*sc_set0.UserUniforms).Port_Value1_N293;
float l9_2758=(*sc_set0.UserUniforms).Port_Default_N293;
float l9_2759=0.0;
float l9_2760=float((*sc_set0.UserUniforms).yDownPin!=0);
l9_2759=l9_2760;
float l9_2761=0.0;
l9_2761=l9_2759;
l9_2755=l9_2761;
l9_2755=floor(l9_2755);
float l9_2762;
if (l9_2755==0.0)
{
l9_2762=l9_2756;
}
else
{
if (l9_2755==1.0)
{
l9_2762=l9_2757;
}
else
{
l9_2762=l9_2758;
}
}
l9_2754=l9_2762;
float l9_2763=0.0;
l9_2763=l9_2753+l9_2754;
float l9_2764=0.0;
float l9_2765=(*sc_set0.UserUniforms).Port_Value0_N301;
float l9_2766=0.0;
float l9_2767=(*sc_set0.UserUniforms).Port_Default_N301;
float l9_2768;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_2768=l9_2765;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_2769=0.0;
float l9_2770=0.0;
float l9_2771=(*sc_set0.UserUniforms).Port_Value0_N306;
float l9_2772=0.0;
float l9_2773=(*sc_set0.UserUniforms).Port_Default_N306;
float l9_2774=0.0;
float l9_2775=float((*sc_set0.UserUniforms).yDownPin!=0);
l9_2774=l9_2775;
float l9_2776=0.0;
l9_2776=l9_2774;
l9_2770=l9_2776;
l9_2770=floor(l9_2770);
float l9_2777;
if (l9_2770==0.0)
{
l9_2777=l9_2771;
}
else
{
if (l9_2770==1.0)
{
float l9_2778=0.0;
float l9_2779=(*sc_set0.UserUniforms).strokeThickness;
l9_2778=l9_2779;
float l9_2780=0.0;
l9_2780=l9_2778;
float l9_2781=0.0;
float l9_2782=l9_2780;
float l9_2783=(*sc_set0.UserUniforms).Port_RangeMinA_N305;
float l9_2784=(*sc_set0.UserUniforms).Port_RangeMaxA_N305;
float l9_2785=(*sc_set0.UserUniforms).Port_RangeMinB_N305;
float l9_2786=(*sc_set0.UserUniforms).Port_RangeMaxB_N305;
float l9_2787=(((l9_2782-l9_2783)/((l9_2784-l9_2783)+1e-06))*(l9_2786-l9_2785))+l9_2785;
float l9_2788;
if (l9_2786>l9_2785)
{
l9_2788=fast::clamp(l9_2787,l9_2785,l9_2786);
}
else
{
l9_2788=fast::clamp(l9_2787,l9_2786,l9_2785);
}
l9_2787=l9_2788;
l9_2781=l9_2787;
l9_2772=l9_2781;
l9_2777=l9_2772;
}
else
{
l9_2777=l9_2773;
}
}
l9_2769=l9_2777;
l9_2766=l9_2769;
l9_2768=l9_2766;
}
else
{
l9_2768=l9_2767;
}
}
l9_2764=l9_2768;
float l9_2789=0.0;
l9_2789=l9_2763+l9_2764;
float l9_2790=0.0;
l9_2790=l9_2743+l9_2789;
float2 l9_2791=float2(0.0);
l9_2791.x=l9_2683;
l9_2791.y=l9_2790;
float2 l9_2792=float2(0.0);
l9_2792=l9_2791;
float2 l9_2793=float2(0.0);
l9_2793=l9_2575+l9_2792;
float l9_2794=0.0;
float l9_2795=(*sc_set0.UserUniforms).Port_Value0_N132;
float l9_2796=0.0;
float l9_2797=(*sc_set0.UserUniforms).Port_Default_N132;
float l9_2798;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_2798=l9_2795;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_2799=0.0;
float l9_2800=(*sc_set0.UserUniforms).shadowRotation;
l9_2799=l9_2800;
float l9_2801=0.0;
l9_2801=l9_2799+(*sc_set0.UserUniforms).Port_Input1_N141;
l9_2796=l9_2801;
l9_2798=l9_2796;
}
else
{
l9_2798=l9_2797;
}
}
l9_2794=l9_2798;
float2 l9_2802=float2(0.0);
float2 l9_2803=l9_2793;
float l9_2804=l9_2794;
float2 l9_2805=(*sc_set0.UserUniforms).Port_Center_N092;
float l9_2806=sin(radians(l9_2804));
float l9_2807=cos(radians(l9_2804));
float2 l9_2808=l9_2803-l9_2805;
l9_2808=float2(dot(float2(l9_2807,l9_2806),l9_2808),dot(float2(-l9_2806,l9_2807),l9_2808))+l9_2805;
l9_2802=l9_2808;
float l9_2809=0.0;
float l9_2810=(*sc_set0.UserUniforms).Port_Value0_N131;
float l9_2811=0.0;
float l9_2812=(*sc_set0.UserUniforms).Port_Default_N131;
float l9_2813;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_2813=l9_2810;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_2814=0.0;
float l9_2815=(*sc_set0.UserUniforms).shadowDistance;
l9_2814=l9_2815;
l9_2811=l9_2814;
l9_2813=l9_2811;
}
else
{
l9_2813=l9_2812;
}
}
l9_2809=l9_2813;
float l9_2816=0.0;
l9_2816=l9_2809/(*sc_set0.UserUniforms).Port_Input1_N160;
float2 l9_2817=float2(0.0);
l9_2817.x=(*sc_set0.UserUniforms).Port_Value1_N097;
l9_2817.y=l9_2816;
float2 l9_2818=float2(0.0);
l9_2818=l9_2802+l9_2817;
float l9_2819=0.0;
l9_2819=l9_2794+(*sc_set0.UserUniforms).Port_Input1_N263;
float l9_2820=0.0;
l9_2820=1.0-l9_2819;
float2 l9_2821=float2(0.0);
float2 l9_2822=l9_2818;
float l9_2823=l9_2820;
float2 l9_2824=(*sc_set0.UserUniforms).Port_Center_N094;
float l9_2825=sin(radians(l9_2823));
float l9_2826=cos(radians(l9_2823));
float2 l9_2827=l9_2822-l9_2824;
l9_2827=float2(dot(float2(l9_2826,l9_2825),l9_2827),dot(float2(-l9_2825,l9_2826),l9_2827))+l9_2824;
l9_2821=l9_2827;
float l9_2828=0.0;
float l9_2829=(*sc_set0.UserUniforms).shapeRotation;
l9_2828=l9_2829;
float2 l9_2830=float2(0.0);
float2 l9_2831=l9_2821;
float l9_2832=l9_2828;
float2 l9_2833=(*sc_set0.UserUniforms).Port_Center_N100;
float l9_2834=sin(radians(l9_2832));
float l9_2835=cos(radians(l9_2832));
float2 l9_2836=l9_2831-l9_2833;
l9_2836=float2(dot(float2(l9_2835,l9_2834),l9_2836),dot(float2(-l9_2834,l9_2835),l9_2836))+l9_2833;
l9_2830=l9_2836;
float l9_2837=0.0;
float l9_2838=(*sc_set0.UserUniforms).Port_Value0_N125;
float l9_2839=0.0;
float l9_2840=(*sc_set0.UserUniforms).Port_Default_N125;
float l9_2841;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_2841=l9_2838;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_2842=0.0;
float l9_2843=(*sc_set0.UserUniforms).shadowBlur;
l9_2842=l9_2843;
l9_2839=l9_2842;
l9_2841=l9_2839;
}
else
{
l9_2841=l9_2840;
}
}
l9_2837=l9_2841;
float l9_2844=0.0;
float l9_2845=l9_2837;
float l9_2846=(*sc_set0.UserUniforms).Port_RangeMinA_N138;
float l9_2847=(*sc_set0.UserUniforms).Port_RangeMaxA_N138;
float l9_2848=(*sc_set0.UserUniforms).Port_RangeMinB_N138;
float l9_2849=(*sc_set0.UserUniforms).Port_RangeMaxB_N138;
float l9_2850=(((l9_2845-l9_2846)/((l9_2847-l9_2846)+1e-06))*(l9_2849-l9_2848))+l9_2848;
float l9_2851;
if (l9_2849>l9_2848)
{
l9_2851=fast::clamp(l9_2850,l9_2848,l9_2849);
}
else
{
l9_2851=fast::clamp(l9_2850,l9_2849,l9_2848);
}
l9_2850=l9_2851;
l9_2844=l9_2850;
float2 l9_2852=float2(0.0);
l9_2852=((l9_2830-(*sc_set0.UserUniforms).Port_Center_N137)*float2(l9_2844))+(*sc_set0.UserUniforms).Port_Center_N137;
float2 l9_2853=float2(0.0);
l9_2853=l9_2852*float2((*sc_set0.UserUniforms).Port_Input1_N019);
float2 l9_2854=float2(0.0);
l9_2854=l9_2853+float2((*sc_set0.UserUniforms).Port_Input1_N020);
float2 l9_2855=float2(0.0);
l9_2855=abs(l9_2854);
float l9_2856=0.0;
float l9_2857=(*sc_set0.UserUniforms).Port_Value0_N122;
float l9_2858=0.0;
float l9_2859=(*sc_set0.UserUniforms).Port_Default_N122;
float l9_2860;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_2860=l9_2857;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_2861=0.0;
float l9_2862=(*sc_set0.UserUniforms).strokeThickness;
l9_2861=l9_2862;
l9_2858=l9_2861;
l9_2860=l9_2858;
}
else
{
l9_2860=l9_2859;
}
}
l9_2856=l9_2860;
float l9_2863=0.0;
l9_2863=l9_2856/(*sc_set0.UserUniforms).Port_Input1_N056;
float l9_2864=0.0;
l9_2864=1.0-l9_2863;
float l9_2865=0.0;
float l9_2866=l9_2576;
float l9_2867=(*sc_set0.UserUniforms).Port_RangeMinA_N021;
float l9_2868=(*sc_set0.UserUniforms).Port_RangeMaxA_N021;
float l9_2869=(*sc_set0.UserUniforms).Port_RangeMinB_N021;
float l9_2870=l9_2864;
float l9_2871=(((l9_2866-l9_2867)/((l9_2868-l9_2867)+1e-06))*(l9_2870-l9_2869))+l9_2869;
float l9_2872;
if (l9_2870>l9_2869)
{
l9_2872=fast::clamp(l9_2871,l9_2869,l9_2870);
}
else
{
l9_2872=fast::clamp(l9_2871,l9_2870,l9_2869);
}
l9_2871=l9_2872;
l9_2865=l9_2871;
float l9_2873=0.0;
l9_2873=1.0-l9_2863;
float l9_2874=0.0;
float l9_2875=l9_2684;
float l9_2876=(*sc_set0.UserUniforms).Port_RangeMinA_N022;
float l9_2877=(*sc_set0.UserUniforms).Port_RangeMaxA_N022;
float l9_2878=(*sc_set0.UserUniforms).Port_RangeMinB_N022;
float l9_2879=l9_2873;
float l9_2880=(((l9_2875-l9_2876)/((l9_2877-l9_2876)+1e-06))*(l9_2879-l9_2878))+l9_2878;
float l9_2881;
if (l9_2879>l9_2878)
{
l9_2881=fast::clamp(l9_2880,l9_2878,l9_2879);
}
else
{
l9_2881=fast::clamp(l9_2880,l9_2879,l9_2878);
}
l9_2880=l9_2881;
l9_2874=l9_2880;
float2 l9_2882=float2(0.0);
l9_2882.x=l9_2865;
l9_2882.y=l9_2874;
float2 l9_2883=float2(0.0);
l9_2883=l9_2855-l9_2882;
float l9_2884=0.0;
float l9_2885=(*sc_set0.UserUniforms).shapeRoundness;
l9_2884=l9_2885;
float l9_2886=0.0;
l9_2886=abs(l9_2884);
float l9_2887=0.0;
l9_2887=fast::min(l9_2886,l9_2865);
float l9_2888=0.0;
l9_2888=fast::min(l9_2887,l9_2874);
float l9_2889=0.0;
l9_2889=fast::max(l9_2888,(*sc_set0.UserUniforms).Port_Input1_N030);
float2 l9_2890=float2(0.0);
l9_2890=l9_2883+float2(l9_2889);
float2 l9_2891=float2(0.0);
l9_2891=fast::max(l9_2890,(*sc_set0.UserUniforms).Port_Input1_N032);
float l9_2892=0.0;
l9_2892=length(l9_2891);
float l9_2893=0.0;
l9_2893=l9_2892/l9_2889;
float l9_2894=0.0;
l9_2894=1.0-l9_2893;
float l9_2895=0.0;
float l9_2896=l9_2894;
float l9_2897=fwidth(l9_2896);
l9_2895=l9_2897;
float l9_2898=0.0;
l9_2898=l9_2837*(*sc_set0.UserUniforms).Port_Input1_N127;
float l9_2899=0.0;
l9_2899=(((l9_2895-(*sc_set0.UserUniforms).Port_RangeMinA_N135)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N135-(*sc_set0.UserUniforms).Port_RangeMinA_N135)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N135-l9_2898))+l9_2898;
float l9_2900=0.0;
l9_2900=l9_2894/l9_2899;
float l9_2901=0.0;
l9_2901=fast::clamp(l9_2900+0.001,(*sc_set0.UserUniforms).Port_Input1_N038+0.001,(*sc_set0.UserUniforms).Port_Input2_N038+0.001)-0.001;
float l9_2902=0.0;
l9_2902=l9_2564*l9_2901;
float l9_2903=0.0;
l9_2903=1.0-l9_2900;
float l9_2904=0.0;
l9_2904=fast::clamp(l9_2903+0.001,(*sc_set0.UserUniforms).Port_Input1_N264+0.001,(*sc_set0.UserUniforms).Port_Input2_N264+0.001)-0.001;
float l9_2905=0.0;
float l9_2906=l9_2576;
float l9_2907=(*sc_set0.UserUniforms).Port_RangeMinA_N039;
float l9_2908=(*sc_set0.UserUniforms).Port_RangeMaxA_N039;
float l9_2909=l9_2863;
float l9_2910=(*sc_set0.UserUniforms).Port_RangeMaxB_N039;
float l9_2911=(((l9_2906-l9_2907)/((l9_2908-l9_2907)+1e-06))*(l9_2910-l9_2909))+l9_2909;
float l9_2912;
if (l9_2910>l9_2909)
{
l9_2912=fast::clamp(l9_2911,l9_2909,l9_2910);
}
else
{
l9_2912=fast::clamp(l9_2911,l9_2910,l9_2909);
}
l9_2911=l9_2912;
l9_2905=l9_2911;
float l9_2913=0.0;
float l9_2914=l9_2684;
float l9_2915=(*sc_set0.UserUniforms).Port_RangeMinA_N042;
float l9_2916=(*sc_set0.UserUniforms).Port_RangeMaxA_N042;
float l9_2917=l9_2863;
float l9_2918=(*sc_set0.UserUniforms).Port_RangeMaxB_N042;
float l9_2919=(((l9_2914-l9_2915)/((l9_2916-l9_2915)+1e-06))*(l9_2918-l9_2917))+l9_2917;
float l9_2920;
if (l9_2918>l9_2917)
{
l9_2920=fast::clamp(l9_2919,l9_2917,l9_2918);
}
else
{
l9_2920=fast::clamp(l9_2919,l9_2918,l9_2917);
}
l9_2919=l9_2920;
l9_2913=l9_2919;
float2 l9_2921=float2(0.0);
l9_2921.x=l9_2905;
l9_2921.y=l9_2913;
float2 l9_2922=float2(0.0);
l9_2922=l9_2855-l9_2921;
float l9_2923=0.0;
float l9_2924=l9_2884;
float l9_2925=(*sc_set0.UserUniforms).Port_RangeMinA_N057;
float l9_2926=(*sc_set0.UserUniforms).Port_RangeMaxA_N057;
float l9_2927=(*sc_set0.UserUniforms).Port_RangeMinB_N057;
float l9_2928=(*sc_set0.UserUniforms).Port_RangeMaxB_N057;
float l9_2929=(((l9_2924-l9_2925)/((l9_2926-l9_2925)+1e-06))*(l9_2928-l9_2927))+l9_2927;
float l9_2930;
if (l9_2928>l9_2927)
{
l9_2930=fast::clamp(l9_2929,l9_2927,l9_2928);
}
else
{
l9_2930=fast::clamp(l9_2929,l9_2928,l9_2927);
}
l9_2929=l9_2930;
l9_2923=l9_2929;
float l9_2931=0.0;
l9_2931=(((l9_2856-(*sc_set0.UserUniforms).Port_RangeMinA_N101)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N101-(*sc_set0.UserUniforms).Port_RangeMinA_N101)+1e-06))*(l9_2923-(*sc_set0.UserUniforms).Port_RangeMinB_N101))+(*sc_set0.UserUniforms).Port_RangeMinB_N101;
float l9_2932=0.0;
float l9_2933=l9_2884;
float l9_2934=(*sc_set0.UserUniforms).Port_RangeMinA_N047;
float l9_2935=(*sc_set0.UserUniforms).Port_RangeMaxA_N047;
float l9_2936=l9_2931;
float l9_2937=(*sc_set0.UserUniforms).Port_RangeMaxB_N047;
float l9_2938=(((l9_2933-l9_2934)/((l9_2935-l9_2934)+1e-06))*(l9_2937-l9_2936))+l9_2936;
float l9_2939;
if (l9_2937>l9_2936)
{
l9_2939=fast::clamp(l9_2938,l9_2936,l9_2937);
}
else
{
l9_2939=fast::clamp(l9_2938,l9_2937,l9_2936);
}
l9_2938=l9_2939;
l9_2932=l9_2938;
float l9_2940=0.0;
l9_2940=abs(l9_2932);
float l9_2941=0.0;
l9_2941=fast::min(l9_2940,l9_2905);
float l9_2942=0.0;
l9_2942=fast::min(l9_2941,l9_2913);
float l9_2943=0.0;
l9_2943=fast::max(l9_2942,(*sc_set0.UserUniforms).Port_Input1_N051);
float2 l9_2944=float2(0.0);
l9_2944=l9_2922+float2(l9_2943);
float2 l9_2945=float2(0.0);
l9_2945=fast::max(l9_2944,(*sc_set0.UserUniforms).Port_Input1_N053);
float l9_2946=0.0;
l9_2946=length(l9_2945);
float l9_2947=0.0;
l9_2947=l9_2946/l9_2943;
float l9_2948=0.0;
l9_2948=1.0-l9_2947;
float l9_2949=0.0;
float l9_2950=l9_2948;
float l9_2951=fwidth(l9_2950);
l9_2949=l9_2951;
float l9_2952=0.0;
l9_2952=(((l9_2949-(*sc_set0.UserUniforms).Port_RangeMinA_N133)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N133-(*sc_set0.UserUniforms).Port_RangeMinA_N133)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N133-l9_2837))+l9_2837;
float l9_2953=0.0;
l9_2953=l9_2948/l9_2952;
float l9_2954=0.0;
l9_2954=fast::clamp(l9_2953+0.001,(*sc_set0.UserUniforms).Port_Input1_N064+0.001,(*sc_set0.UserUniforms).Port_Input2_N064+0.001)-0.001;
float l9_2955=0.0;
l9_2955=l9_2904*l9_2954;
float l9_2956=0.0;
l9_2956=fast::clamp(l9_2955+0.001,(*sc_set0.UserUniforms).Port_Input1_N066+0.001,(*sc_set0.UserUniforms).Port_Input2_N066+0.001)-0.001;
float l9_2957=0.0;
float l9_2958=(*sc_set0.UserUniforms).Port_Value0_N068;
float l9_2959=0.0;
float l9_2960=(*sc_set0.UserUniforms).Port_Default_N068;
float l9_2961;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_2961=l9_2958;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float l9_2962=0.0;
float l9_2963=(*sc_set0.UserUniforms).strokeAlpha;
l9_2962=l9_2963;
l9_2959=l9_2962;
l9_2961=l9_2959;
}
else
{
l9_2961=l9_2960;
}
}
l9_2957=l9_2961;
float l9_2964=0.0;
l9_2964=l9_2956*l9_2957;
float l9_2965=0.0;
l9_2965=l9_2902+l9_2964;
float l9_2966=0.0;
l9_2966=fast::clamp(l9_2965+0.001,(*sc_set0.UserUniforms).Port_Input1_N072+0.001,(*sc_set0.UserUniforms).Port_Input2_N072+0.001)-0.001;
float l9_2967=0.0;
float l9_2968=(*sc_set0.UserUniforms).Port_Value0_N123;
float l9_2969=0.0;
float l9_2970=(*sc_set0.UserUniforms).Port_Default_N123;
float l9_2971;
if (int((int(Tweak_N124_tmp)!=0))==0)
{
l9_2971=l9_2968;
}
else
{
if (int((int(Tweak_N124_tmp)!=0))==1)
{
float l9_2972=0.0;
float l9_2973=(*sc_set0.UserUniforms).shadowAlpha;
l9_2972=l9_2973;
l9_2969=l9_2972;
l9_2971=l9_2969;
}
else
{
l9_2971=l9_2970;
}
}
l9_2967=l9_2971;
float l9_2974=0.0;
l9_2974=l9_2966*l9_2967;
float4 l9_2975=float4(0.0);
l9_2975=float4(l9_2554.xyz.x,l9_2554.xyz.y,l9_2554.xyz.z,l9_2975.w);
l9_2975.w=l9_2974;
float l9_2976=0.0;
l9_2976=l9_2975.w;
float l9_2977=0.0;
float l9_2978;
if ((int(Tweak_N124_tmp)!=0))
{
l9_2978=1.001;
}
else
{
l9_2978=0.001;
}
l9_2978-=0.001;
l9_2977=l9_2978;
float l9_2979=0.0;
l9_2979=l9_2976*l9_2977;
float4 l9_2980=float4(0.0);
l9_2980=float4(l9_2975.xyz.x,l9_2975.xyz.y,l9_2975.xyz.z,l9_2980.w);
l9_2980.w=l9_2979;
float l9_2981=0.0;
float l9_2982;
if ((int(innerCutout_tmp)!=0))
{
l9_2982=1.001;
}
else
{
l9_2982=0.001;
}
l9_2982-=0.001;
l9_2981=l9_2982;
float2 l9_2983=float2(0.0);
float2 l9_2984=l9_2793;
float l9_2985=l9_2828;
float2 l9_2986=(*sc_set0.UserUniforms).Port_Center_N113;
float l9_2987=sin(radians(l9_2985));
float l9_2988=cos(radians(l9_2985));
float2 l9_2989=l9_2984-l9_2986;
l9_2989=float2(dot(float2(l9_2988,l9_2987),l9_2989),dot(float2(-l9_2987,l9_2988),l9_2989))+l9_2986;
l9_2983=l9_2989;
float2 l9_2990=float2(0.0);
l9_2990=l9_2983*float2((*sc_set0.UserUniforms).Port_Input1_N089);
float2 l9_2991=float2(0.0);
l9_2991=l9_2990+float2((*sc_set0.UserUniforms).Port_Input1_N090);
float2 l9_2992=float2(0.0);
l9_2992=abs(l9_2991);
float2 l9_2993=float2(0.0);
l9_2993.x=l9_2865;
l9_2993.y=l9_2874;
float2 l9_2994=float2(0.0);
l9_2994=l9_2992-l9_2993;
float l9_2995=0.0;
l9_2995=abs(l9_2884);
float l9_2996=0.0;
l9_2996=fast::min(l9_2995,l9_2865);
float l9_2997=0.0;
l9_2997=fast::min(l9_2996,l9_2874);
float l9_2998=0.0;
l9_2998=fast::max(l9_2997,(*sc_set0.UserUniforms).Port_Input1_N103);
float2 l9_2999=float2(0.0);
l9_2999=l9_2994+float2(l9_2998);
float2 l9_3000=float2(0.0);
l9_3000=fast::max(l9_2999,(*sc_set0.UserUniforms).Port_Input1_N105);
float l9_3001=0.0;
l9_3001=length(l9_3000);
float l9_3002=0.0;
l9_3002=l9_3001/l9_2998;
float l9_3003=0.0;
l9_3003=1.0-l9_3002;
float l9_3004=0.0;
float l9_3005=l9_3003;
float l9_3006=fwidth(l9_3005);
l9_3004=l9_3006;
float l9_3007=0.0;
l9_3007=l9_3003/l9_3004;
float l9_3008=0.0;
l9_3008=fast::clamp(l9_3007+0.001,(*sc_set0.UserUniforms).Port_Input1_N112+0.001,(*sc_set0.UserUniforms).Port_Input2_N112+0.001)-0.001;
float l9_3009=0.0;
l9_3009=l9_2981*l9_3008;
float4 l9_3010=float4(0.0);
l9_3010=mix(l9_2980,float4((*sc_set0.UserUniforms).Port_Input1_N259),float4(l9_3009));
float4 l9_3011=float4(0.0);
float4 l9_3012=float4(0.0);
float4 l9_3013=float4(0.0);
float4 l9_3014=float4(0.0);
float4 l9_3015=(*sc_set0.UserUniforms).Port_Default_N149;
ssGlobals l9_3016=l9_1711;
float4 l9_3017;
if (NODE_161_DROPLIST_ITEM_tmp==0)
{
float4 l9_3018=float4(0.0);
float4 l9_3019=(*sc_set0.UserUniforms).shapeColor;
l9_3018=l9_3019;
float4 l9_3020=float4(0.0);
l9_3020=float4(l9_3018.x,l9_3018.y,l9_3018.z,1.0);
l9_3012=l9_3020;
l9_3017=l9_3012;
}
else
{
if (NODE_161_DROPLIST_ITEM_tmp==1)
{
float2 l9_3021=float2(0.0);
l9_3021=l9_3016.Surface_UVCoord0;
float2 l9_3022=float2(0.0);
float2 l9_3023=(*sc_set0.UserUniforms).shapeScale;
l9_3022=l9_3023;
float2 l9_3024=float2(0.0);
float2 l9_3025=(*sc_set0.UserUniforms).shapeOffset;
l9_3024=l9_3025;
float2 l9_3026=float2(0.0);
l9_3026=(l9_3021*l9_3022)+l9_3024;
float4 l9_3027=float4(0.0);
int l9_3028;
if ((int(shapeTextureHasSwappedViews_tmp)!=0))
{
int l9_3029=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3029=0;
}
else
{
l9_3029=in.varStereoViewID;
}
int l9_3030=l9_3029;
l9_3028=1-l9_3030;
}
else
{
int l9_3031=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3031=0;
}
else
{
l9_3031=in.varStereoViewID;
}
int l9_3032=l9_3031;
l9_3028=l9_3032;
}
int l9_3033=l9_3028;
int l9_3034=shapeTextureLayout_tmp;
int l9_3035=l9_3033;
float2 l9_3036=l9_3026;
bool l9_3037=(int(SC_USE_UV_TRANSFORM_shapeTexture_tmp)!=0);
float3x3 l9_3038=(*sc_set0.UserUniforms).shapeTextureTransform;
int2 l9_3039=int2(SC_SOFTWARE_WRAP_MODE_U_shapeTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_shapeTexture_tmp);
bool l9_3040=(int(SC_USE_UV_MIN_MAX_shapeTexture_tmp)!=0);
float4 l9_3041=(*sc_set0.UserUniforms).shapeTextureUvMinMax;
bool l9_3042=(int(SC_USE_CLAMP_TO_BORDER_shapeTexture_tmp)!=0);
float4 l9_3043=(*sc_set0.UserUniforms).shapeTextureBorderColor;
float l9_3044=0.0;
bool l9_3045=l9_3042&&(!l9_3040);
float l9_3046=1.0;
float l9_3047=l9_3036.x;
int l9_3048=l9_3039.x;
if (l9_3048==1)
{
l9_3047=fract(l9_3047);
}
else
{
if (l9_3048==2)
{
float l9_3049=fract(l9_3047);
float l9_3050=l9_3047-l9_3049;
float l9_3051=step(0.25,fract(l9_3050*0.5));
l9_3047=mix(l9_3049,1.0-l9_3049,fast::clamp(l9_3051,0.0,1.0));
}
}
l9_3036.x=l9_3047;
float l9_3052=l9_3036.y;
int l9_3053=l9_3039.y;
if (l9_3053==1)
{
l9_3052=fract(l9_3052);
}
else
{
if (l9_3053==2)
{
float l9_3054=fract(l9_3052);
float l9_3055=l9_3052-l9_3054;
float l9_3056=step(0.25,fract(l9_3055*0.5));
l9_3052=mix(l9_3054,1.0-l9_3054,fast::clamp(l9_3056,0.0,1.0));
}
}
l9_3036.y=l9_3052;
if (l9_3040)
{
bool l9_3057=l9_3042;
bool l9_3058;
if (l9_3057)
{
l9_3058=l9_3039.x==3;
}
else
{
l9_3058=l9_3057;
}
float l9_3059=l9_3036.x;
float l9_3060=l9_3041.x;
float l9_3061=l9_3041.z;
bool l9_3062=l9_3058;
float l9_3063=l9_3046;
float l9_3064=fast::clamp(l9_3059,l9_3060,l9_3061);
float l9_3065=step(abs(l9_3059-l9_3064),9.9999997e-06);
l9_3063*=(l9_3065+((1.0-float(l9_3062))*(1.0-l9_3065)));
l9_3059=l9_3064;
l9_3036.x=l9_3059;
l9_3046=l9_3063;
bool l9_3066=l9_3042;
bool l9_3067;
if (l9_3066)
{
l9_3067=l9_3039.y==3;
}
else
{
l9_3067=l9_3066;
}
float l9_3068=l9_3036.y;
float l9_3069=l9_3041.y;
float l9_3070=l9_3041.w;
bool l9_3071=l9_3067;
float l9_3072=l9_3046;
float l9_3073=fast::clamp(l9_3068,l9_3069,l9_3070);
float l9_3074=step(abs(l9_3068-l9_3073),9.9999997e-06);
l9_3072*=(l9_3074+((1.0-float(l9_3071))*(1.0-l9_3074)));
l9_3068=l9_3073;
l9_3036.y=l9_3068;
l9_3046=l9_3072;
}
float2 l9_3075=l9_3036;
bool l9_3076=l9_3037;
float3x3 l9_3077=l9_3038;
if (l9_3076)
{
l9_3075=float2((l9_3077*float3(l9_3075,1.0)).xy);
}
float2 l9_3078=l9_3075;
l9_3036=l9_3078;
float l9_3079=l9_3036.x;
int l9_3080=l9_3039.x;
bool l9_3081=l9_3045;
float l9_3082=l9_3046;
if ((l9_3080==0)||(l9_3080==3))
{
float l9_3083=l9_3079;
float l9_3084=0.0;
float l9_3085=1.0;
bool l9_3086=l9_3081;
float l9_3087=l9_3082;
float l9_3088=fast::clamp(l9_3083,l9_3084,l9_3085);
float l9_3089=step(abs(l9_3083-l9_3088),9.9999997e-06);
l9_3087*=(l9_3089+((1.0-float(l9_3086))*(1.0-l9_3089)));
l9_3083=l9_3088;
l9_3079=l9_3083;
l9_3082=l9_3087;
}
l9_3036.x=l9_3079;
l9_3046=l9_3082;
float l9_3090=l9_3036.y;
int l9_3091=l9_3039.y;
bool l9_3092=l9_3045;
float l9_3093=l9_3046;
if ((l9_3091==0)||(l9_3091==3))
{
float l9_3094=l9_3090;
float l9_3095=0.0;
float l9_3096=1.0;
bool l9_3097=l9_3092;
float l9_3098=l9_3093;
float l9_3099=fast::clamp(l9_3094,l9_3095,l9_3096);
float l9_3100=step(abs(l9_3094-l9_3099),9.9999997e-06);
l9_3098*=(l9_3100+((1.0-float(l9_3097))*(1.0-l9_3100)));
l9_3094=l9_3099;
l9_3090=l9_3094;
l9_3093=l9_3098;
}
l9_3036.y=l9_3090;
l9_3046=l9_3093;
float2 l9_3101=l9_3036;
int l9_3102=l9_3034;
int l9_3103=l9_3035;
float l9_3104=l9_3044;
float2 l9_3105=l9_3101;
int l9_3106=l9_3102;
int l9_3107=l9_3103;
float3 l9_3108=float3(0.0);
if (l9_3106==0)
{
l9_3108=float3(l9_3105,0.0);
}
else
{
if (l9_3106==1)
{
l9_3108=float3(l9_3105.x,(l9_3105.y*0.5)+(0.5-(float(l9_3107)*0.5)),0.0);
}
else
{
l9_3108=float3(l9_3105,float(l9_3107));
}
}
float3 l9_3109=l9_3108;
float3 l9_3110=l9_3109;
float4 l9_3111=sc_set0.shapeTexture.sample(sc_set0.shapeTextureSmpSC,l9_3110.xy,bias(l9_3104));
float4 l9_3112=l9_3111;
if (l9_3042)
{
l9_3112=mix(l9_3043,l9_3112,float4(l9_3046));
}
float4 l9_3113=l9_3112;
l9_3027=l9_3113;
float4 l9_3114=float4(0.0);
float4 l9_3115=(*sc_set0.UserUniforms).shapeColor;
l9_3114=l9_3115;
float4 l9_3116=float4(0.0);
l9_3116=l9_3027*l9_3114;
l9_3013=l9_3116;
l9_3017=l9_3013;
}
else
{
if (NODE_161_DROPLIST_ITEM_tmp==2)
{
float4 l9_3117=float4(0.0);
float4 l9_3118=float4(0.0);
float4 l9_3119=float4(0.0);
float4 l9_3120=(*sc_set0.UserUniforms).Port_Default_N209;
ssGlobals l9_3121=l9_3016;
float4 l9_3122;
if (int((int(toQuadShapeGrad_tmp)!=0))==0)
{
float4 l9_3123=float4(0.0);
float4 l9_3124=(*sc_set0.UserUniforms).shapeGradColorA;
l9_3123=l9_3124;
float4 l9_3125=float4(0.0);
l9_3125=l9_3123;
float4 l9_3126=float4(0.0);
float4 l9_3127=(*sc_set0.UserUniforms).shapeGradColorB;
l9_3126=l9_3127;
float4 l9_3128=float4(0.0);
l9_3128=l9_3126;
float2 l9_3129=float2(0.0);
l9_3129=l9_3121.Surface_UVCoord0;
float2 l9_3130=float2(0.0);
l9_3130=(((l9_3129-float2((*sc_set0.UserUniforms).Port_RangeMinA_N175))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N175-(*sc_set0.UserUniforms).Port_RangeMinA_N175)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N175-(*sc_set0.UserUniforms).Port_RangeMinB_N175))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N175);
float2 l9_3131=float2(0.0);
float2 l9_3132=(*sc_set0.UserUniforms).shapeScaleGrad;
l9_3131=l9_3132;
float2 l9_3133=float2(0.0);
l9_3133=l9_3131;
float2 l9_3134=float2(0.0);
l9_3134=((l9_3130-(*sc_set0.UserUniforms).Port_Center_N177)*l9_3133)+(*sc_set0.UserUniforms).Port_Center_N177;
float2 l9_3135=float2(0.0);
float2 l9_3136=(*sc_set0.UserUniforms).shapeGradPointA;
l9_3135=l9_3136;
float2 l9_3137=float2(0.0);
l9_3137=l9_3135;
float2 l9_3138=float2(0.0);
l9_3138=l9_3134-l9_3137;
float2 l9_3139=float2(0.0);
float2 l9_3140=(*sc_set0.UserUniforms).shapeGradPointB;
l9_3139=l9_3140;
float2 l9_3141=float2(0.0);
l9_3141=l9_3139;
float2 l9_3142=float2(0.0);
l9_3142=l9_3141-l9_3137;
float l9_3143=0.0;
l9_3143=dot(l9_3138,l9_3142);
float l9_3144=0.0;
l9_3144=dot(l9_3142,l9_3142);
float l9_3145=0.0;
l9_3145=l9_3143/l9_3144;
float l9_3146=0.0;
l9_3146=fast::clamp(l9_3145+0.001,(*sc_set0.UserUniforms).Port_Input1_N185+0.001,(*sc_set0.UserUniforms).Port_Input2_N185+0.001)-0.001;
float l9_3147=0.0;
l9_3147=smoothstep((*sc_set0.UserUniforms).Port_Input0_N186,(*sc_set0.UserUniforms).Port_Input1_N186,l9_3146);
float4 l9_3148=float4(0.0);
l9_3148=mix(l9_3125,l9_3128,float4(l9_3147));
float4 l9_3149=float4(0.0);
l9_3149=l9_3148;
l9_3118=l9_3149;
l9_3122=l9_3118;
}
else
{
if (int((int(toQuadShapeGrad_tmp)!=0))==1)
{
float4 l9_3150=float4(0.0);
float4 l9_3151=(*sc_set0.UserUniforms).shapeGradColorA;
l9_3150=l9_3151;
float4 l9_3152=float4(0.0);
l9_3152=l9_3150;
float4 l9_3153=float4(0.0);
float4 l9_3154=(*sc_set0.UserUniforms).shapeGradColorB;
l9_3153=l9_3154;
float4 l9_3155=float4(0.0);
l9_3155=l9_3153;
float2 l9_3156=float2(0.0);
l9_3156=l9_3121.Surface_UVCoord0;
float2 l9_3157=float2(0.0);
l9_3157=(((l9_3156-float2((*sc_set0.UserUniforms).Port_RangeMinA_N198))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N198-(*sc_set0.UserUniforms).Port_RangeMinA_N198)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N198-(*sc_set0.UserUniforms).Port_RangeMinB_N198))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N198);
float2 l9_3158=float2(0.0);
float2 l9_3159=(*sc_set0.UserUniforms).shapeScaleGrad;
l9_3158=l9_3159;
float2 l9_3160=float2(0.0);
l9_3160=l9_3158;
float2 l9_3161=float2(0.0);
float2 l9_3162=(*sc_set0.UserUniforms).shapeQuadOffset;
l9_3161=l9_3162;
float2 l9_3163=float2(0.0);
l9_3163=l9_3161;
float2 l9_3164=float2(0.0);
l9_3164=(l9_3157*l9_3160)+l9_3163;
float l9_3165=0.0;
float l9_3166=0.0;
float2 l9_3167=l9_3164;
float l9_3168=l9_3167.x;
float l9_3169=l9_3167.y;
l9_3165=l9_3168;
l9_3166=l9_3169;
float4 l9_3170=float4(0.0);
l9_3170=mix(l9_3152,l9_3155,float4(l9_3165));
float4 l9_3171=float4(0.0);
float4 l9_3172=(*sc_set0.UserUniforms).shapeGradColorC;
l9_3171=l9_3172;
float4 l9_3173=float4(0.0);
l9_3173=l9_3171;
float4 l9_3174=float4(0.0);
float4 l9_3175=(*sc_set0.UserUniforms).shapeGradColorD;
l9_3174=l9_3175;
float4 l9_3176=float4(0.0);
l9_3176=l9_3174;
float4 l9_3177=float4(0.0);
l9_3177=mix(l9_3173,l9_3176,float4(l9_3165));
float4 l9_3178=float4(0.0);
l9_3178=mix(l9_3170,l9_3177,float4(l9_3166));
float4 l9_3179=float4(0.0);
l9_3179=l9_3178;
l9_3119=l9_3179;
l9_3122=l9_3119;
}
else
{
l9_3122=l9_3120;
}
}
l9_3117=l9_3122;
l9_3014=l9_3117;
l9_3017=l9_3014;
}
else
{
l9_3017=l9_3015;
}
}
}
l9_3011=l9_3017;
float l9_3180=0.0;
l9_3180=fast::clamp(l9_3007+0.001,(*sc_set0.UserUniforms).Port_Input1_N265+0.001,(*sc_set0.UserUniforms).Port_Input2_N265+0.001)-0.001;
float l9_3181=0.0;
l9_3181=1.0-l9_3180;
float2 l9_3182=float2(0.0);
l9_3182.x=l9_2905;
l9_3182.y=l9_2913;
float2 l9_3183=float2(0.0);
l9_3183=l9_2992-l9_3182;
float l9_3184=0.0;
l9_3184=abs(l9_2932);
float l9_3185=0.0;
l9_3185=fast::min(l9_3184,l9_2905);
float l9_3186=0.0;
l9_3186=fast::min(l9_3185,l9_2913);
float l9_3187=0.0;
l9_3187=fast::max(l9_3186,(*sc_set0.UserUniforms).Port_Input1_N098);
float2 l9_3188=float2(0.0);
l9_3188=l9_3183+float2(l9_3187);
float2 l9_3189=float2(0.0);
l9_3189=fast::max(l9_3188,(*sc_set0.UserUniforms).Port_Input1_N115);
float l9_3190=0.0;
l9_3190=length(l9_3189);
float l9_3191=0.0;
l9_3191=l9_3190/l9_3187;
float l9_3192=0.0;
l9_3192=1.0-l9_3191;
float l9_3193=0.0;
float l9_3194=l9_3192;
float l9_3195=fwidth(l9_3194);
l9_3193=l9_3195;
float l9_3196=0.0;
l9_3196=l9_3192/l9_3193;
float l9_3197=0.0;
l9_3197=fast::clamp(l9_3196+0.001,(*sc_set0.UserUniforms).Port_Input1_N142+0.001,(*sc_set0.UserUniforms).Port_Input2_N142+0.001)-0.001;
float l9_3198=0.0;
l9_3198=l9_3181*l9_3197;
float l9_3199=0.0;
l9_3199=fast::clamp(l9_3198+0.001,(*sc_set0.UserUniforms).Port_Input1_N144+0.001,(*sc_set0.UserUniforms).Port_Input2_N144+0.001)-0.001;
float l9_3200=0.0;
l9_3200=l9_3199*l9_2957;
float l9_3201=0.0;
l9_3201=l9_3008*l9_2564;
float l9_3202=0.0;
l9_3202=l9_3200+l9_3201;
float l9_3203=0.0;
l9_3203=fast::max(l9_3200,l9_3201);
float l9_3204=0.0;
l9_3204=l9_3202-l9_3203;
float l9_3205=0.0;
l9_3205=l9_3204+l9_3201;
float l9_3206=0.0;
float l9_3207;
if ((int(shapeColorInvert_tmp)!=0))
{
l9_3207=1.001;
}
else
{
l9_3207=0.001;
}
l9_3207-=0.001;
l9_3206=l9_3207;
float l9_3208=0.0;
l9_3208=1.0-l9_3206;
float l9_3209=0.0;
float l9_3210=l9_3205;
float l9_3211=(*sc_set0.UserUniforms).Port_RangeMinA_N171;
float l9_3212=(*sc_set0.UserUniforms).Port_RangeMaxA_N171;
float l9_3213=l9_3208;
float l9_3214=l9_3206;
float l9_3215=(((l9_3210-l9_3211)/((l9_3212-l9_3211)+1e-06))*(l9_3214-l9_3213))+l9_3213;
float l9_3216;
if (l9_3214>l9_3213)
{
l9_3216=fast::clamp(l9_3215,l9_3213,l9_3214);
}
else
{
l9_3216=fast::clamp(l9_3215,l9_3214,l9_3213);
}
l9_3215=l9_3216;
l9_3209=l9_3215;
float4 l9_3217=float4(0.0);
l9_3217=mix(l9_3010,l9_3011,float4(l9_3209));
float4 l9_3218=float4(0.0);
float4 l9_3219=(*sc_set0.UserUniforms).Port_Value0_N325;
float4 l9_3220=float4(0.0);
float4 l9_3221=(*sc_set0.UserUniforms).Port_Default_N325;
ssGlobals l9_3222=l9_1711;
float4 l9_3223;
if (int((int(Tweak_N139_tmp)!=0))==0)
{
l9_3223=l9_3219;
}
else
{
if (int((int(Tweak_N139_tmp)!=0))==1)
{
float4 l9_3224=float4(0.0);
float4 l9_3225=float4(0.0);
float4 l9_3226=float4(0.0);
float4 l9_3227=float4(0.0);
float4 l9_3228=(*sc_set0.UserUniforms).Port_Default_N324;
ssGlobals l9_3229=l9_3222;
float4 l9_3230;
if (NODE_164_DROPLIST_ITEM_tmp==0)
{
float4 l9_3231=float4(0.0);
float4 l9_3232=(*sc_set0.UserUniforms).strokeColor;
l9_3231=l9_3232;
l9_3225=l9_3231;
l9_3230=l9_3225;
}
else
{
if (NODE_164_DROPLIST_ITEM_tmp==1)
{
float2 l9_3233=float2(0.0);
l9_3233=l9_3229.Surface_UVCoord0;
float2 l9_3234=float2(0.0);
float2 l9_3235=(*sc_set0.UserUniforms).strokeScale;
l9_3234=l9_3235;
float2 l9_3236=float2(0.0);
float2 l9_3237=(*sc_set0.UserUniforms).strokeOffset;
l9_3236=l9_3237;
float2 l9_3238=float2(0.0);
l9_3238=(l9_3233*l9_3234)+l9_3236;
float4 l9_3239=float4(0.0);
int l9_3240;
if ((int(strokeTextureHasSwappedViews_tmp)!=0))
{
int l9_3241=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3241=0;
}
else
{
l9_3241=in.varStereoViewID;
}
int l9_3242=l9_3241;
l9_3240=1-l9_3242;
}
else
{
int l9_3243=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3243=0;
}
else
{
l9_3243=in.varStereoViewID;
}
int l9_3244=l9_3243;
l9_3240=l9_3244;
}
int l9_3245=l9_3240;
int l9_3246=strokeTextureLayout_tmp;
int l9_3247=l9_3245;
float2 l9_3248=l9_3238;
bool l9_3249=(int(SC_USE_UV_TRANSFORM_strokeTexture_tmp)!=0);
float3x3 l9_3250=(*sc_set0.UserUniforms).strokeTextureTransform;
int2 l9_3251=int2(SC_SOFTWARE_WRAP_MODE_U_strokeTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_strokeTexture_tmp);
bool l9_3252=(int(SC_USE_UV_MIN_MAX_strokeTexture_tmp)!=0);
float4 l9_3253=(*sc_set0.UserUniforms).strokeTextureUvMinMax;
bool l9_3254=(int(SC_USE_CLAMP_TO_BORDER_strokeTexture_tmp)!=0);
float4 l9_3255=(*sc_set0.UserUniforms).strokeTextureBorderColor;
float l9_3256=0.0;
bool l9_3257=l9_3254&&(!l9_3252);
float l9_3258=1.0;
float l9_3259=l9_3248.x;
int l9_3260=l9_3251.x;
if (l9_3260==1)
{
l9_3259=fract(l9_3259);
}
else
{
if (l9_3260==2)
{
float l9_3261=fract(l9_3259);
float l9_3262=l9_3259-l9_3261;
float l9_3263=step(0.25,fract(l9_3262*0.5));
l9_3259=mix(l9_3261,1.0-l9_3261,fast::clamp(l9_3263,0.0,1.0));
}
}
l9_3248.x=l9_3259;
float l9_3264=l9_3248.y;
int l9_3265=l9_3251.y;
if (l9_3265==1)
{
l9_3264=fract(l9_3264);
}
else
{
if (l9_3265==2)
{
float l9_3266=fract(l9_3264);
float l9_3267=l9_3264-l9_3266;
float l9_3268=step(0.25,fract(l9_3267*0.5));
l9_3264=mix(l9_3266,1.0-l9_3266,fast::clamp(l9_3268,0.0,1.0));
}
}
l9_3248.y=l9_3264;
if (l9_3252)
{
bool l9_3269=l9_3254;
bool l9_3270;
if (l9_3269)
{
l9_3270=l9_3251.x==3;
}
else
{
l9_3270=l9_3269;
}
float l9_3271=l9_3248.x;
float l9_3272=l9_3253.x;
float l9_3273=l9_3253.z;
bool l9_3274=l9_3270;
float l9_3275=l9_3258;
float l9_3276=fast::clamp(l9_3271,l9_3272,l9_3273);
float l9_3277=step(abs(l9_3271-l9_3276),9.9999997e-06);
l9_3275*=(l9_3277+((1.0-float(l9_3274))*(1.0-l9_3277)));
l9_3271=l9_3276;
l9_3248.x=l9_3271;
l9_3258=l9_3275;
bool l9_3278=l9_3254;
bool l9_3279;
if (l9_3278)
{
l9_3279=l9_3251.y==3;
}
else
{
l9_3279=l9_3278;
}
float l9_3280=l9_3248.y;
float l9_3281=l9_3253.y;
float l9_3282=l9_3253.w;
bool l9_3283=l9_3279;
float l9_3284=l9_3258;
float l9_3285=fast::clamp(l9_3280,l9_3281,l9_3282);
float l9_3286=step(abs(l9_3280-l9_3285),9.9999997e-06);
l9_3284*=(l9_3286+((1.0-float(l9_3283))*(1.0-l9_3286)));
l9_3280=l9_3285;
l9_3248.y=l9_3280;
l9_3258=l9_3284;
}
float2 l9_3287=l9_3248;
bool l9_3288=l9_3249;
float3x3 l9_3289=l9_3250;
if (l9_3288)
{
l9_3287=float2((l9_3289*float3(l9_3287,1.0)).xy);
}
float2 l9_3290=l9_3287;
l9_3248=l9_3290;
float l9_3291=l9_3248.x;
int l9_3292=l9_3251.x;
bool l9_3293=l9_3257;
float l9_3294=l9_3258;
if ((l9_3292==0)||(l9_3292==3))
{
float l9_3295=l9_3291;
float l9_3296=0.0;
float l9_3297=1.0;
bool l9_3298=l9_3293;
float l9_3299=l9_3294;
float l9_3300=fast::clamp(l9_3295,l9_3296,l9_3297);
float l9_3301=step(abs(l9_3295-l9_3300),9.9999997e-06);
l9_3299*=(l9_3301+((1.0-float(l9_3298))*(1.0-l9_3301)));
l9_3295=l9_3300;
l9_3291=l9_3295;
l9_3294=l9_3299;
}
l9_3248.x=l9_3291;
l9_3258=l9_3294;
float l9_3302=l9_3248.y;
int l9_3303=l9_3251.y;
bool l9_3304=l9_3257;
float l9_3305=l9_3258;
if ((l9_3303==0)||(l9_3303==3))
{
float l9_3306=l9_3302;
float l9_3307=0.0;
float l9_3308=1.0;
bool l9_3309=l9_3304;
float l9_3310=l9_3305;
float l9_3311=fast::clamp(l9_3306,l9_3307,l9_3308);
float l9_3312=step(abs(l9_3306-l9_3311),9.9999997e-06);
l9_3310*=(l9_3312+((1.0-float(l9_3309))*(1.0-l9_3312)));
l9_3306=l9_3311;
l9_3302=l9_3306;
l9_3305=l9_3310;
}
l9_3248.y=l9_3302;
l9_3258=l9_3305;
float2 l9_3313=l9_3248;
int l9_3314=l9_3246;
int l9_3315=l9_3247;
float l9_3316=l9_3256;
float2 l9_3317=l9_3313;
int l9_3318=l9_3314;
int l9_3319=l9_3315;
float3 l9_3320=float3(0.0);
if (l9_3318==0)
{
l9_3320=float3(l9_3317,0.0);
}
else
{
if (l9_3318==1)
{
l9_3320=float3(l9_3317.x,(l9_3317.y*0.5)+(0.5-(float(l9_3319)*0.5)),0.0);
}
else
{
l9_3320=float3(l9_3317,float(l9_3319));
}
}
float3 l9_3321=l9_3320;
float3 l9_3322=l9_3321;
float4 l9_3323=sc_set0.strokeTexture.sample(sc_set0.strokeTextureSmpSC,l9_3322.xy,bias(l9_3316));
float4 l9_3324=l9_3323;
if (l9_3254)
{
l9_3324=mix(l9_3255,l9_3324,float4(l9_3258));
}
float4 l9_3325=l9_3324;
l9_3239=l9_3325;
float4 l9_3326=float4(0.0);
float4 l9_3327=(*sc_set0.UserUniforms).strokeColor;
l9_3326=l9_3327;
float4 l9_3328=float4(0.0);
l9_3328=l9_3239*l9_3326;
l9_3226=l9_3328;
l9_3230=l9_3226;
}
else
{
if (NODE_164_DROPLIST_ITEM_tmp==2)
{
float4 l9_3329=float4(0.0);
float4 l9_3330=float4(0.0);
float4 l9_3331=float4(0.0);
float4 l9_3332=(*sc_set0.UserUniforms).Port_Default_N323;
ssGlobals l9_3333=l9_3229;
float4 l9_3334;
if (int((int(toQuadStrokeGrad_tmp)!=0))==0)
{
float4 l9_3335=float4(0.0);
float4 l9_3336=(*sc_set0.UserUniforms).shapeGradColorA2;
l9_3335=l9_3336;
float4 l9_3337=float4(0.0);
l9_3337=l9_3335;
float4 l9_3338=float4(0.0);
float4 l9_3339=(*sc_set0.UserUniforms).shapeGradColorB2;
l9_3338=l9_3339;
float4 l9_3340=float4(0.0);
l9_3340=l9_3338;
float2 l9_3341=float2(0.0);
l9_3341=l9_3333.Surface_UVCoord0;
float2 l9_3342=float2(0.0);
l9_3342=(((l9_3341-float2((*sc_set0.UserUniforms).Port_RangeMinA_N231))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N231-(*sc_set0.UserUniforms).Port_RangeMinA_N231)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N231-(*sc_set0.UserUniforms).Port_RangeMinB_N231))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N231);
float2 l9_3343=float2(0.0);
float2 l9_3344=(*sc_set0.UserUniforms).shapeScaleGrad2;
l9_3343=l9_3344;
float2 l9_3345=float2(0.0);
l9_3345=l9_3343;
float2 l9_3346=float2(0.0);
l9_3346=((l9_3342-(*sc_set0.UserUniforms).Port_Center_N233)*l9_3345)+(*sc_set0.UserUniforms).Port_Center_N233;
float2 l9_3347=float2(0.0);
float2 l9_3348=(*sc_set0.UserUniforms).shapeGradPointA2;
l9_3347=l9_3348;
float2 l9_3349=float2(0.0);
l9_3349=l9_3347;
float2 l9_3350=float2(0.0);
l9_3350=l9_3346-l9_3349;
float2 l9_3351=float2(0.0);
float2 l9_3352=(*sc_set0.UserUniforms).shapeGradPointB2;
l9_3351=l9_3352;
float2 l9_3353=float2(0.0);
l9_3353=l9_3351;
float2 l9_3354=float2(0.0);
l9_3354=l9_3353-l9_3349;
float l9_3355=0.0;
l9_3355=dot(l9_3350,l9_3354);
float l9_3356=0.0;
l9_3356=dot(l9_3354,l9_3354);
float l9_3357=0.0;
l9_3357=l9_3355/l9_3356;
float l9_3358=0.0;
l9_3358=fast::clamp(l9_3357+0.001,(*sc_set0.UserUniforms).Port_Input1_N241+0.001,(*sc_set0.UserUniforms).Port_Input2_N241+0.001)-0.001;
float l9_3359=0.0;
l9_3359=smoothstep((*sc_set0.UserUniforms).Port_Input0_N242,(*sc_set0.UserUniforms).Port_Input1_N242,l9_3358);
float4 l9_3360=float4(0.0);
l9_3360=mix(l9_3337,l9_3340,float4(l9_3359));
float4 l9_3361=float4(0.0);
l9_3361=l9_3360;
l9_3330=l9_3361;
l9_3334=l9_3330;
}
else
{
if (int((int(toQuadStrokeGrad_tmp)!=0))==1)
{
float4 l9_3362=float4(0.0);
float4 l9_3363=(*sc_set0.UserUniforms).shapeGradColorA2;
l9_3362=l9_3363;
float4 l9_3364=float4(0.0);
l9_3364=l9_3362;
float4 l9_3365=float4(0.0);
float4 l9_3366=(*sc_set0.UserUniforms).shapeGradColorB2;
l9_3365=l9_3366;
float4 l9_3367=float4(0.0);
l9_3367=l9_3365;
float2 l9_3368=float2(0.0);
l9_3368=l9_3333.Surface_UVCoord0;
float2 l9_3369=float2(0.0);
l9_3369=(((l9_3368-float2((*sc_set0.UserUniforms).Port_RangeMinA_N252))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N252-(*sc_set0.UserUniforms).Port_RangeMinA_N252)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N252-(*sc_set0.UserUniforms).Port_RangeMinB_N252))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N252);
float2 l9_3370=float2(0.0);
float2 l9_3371=(*sc_set0.UserUniforms).shapeScaleGrad2;
l9_3370=l9_3371;
float2 l9_3372=float2(0.0);
l9_3372=l9_3370;
float2 l9_3373=float2(0.0);
float2 l9_3374=(*sc_set0.UserUniforms).shapeQuadOffset2;
l9_3373=l9_3374;
float2 l9_3375=float2(0.0);
l9_3375=l9_3373;
float2 l9_3376=float2(0.0);
l9_3376=(l9_3369*l9_3372)+l9_3375;
float l9_3377=0.0;
float l9_3378=0.0;
float2 l9_3379=l9_3376;
float l9_3380=l9_3379.x;
float l9_3381=l9_3379.y;
l9_3377=l9_3380;
l9_3378=l9_3381;
float4 l9_3382=float4(0.0);
l9_3382=mix(l9_3364,l9_3367,float4(l9_3377));
float4 l9_3383=float4(0.0);
float4 l9_3384=(*sc_set0.UserUniforms).shapeGradColorC2;
l9_3383=l9_3384;
float4 l9_3385=float4(0.0);
l9_3385=l9_3383;
float4 l9_3386=float4(0.0);
float4 l9_3387=(*sc_set0.UserUniforms).shapeGradColorD2;
l9_3386=l9_3387;
float4 l9_3388=float4(0.0);
l9_3388=l9_3386;
float4 l9_3389=float4(0.0);
l9_3389=mix(l9_3385,l9_3388,float4(l9_3377));
float4 l9_3390=float4(0.0);
l9_3390=mix(l9_3382,l9_3389,float4(l9_3378));
float4 l9_3391=float4(0.0);
l9_3391=l9_3390;
l9_3331=l9_3391;
l9_3334=l9_3331;
}
else
{
l9_3334=l9_3332;
}
}
l9_3329=l9_3334;
l9_3227=l9_3329;
l9_3230=l9_3227;
}
else
{
l9_3230=l9_3228;
}
}
}
l9_3224=l9_3230;
l9_3220=l9_3224;
l9_3223=l9_3220;
}
else
{
l9_3223=l9_3221;
}
}
l9_3218=l9_3223;
float4 l9_3392=float4(0.0);
l9_3392=mix(l9_3217,l9_3218,float4(l9_3200));
float l9_3393=0.0;
float l9_3394=0.0;
float l9_3395=0.0;
float l9_3396=0.0;
float4 l9_3397=l9_3392;
float l9_3398=l9_3397.x;
float l9_3399=l9_3397.y;
float l9_3400=l9_3397.z;
float l9_3401=l9_3397.w;
l9_3393=l9_3398;
l9_3394=l9_3399;
l9_3395=l9_3400;
l9_3396=l9_3401;
float l9_3402=0.0;
l9_3402=l9_3396*(*sc_set0.UserUniforms).Port_Input1_N335;
float4 l9_3403=float4(0.0);
l9_3403.x=l9_3393;
l9_3403.y=l9_3394;
l9_3403.z=l9_3395;
l9_3403.w=l9_3402;
l9_1710=l9_3403;
l9_1714=l9_1710;
}
l9_1707=l9_1714;
float4 l9_3404=float4(0.0);
l9_3404=l9_1707*(*sc_set0.UserUniforms).Port_Input1_N345;
param_2=l9_3404;
param_3=param_2;
}
Result_N343=param_3;
float4 Value_N353=float4(0.0);
Value_N353=Result_N343;
float4 Result_N5=float4(0.0);
float param_5=0.0;
float4 param_6=float4(0.0);
float4 param_7=float4(0.0);
ssGlobals param_9=Globals;
float l9_3405=0.0;
float l9_3406=float((*sc_set0.UserUniforms).Active!=0);
l9_3405=l9_3406;
float l9_3407=0.0;
float l9_3408=float((*sc_set0.UserUniforms).Hover!=0);
l9_3407=l9_3408;
float l9_3409=0.0;
float l9_3410=l9_3405;
bool l9_3411=(l9_3410*1.0)!=0.0;
bool l9_3412;
if (!l9_3411)
{
l9_3412=(l9_3407*1.0)!=0.0;
}
else
{
l9_3412=l9_3411;
}
l9_3409=float(l9_3412);
param_5=l9_3409;
float4 param_8;
if ((param_5*1.0)!=0.0)
{
float4 l9_3413=float4(0.0);
l9_3413=float4((*sc_set0.UserUniforms).Port_Input_N339.x,(*sc_set0.UserUniforms).Port_Input_N339.y,(*sc_set0.UserUniforms).Port_Input_N339.z,(*sc_set0.UserUniforms).Port_Input_N339.w);
float l9_3414=0.0;
float l9_3415=0.0;
float l9_3416=0.0;
float4 l9_3417=l9_3413;
float l9_3418=l9_3417.x;
float l9_3419=l9_3417.y;
float l9_3420=l9_3417.z;
l9_3414=l9_3418;
l9_3415=l9_3419;
l9_3416=l9_3420;
float2 l9_3421=float2(0.0);
l9_3421=param_9.Surface_UVCoord0;
float2 l9_3422=float2(0.0);
l9_3422=((l9_3421-(*sc_set0.UserUniforms).Port_Center_N340)*(*sc_set0.UserUniforms).Port_Scale_N340)+(*sc_set0.UserUniforms).Port_Center_N340;
float4 l9_3423=float4(0.0);
int l9_3424;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_3425=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3425=0;
}
else
{
l9_3425=in.varStereoViewID;
}
int l9_3426=l9_3425;
l9_3424=1-l9_3426;
}
else
{
int l9_3427=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3427=0;
}
else
{
l9_3427=in.varStereoViewID;
}
int l9_3428=l9_3427;
l9_3424=l9_3428;
}
int l9_3429=l9_3424;
int l9_3430=baseTexLayout_tmp;
int l9_3431=l9_3429;
float2 l9_3432=l9_3422;
bool l9_3433=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_3434=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_3435=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_3436=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_3437=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_3438=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_3439=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_3440=0.0;
bool l9_3441=l9_3438&&(!l9_3436);
float l9_3442=1.0;
float l9_3443=l9_3432.x;
int l9_3444=l9_3435.x;
if (l9_3444==1)
{
l9_3443=fract(l9_3443);
}
else
{
if (l9_3444==2)
{
float l9_3445=fract(l9_3443);
float l9_3446=l9_3443-l9_3445;
float l9_3447=step(0.25,fract(l9_3446*0.5));
l9_3443=mix(l9_3445,1.0-l9_3445,fast::clamp(l9_3447,0.0,1.0));
}
}
l9_3432.x=l9_3443;
float l9_3448=l9_3432.y;
int l9_3449=l9_3435.y;
if (l9_3449==1)
{
l9_3448=fract(l9_3448);
}
else
{
if (l9_3449==2)
{
float l9_3450=fract(l9_3448);
float l9_3451=l9_3448-l9_3450;
float l9_3452=step(0.25,fract(l9_3451*0.5));
l9_3448=mix(l9_3450,1.0-l9_3450,fast::clamp(l9_3452,0.0,1.0));
}
}
l9_3432.y=l9_3448;
if (l9_3436)
{
bool l9_3453=l9_3438;
bool l9_3454;
if (l9_3453)
{
l9_3454=l9_3435.x==3;
}
else
{
l9_3454=l9_3453;
}
float l9_3455=l9_3432.x;
float l9_3456=l9_3437.x;
float l9_3457=l9_3437.z;
bool l9_3458=l9_3454;
float l9_3459=l9_3442;
float l9_3460=fast::clamp(l9_3455,l9_3456,l9_3457);
float l9_3461=step(abs(l9_3455-l9_3460),9.9999997e-06);
l9_3459*=(l9_3461+((1.0-float(l9_3458))*(1.0-l9_3461)));
l9_3455=l9_3460;
l9_3432.x=l9_3455;
l9_3442=l9_3459;
bool l9_3462=l9_3438;
bool l9_3463;
if (l9_3462)
{
l9_3463=l9_3435.y==3;
}
else
{
l9_3463=l9_3462;
}
float l9_3464=l9_3432.y;
float l9_3465=l9_3437.y;
float l9_3466=l9_3437.w;
bool l9_3467=l9_3463;
float l9_3468=l9_3442;
float l9_3469=fast::clamp(l9_3464,l9_3465,l9_3466);
float l9_3470=step(abs(l9_3464-l9_3469),9.9999997e-06);
l9_3468*=(l9_3470+((1.0-float(l9_3467))*(1.0-l9_3470)));
l9_3464=l9_3469;
l9_3432.y=l9_3464;
l9_3442=l9_3468;
}
float2 l9_3471=l9_3432;
bool l9_3472=l9_3433;
float3x3 l9_3473=l9_3434;
if (l9_3472)
{
l9_3471=float2((l9_3473*float3(l9_3471,1.0)).xy);
}
float2 l9_3474=l9_3471;
l9_3432=l9_3474;
float l9_3475=l9_3432.x;
int l9_3476=l9_3435.x;
bool l9_3477=l9_3441;
float l9_3478=l9_3442;
if ((l9_3476==0)||(l9_3476==3))
{
float l9_3479=l9_3475;
float l9_3480=0.0;
float l9_3481=1.0;
bool l9_3482=l9_3477;
float l9_3483=l9_3478;
float l9_3484=fast::clamp(l9_3479,l9_3480,l9_3481);
float l9_3485=step(abs(l9_3479-l9_3484),9.9999997e-06);
l9_3483*=(l9_3485+((1.0-float(l9_3482))*(1.0-l9_3485)));
l9_3479=l9_3484;
l9_3475=l9_3479;
l9_3478=l9_3483;
}
l9_3432.x=l9_3475;
l9_3442=l9_3478;
float l9_3486=l9_3432.y;
int l9_3487=l9_3435.y;
bool l9_3488=l9_3441;
float l9_3489=l9_3442;
if ((l9_3487==0)||(l9_3487==3))
{
float l9_3490=l9_3486;
float l9_3491=0.0;
float l9_3492=1.0;
bool l9_3493=l9_3488;
float l9_3494=l9_3489;
float l9_3495=fast::clamp(l9_3490,l9_3491,l9_3492);
float l9_3496=step(abs(l9_3490-l9_3495),9.9999997e-06);
l9_3494*=(l9_3496+((1.0-float(l9_3493))*(1.0-l9_3496)));
l9_3490=l9_3495;
l9_3486=l9_3490;
l9_3489=l9_3494;
}
l9_3432.y=l9_3486;
l9_3442=l9_3489;
float2 l9_3497=l9_3432;
int l9_3498=l9_3430;
int l9_3499=l9_3431;
float l9_3500=l9_3440;
float2 l9_3501=l9_3497;
int l9_3502=l9_3498;
int l9_3503=l9_3499;
float3 l9_3504=float3(0.0);
if (l9_3502==0)
{
l9_3504=float3(l9_3501,0.0);
}
else
{
if (l9_3502==1)
{
l9_3504=float3(l9_3501.x,(l9_3501.y*0.5)+(0.5-(float(l9_3503)*0.5)),0.0);
}
else
{
l9_3504=float3(l9_3501,float(l9_3503));
}
}
float3 l9_3505=l9_3504;
float3 l9_3506=l9_3505;
float4 l9_3507=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_3506.xy,bias(l9_3500));
float4 l9_3508=l9_3507;
if (l9_3438)
{
l9_3508=mix(l9_3439,l9_3508,float4(l9_3442));
}
float4 l9_3509=l9_3508;
l9_3423=l9_3509;
float l9_3510=0.0;
l9_3510=l9_3423.w;
float4 l9_3511=float4(0.0);
l9_3511.x=l9_3414;
l9_3511.y=l9_3415;
l9_3511.z=l9_3416;
l9_3511.w=l9_3510;
param_6=l9_3511;
param_8=param_6;
}
else
{
float4 l9_3512=float4(0.0);
l9_3512=float4((*sc_set0.UserUniforms).Port_Input_N006.x,(*sc_set0.UserUniforms).Port_Input_N006.y,(*sc_set0.UserUniforms).Port_Input_N006.z,(*sc_set0.UserUniforms).Port_Input_N006.w);
float l9_3513=0.0;
float l9_3514=0.0;
float l9_3515=0.0;
float4 l9_3516=l9_3512;
float l9_3517=l9_3516.x;
float l9_3518=l9_3516.y;
float l9_3519=l9_3516.z;
l9_3513=l9_3517;
l9_3514=l9_3518;
l9_3515=l9_3519;
float2 l9_3520=float2(0.0);
l9_3520=param_9.Surface_UVCoord0;
float2 l9_3521=float2(0.0);
l9_3521=((l9_3520-(*sc_set0.UserUniforms).Port_Center_N340)*(*sc_set0.UserUniforms).Port_Scale_N340)+(*sc_set0.UserUniforms).Port_Center_N340;
float4 l9_3522=float4(0.0);
int l9_3523;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_3524=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3524=0;
}
else
{
l9_3524=in.varStereoViewID;
}
int l9_3525=l9_3524;
l9_3523=1-l9_3525;
}
else
{
int l9_3526=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3526=0;
}
else
{
l9_3526=in.varStereoViewID;
}
int l9_3527=l9_3526;
l9_3523=l9_3527;
}
int l9_3528=l9_3523;
int l9_3529=baseTexLayout_tmp;
int l9_3530=l9_3528;
float2 l9_3531=l9_3521;
bool l9_3532=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_3533=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_3534=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_3535=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_3536=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_3537=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_3538=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_3539=0.0;
bool l9_3540=l9_3537&&(!l9_3535);
float l9_3541=1.0;
float l9_3542=l9_3531.x;
int l9_3543=l9_3534.x;
if (l9_3543==1)
{
l9_3542=fract(l9_3542);
}
else
{
if (l9_3543==2)
{
float l9_3544=fract(l9_3542);
float l9_3545=l9_3542-l9_3544;
float l9_3546=step(0.25,fract(l9_3545*0.5));
l9_3542=mix(l9_3544,1.0-l9_3544,fast::clamp(l9_3546,0.0,1.0));
}
}
l9_3531.x=l9_3542;
float l9_3547=l9_3531.y;
int l9_3548=l9_3534.y;
if (l9_3548==1)
{
l9_3547=fract(l9_3547);
}
else
{
if (l9_3548==2)
{
float l9_3549=fract(l9_3547);
float l9_3550=l9_3547-l9_3549;
float l9_3551=step(0.25,fract(l9_3550*0.5));
l9_3547=mix(l9_3549,1.0-l9_3549,fast::clamp(l9_3551,0.0,1.0));
}
}
l9_3531.y=l9_3547;
if (l9_3535)
{
bool l9_3552=l9_3537;
bool l9_3553;
if (l9_3552)
{
l9_3553=l9_3534.x==3;
}
else
{
l9_3553=l9_3552;
}
float l9_3554=l9_3531.x;
float l9_3555=l9_3536.x;
float l9_3556=l9_3536.z;
bool l9_3557=l9_3553;
float l9_3558=l9_3541;
float l9_3559=fast::clamp(l9_3554,l9_3555,l9_3556);
float l9_3560=step(abs(l9_3554-l9_3559),9.9999997e-06);
l9_3558*=(l9_3560+((1.0-float(l9_3557))*(1.0-l9_3560)));
l9_3554=l9_3559;
l9_3531.x=l9_3554;
l9_3541=l9_3558;
bool l9_3561=l9_3537;
bool l9_3562;
if (l9_3561)
{
l9_3562=l9_3534.y==3;
}
else
{
l9_3562=l9_3561;
}
float l9_3563=l9_3531.y;
float l9_3564=l9_3536.y;
float l9_3565=l9_3536.w;
bool l9_3566=l9_3562;
float l9_3567=l9_3541;
float l9_3568=fast::clamp(l9_3563,l9_3564,l9_3565);
float l9_3569=step(abs(l9_3563-l9_3568),9.9999997e-06);
l9_3567*=(l9_3569+((1.0-float(l9_3566))*(1.0-l9_3569)));
l9_3563=l9_3568;
l9_3531.y=l9_3563;
l9_3541=l9_3567;
}
float2 l9_3570=l9_3531;
bool l9_3571=l9_3532;
float3x3 l9_3572=l9_3533;
if (l9_3571)
{
l9_3570=float2((l9_3572*float3(l9_3570,1.0)).xy);
}
float2 l9_3573=l9_3570;
l9_3531=l9_3573;
float l9_3574=l9_3531.x;
int l9_3575=l9_3534.x;
bool l9_3576=l9_3540;
float l9_3577=l9_3541;
if ((l9_3575==0)||(l9_3575==3))
{
float l9_3578=l9_3574;
float l9_3579=0.0;
float l9_3580=1.0;
bool l9_3581=l9_3576;
float l9_3582=l9_3577;
float l9_3583=fast::clamp(l9_3578,l9_3579,l9_3580);
float l9_3584=step(abs(l9_3578-l9_3583),9.9999997e-06);
l9_3582*=(l9_3584+((1.0-float(l9_3581))*(1.0-l9_3584)));
l9_3578=l9_3583;
l9_3574=l9_3578;
l9_3577=l9_3582;
}
l9_3531.x=l9_3574;
l9_3541=l9_3577;
float l9_3585=l9_3531.y;
int l9_3586=l9_3534.y;
bool l9_3587=l9_3540;
float l9_3588=l9_3541;
if ((l9_3586==0)||(l9_3586==3))
{
float l9_3589=l9_3585;
float l9_3590=0.0;
float l9_3591=1.0;
bool l9_3592=l9_3587;
float l9_3593=l9_3588;
float l9_3594=fast::clamp(l9_3589,l9_3590,l9_3591);
float l9_3595=step(abs(l9_3589-l9_3594),9.9999997e-06);
l9_3593*=(l9_3595+((1.0-float(l9_3592))*(1.0-l9_3595)));
l9_3589=l9_3594;
l9_3585=l9_3589;
l9_3588=l9_3593;
}
l9_3531.y=l9_3585;
l9_3541=l9_3588;
float2 l9_3596=l9_3531;
int l9_3597=l9_3529;
int l9_3598=l9_3530;
float l9_3599=l9_3539;
float2 l9_3600=l9_3596;
int l9_3601=l9_3597;
int l9_3602=l9_3598;
float3 l9_3603=float3(0.0);
if (l9_3601==0)
{
l9_3603=float3(l9_3600,0.0);
}
else
{
if (l9_3601==1)
{
l9_3603=float3(l9_3600.x,(l9_3600.y*0.5)+(0.5-(float(l9_3602)*0.5)),0.0);
}
else
{
l9_3603=float3(l9_3600,float(l9_3602));
}
}
float3 l9_3604=l9_3603;
float3 l9_3605=l9_3604;
float4 l9_3606=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_3605.xy,bias(l9_3599));
float4 l9_3607=l9_3606;
if (l9_3537)
{
l9_3607=mix(l9_3538,l9_3607,float4(l9_3541));
}
float4 l9_3608=l9_3607;
l9_3522=l9_3608;
float l9_3609=0.0;
l9_3609=l9_3522.w;
float4 l9_3610=float4(0.0);
l9_3610.x=l9_3513;
l9_3610.y=l9_3514;
l9_3610.z=l9_3515;
l9_3610.w=l9_3609;
param_7=l9_3610;
param_8=param_7;
}
Result_N5=param_8;
float4 Value_N355=float4(0.0);
Value_N355=Result_N5;
float Output_N357=0.0;
Output_N357=Value_N355.w;
float3 Output_N358=float3(0.0);
Output_N358=mix(Value_N353.xyz,Value_N355.xyz,float3(Output_N357));
float Output_N359=0.0;
Output_N359=Value_N353.w;
float Output_N360=0.0;
Output_N360=Output_N359+Output_N357;
float Output_N361=0.0;
Output_N361=fast::clamp(Output_N360+0.001,(*sc_set0.UserUniforms).Port_Input1_N361+0.001,(*sc_set0.UserUniforms).Port_Input2_N361+0.001)-0.001;
float4 Value_N362=float4(0.0);
Value_N362=float4(Output_N358.x,Output_N358.y,Output_N358.z,Value_N362.w);
Value_N362.w=Output_N361;
float4 Export_N363=float4(0.0);
Export_N363=Value_N362;
FinalColor=Export_N363;
float param_10=FinalColor.w;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (param_10<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_3611=gl_FragCoord;
float2 l9_3612=floor(mod(l9_3611.xy,float2(4.0)));
float l9_3613=(mod(dot(l9_3612,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (param_10<l9_3613)
{
discard_fragment();
}
}
bool l9_3614=(*sc_set0.UserUniforms).isProxyMode!=0;
if (l9_3614)
{
float4 param_11=FinalColor;
if ((int(sc_ProxyAlphaOne_tmp)!=0))
{
param_11.w=1.0;
}
float4 l9_3615=fast::max(param_11,float4(0.0));
float4 param_12=l9_3615;
if (sc_ShaderCacheConstant_tmp!=0)
{
param_12.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=param_12;
return out;
}
float4 param_13=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_3616=param_13;
float4 l9_3617=l9_3616;
float l9_3618=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_3618=l9_3617.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_3618=fast::clamp(l9_3617.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_3618=fast::clamp(dot(l9_3617.xyz,float3(l9_3617.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_3618=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_3618=(1.0-dot(l9_3617.xyz,float3(0.33333001)))*l9_3617.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_3618=(1.0-fast::clamp(dot(l9_3617.xyz,float3(1.0)),0.0,1.0))*l9_3617.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_3618=fast::clamp(dot(l9_3617.xyz,float3(1.0)),0.0,1.0)*l9_3617.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_3618=fast::clamp(dot(l9_3617.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_3618=fast::clamp(dot(l9_3617.xyz,float3(1.0)),0.0,1.0)*l9_3617.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_3618=dot(l9_3617.xyz,float3(0.33333001))*l9_3617.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_3618=1.0-fast::clamp(dot(l9_3617.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_3618=fast::clamp(dot(l9_3617.xyz,float3(1.0)),0.0,1.0);
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
float l9_3619=l9_3618;
float l9_3620=l9_3619;
float l9_3621=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_3620;
float3 l9_3622=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_3616.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_3623=float4(l9_3622.x,l9_3622.y,l9_3622.z,l9_3621);
param_13=l9_3623;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_13=float4(param_13.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_3624=param_13;
float4 l9_3625=float4(0.0);
float4 l9_3626=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_3627=out.FragColor0;
float4 l9_3628=l9_3627;
l9_3626=l9_3628;
}
else
{
float4 l9_3629=gl_FragCoord;
float2 l9_3630=l9_3629.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_3631=l9_3630;
float2 l9_3632=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_3633=1;
int l9_3634=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3634=0;
}
else
{
l9_3634=in.varStereoViewID;
}
int l9_3635=l9_3634;
int l9_3636=l9_3635;
float3 l9_3637=float3(l9_3631,0.0);
int l9_3638=l9_3633;
int l9_3639=l9_3636;
if (l9_3638==1)
{
l9_3637.y=((2.0*l9_3637.y)+float(l9_3639))-1.0;
}
float2 l9_3640=l9_3637.xy;
l9_3632=l9_3640;
}
else
{
l9_3632=l9_3631;
}
float2 l9_3641=l9_3632;
float2 l9_3642=l9_3641;
float2 l9_3643=l9_3642;
float2 l9_3644=l9_3643;
float l9_3645=0.0;
int l9_3646;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_3647=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3647=0;
}
else
{
l9_3647=in.varStereoViewID;
}
int l9_3648=l9_3647;
l9_3646=1-l9_3648;
}
else
{
int l9_3649=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3649=0;
}
else
{
l9_3649=in.varStereoViewID;
}
int l9_3650=l9_3649;
l9_3646=l9_3650;
}
int l9_3651=l9_3646;
float2 l9_3652=l9_3644;
int l9_3653=sc_ScreenTextureLayout_tmp;
int l9_3654=l9_3651;
float l9_3655=l9_3645;
float2 l9_3656=l9_3652;
int l9_3657=l9_3653;
int l9_3658=l9_3654;
float3 l9_3659=float3(0.0);
if (l9_3657==0)
{
l9_3659=float3(l9_3656,0.0);
}
else
{
if (l9_3657==1)
{
l9_3659=float3(l9_3656.x,(l9_3656.y*0.5)+(0.5-(float(l9_3658)*0.5)),0.0);
}
else
{
l9_3659=float3(l9_3656,float(l9_3658));
}
}
float3 l9_3660=l9_3659;
float3 l9_3661=l9_3660;
float4 l9_3662=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_3661.xy,bias(l9_3655));
float4 l9_3663=l9_3662;
float4 l9_3664=l9_3663;
l9_3626=l9_3664;
}
float4 l9_3665=l9_3626;
float3 l9_3666=l9_3665.xyz;
float3 l9_3667=l9_3666;
float3 l9_3668=l9_3624.xyz;
float3 l9_3669=definedBlend(l9_3667,l9_3668,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_3625=float4(l9_3669.x,l9_3669.y,l9_3669.z,l9_3625.w);
float3 l9_3670=mix(l9_3666,l9_3625.xyz,float3(l9_3624.w));
l9_3625=float4(l9_3670.x,l9_3670.y,l9_3670.z,l9_3625.w);
l9_3625.w=1.0;
float4 l9_3671=l9_3625;
param_13=l9_3671;
}
else
{
float4 l9_3672=param_13;
float4 l9_3673=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_3673=float4(mix(float3(1.0),l9_3672.xyz,float3(l9_3672.w)),l9_3672.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_3674=l9_3672.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_3674=fast::clamp(l9_3674,0.0,1.0);
}
l9_3673=float4(l9_3672.xyz*l9_3674,l9_3674);
}
else
{
l9_3673=l9_3672;
}
}
float4 l9_3675=l9_3673;
param_13=l9_3675;
}
}
}
float4 l9_3676=param_13;
FinalColor=l9_3676;
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
float4 l9_3677=float4(0.0);
l9_3677=float4(0.0);
float4 l9_3678=l9_3677;
float4 Cost=l9_3678;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float3 param_14=in.varPos;
float4 param_15=FinalColor;
FinalColor=sc_OutputMotionVectorsIfNeeded(param_14,param_15,in.varStereoViewID,(*sc_set0.UserUniforms));
float4 param_16=FinalColor;
float4 l9_3679=param_16;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_3679.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=l9_3679;
return out;
}
} // FRAGMENT SHADER
