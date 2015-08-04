//
//  Yuan.m
//  ios82_oc_1
//
//  Created by ying xu on 15/8/4.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "Yuan.h"

@implementation Yuan

- (instancetype)initWithR:(double)r O:(CGPoint)o
{
    //我    让         谁       观察  哪一个属性
    [self addObserver:self forKeyPath:@"r" options:NSKeyValueObservingOptionNew context:@"r"];
    
    
    self = [super init];
    if (self)
    {
        self.o = o;
        self.r = r;
        
        
    }
    return self;
}

//键值观察的回调方法
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSString * con = (__bridge NSString *)context;
    if ([con isEqualToString:@"r"])
    {
        NSNumber * r_obj = change[@"new"];
        double r = [r_obj doubleValue];
        
        _s = r*r*3.14;
        _c = 2*r*3.14;
    }
    
}

//当该对象的内存释放时，此方法会自动调用
- (void)dealloc
{
    [self removeObserver:self forKeyPath:@"r"];
}


@end
