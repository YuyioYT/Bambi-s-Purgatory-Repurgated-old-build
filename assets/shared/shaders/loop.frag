#pragma header
vec2 uv = openfl_TextureCoordv.xy;
vec2 fragCoord = openfl_TextureCoordv*openfl_TextureSize;
vec2 iResolution = openfl_TextureSize;
uniform float iTime;
uniform sampler2D iChannel1;
#define iChannel0 bitmap
uniform vec4 iMouse;
#define texture flixel_texture2D
#define fragColor gl_FragColor
#define mainImage main
bool DROSTE_MODE = true;
#define PI 3.141592653589793238462643383279502884197169
void mainImage()
{
	vec2 uv = fragCoord.xy / iResolution.xy;
    float atans = (atan(uv.x-0.5,uv.y-0.5)+PI)/(PI*2.);
    float time = iTime;
    
    //Zooming
    uv -= .5;
    if (DROSTE_MODE) {
        uv *= (1./pow(4.,fract((time+atans)/2.)));
    } else {
        uv *= (1./pow(4.,fract(time/.6)));
    }
    uv += .5;
    //-------
    
    vec2 tri = abs(1.-(uv*2.));
    if (DROSTE_MODE) {
        tri = (vec2(length(uv-.5)))*2.;
    }
	float zoom = min(pow(2.,floor(-log2(tri.x))),pow(2.,floor(-log2(tri.y))));
	float zoom_id = log2(zoom)+1.;
	float div = ((pow(2.,((-zoom_id)-1.))*((-2.)+pow(2.,zoom_id))));
	vec2 uv2 = (((uv)-(div))*zoom);
	fragColor = vec4(texture(iChannel0,uv2).rgb,flixel_texture2D(bitmap, uv).a);
}