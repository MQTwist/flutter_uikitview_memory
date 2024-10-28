//
//  MyPlatformViewFactory.m
//  Runner
//
//  Created by mac on 2024/10/26.
//

#import "MyPlatformViewFactory.h"
#import "MyView.h"

@interface MyPlatformViewFactory ()

@property (nonatomic, strong) NSObject<FlutterBinaryMessenger> *messenger;

@end

@implementation MyPlatformViewFactory

- (instancetype)initWithMessenger:(NSObject<FlutterBinaryMessenger> *)messager{
    self = [super init];
    if (self) {
        _messenger = messager;
    }
    return self;
}

//设置参数的编码方式
- (NSObject<FlutterMessageCodec> *)createArgsCodec{
    return [FlutterStandardMessageCodec sharedInstance];
}

//用来创建 ios 原生view
- (nonnull NSObject<FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id _Nullable)args {
    //args 为flutter 传过来的参数
    
    return [[MyView alloc] initWithWithFrame:frame viewIdentifier:viewId arguments:args binaryMessenger:_messenger];
}

@end
