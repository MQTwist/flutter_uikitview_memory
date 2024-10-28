//
//  MyView.m
//  Runner
//
//  Created by mac on 2024/10/26.
//

#import "MyView.h"

@implementation MyView

- (instancetype)initWithWithFrame:(CGRect)frame
                   viewIdentifier:(int64_t)viewId
                        arguments:(id _Nullable)args
                  binaryMessenger:(NSObject<FlutterBinaryMessenger>*)messenger {
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@">>>native MyView init");
        self.backgroundColor = UIColor.redColor;
    }
    return self;
}

- (void)dealloc {
    NSLog(@">>>native MyView dealloc");
}

- (nonnull UIView *)view {
    return self;
}


@end
