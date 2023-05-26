uniform float2 screenSize;
Texture2D<float4> envmap : register(t0);
SamplerState _envmap_sampler : register(s0);
uniform float envmapStrength;

static float4 gl_FragCoord;
static float3 normal;
static float4 fragColor;

struct SPIRV_Cross_Input
{
    float3 normal : TEXCOORD0;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 fragColor : SV_Target0;
};

void frag_main()
{
    float3 n = normalize(normal);
    float2 texco = gl_FragCoord.xy / screenSize;
    float3 ImageTexture_Color_res = envmap.Sample(_envmap_sampler, float2(texco.x, 1.0f - texco.y)).xyz * envmapStrength;
    fragColor = float4(ImageTexture_Color_res.x, ImageTexture_Color_res.y, ImageTexture_Color_res.z, fragColor.w);
    fragColor.w = 0.0f;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    normal = stage_input.normal;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.fragColor = fragColor;
    return stage_output;
}
