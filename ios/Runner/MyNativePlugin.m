//
//  MyNativePlugin.m
//  Runner
//
//  Created by mac on 2024/10/26.
//

#import "MyNativePlugin.h"
#import "MyPlatformViewFactory.h"

@implementation MyNativePlugin

+ (void)registerWithRegistrar:(nonnull NSObject<FlutterPluginRegistrar> *)registrar {
    //注册插件
    //注册 FlutterIosTextLabelFactory
    //com.flutter_to_native_test_textview 为flutter 调用此  view 的标识
    return [registrar registerViewFactory:[[MyPlatformViewFactory alloc] initWithMessenger:registrar.messenger] withId:@"mqnative"];
}

@end
