//
//  UILabel+Color.m
//  runtime_test
//
//  Created by Eve on 2017/12/26.
//  Copyright © 2017年 CSL. All rights reserved.
//

#import "UILabel+Color.h"
#import <objc/runtime.h>

@interface UILabel ()

@end

@implementation UILabel (Color)

- (void)setLl_bgColor:(UIColor *)ll_bgColor
{
    objc_setAssociatedObject(self, @selector(ll_bgColor), ll_bgColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    self.backgroundColor = ll_bgColor;
}

-(UIColor *)ll_bgColor{
    return objc_getAssociatedObject(self, _cmd);
}

@end
