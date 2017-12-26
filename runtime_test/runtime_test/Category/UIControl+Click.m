//
//  UIControl+Click.m
//  runtime_test
//
//  Created by Eve on 2017/12/26.
//  Copyright © 2017年 CSL. All rights reserved.
//

#import "UIControl+Click.h"
#import <objc/runtime.h>

@implementation UIControl (Click)

+(void)load{

    Method sys_Method = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    Method add_Method = class_getInstanceMethod(self, @selector(ll_sendAction:to:forEvent:));
    method_exchangeImplementations(sys_Method, add_Method);
}

-(void)ll_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event
{
    NSLog(@"=======后台点击了======");
    
    [self ll_sendAction:action to:target forEvent:event];
}

@end
