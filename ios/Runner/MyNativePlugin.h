//
//  MyNativePlugin.h
//  Runner
//
//  Created by mac on 2024/10/26.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyNativePlugin : NSObject<FlutterPlugin>

+ (void)registerWithRegistrar:(nonnull NSObject<FlutterPluginRegistrar> *)registrar;

@end

NS_ASSUME_NONNULL_END
