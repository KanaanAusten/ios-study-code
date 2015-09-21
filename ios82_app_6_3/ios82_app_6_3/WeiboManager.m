//
//  WeiboManager.m
//  ios82_app_6_3
//
//  Created by ying xu on 15/9/16.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "WeiboManager.h"

#import "AFNetworking.h"

#import "WZWeibo.h"
#import "TPWeibo.h"

#define token @"2.00ZtlF5ClRlmIE834199f1d32327VD"
#define weiboListURL @"https://api.weibo.com/2/statuses/public_timeline.json"

@interface WeiboManager ()

@property(nonatomic,strong)AFHTTPRequestOperationManager * afManager;

@end

@implementation WeiboManager

+(instancetype)share
{
    static WeiboManager * m = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        m = [[WeiboManager alloc]init];
    });
    return m;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.afManager = [[AFHTTPRequestOperationManager alloc]init];
        self.afManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    }
    return self;
}

-(void)requestWeiboWithCount:(int)count BlockHandle:(WMB)b
{
    
    NSString * count_str = [NSString stringWithFormat:@"%d",count];
    
    NSDictionary * dic = @{@"access_token":token,@"count":count_str};
    
    [self.afManager GET:weiboListURL parameters:dic success:^void(AFHTTPRequestOperation * op, NSData * data) {
        //1,讲网络请求获取的原始二进制数据，通过NSJSONSerialization JSON解析工具，生成OC的字典或数字的数据容器
        NSDictionary * jsonDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
        
        //2，通过statuses拿到储存微博字典的数组
        NSArray * weibosDic = jsonDic[@"statuses"];
        
        NSMutableArray * weiboObjs = [NSMutableArray arrayWithCapacity:weibosDic.count];
        
        //3，通过方法，将weibo字典，转化成微博实体对象
        for (int i = 0; i<weibosDic.count;i++)
        {
            NSDictionary * weiboDic = weibosDic[i];
            
            BaseWeibo * wb = [self weiboObjWithDic:weiboDic];
            
            [weiboObjs addObject:wb];
            
        }
        
        //4，通过Block变量，将数据返回
        b([NSArray arrayWithArray:weiboObjs]);

        
    } failure:^void(AFHTTPRequestOperation * op, NSError * error) {
        b(nil);
        //对error进行记录处理上报
        
    }];
    
}

-(BaseWeibo *)weiboObjWithDic:(NSDictionary *)dic
{
    
   if(dic[@"thumbnail_pic"] == nil)
   {
       //无图
       
       WZWeibo * w = [[WZWeibo alloc]init];
       w.name = dic[@"user"][@"name"];
       w.profile_image_url = dic[@"user"][@"profile_image_url"];
       w.text = dic[@"text"];
       
       return w;
   }
    else
    {
        //有图
        TPWeibo * w = [[TPWeibo alloc]init];
        w.name = dic[@"user"][@"name"];
        w.profile_image_url = dic[@"user"][@"profile_image_url"];
        w.text = dic[@"text"];
        w.thumbnail_pic = dic[@"thumbnail_pic"];
        
        return w;
    }
    
    return nil;
}



@end
