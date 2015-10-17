//
//  FetchMoney.m
//  多线程_82
//
//  Created by Roberts on 15/10/15.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
//

#import "FetchMoney.h"

@implementation FetchMoney

- (void)main
{
    static int money = 10000;
    NSLog(@"%@来取钱，此时余额为%d",self.myName,money);
    money -= 2000;
    NSLog(@"%@取完钱啦，此时余额为%d",self.myName,money);
}

@end
