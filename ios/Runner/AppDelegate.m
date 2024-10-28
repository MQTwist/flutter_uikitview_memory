#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import "MyNativePlugin.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [GeneratedPluginRegistrant registerWithRegistry:self];
    [MyNativePlugin registerWithRegistrar:[self registrarForPlugin:@"MyNativePlugin"]];
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
