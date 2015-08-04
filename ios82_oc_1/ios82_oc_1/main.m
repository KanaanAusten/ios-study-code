//
//  main.m
//  ios82_oc_1
//
//  Created by ying xu on 15/8/4.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Yuan.h"

/*
 1，类的声明
 2，属性声明(成员变量，内部数据)
    (属性控制符：线程同步类，内存模式，读写权限)
 3，方法声明及实现
 4，对象的创建
 5，对象通过点语法调用属性
 6，对象直接调用方法
 
 7，自定义初始化方法
 8，便利构造器方法(之前很重要，现在不重要)
 9，self关键字
 
 10，键值编码:古老赋值方式
 11，键值观察
 12，销毁处理
 
 */


@interface Sanjiaoxing : NSObject
{
    //成员变量默认访问权限：受保护的
    double _d;//内部数据
}

//默认选中属性
@property double a;
@property double b;
@property double c;

//方法声明
//方法类型：+，-。
//减号方法表示，此方法为对象指针调用(默认)
//加号方法表示，此方法为类直接调用（3种特殊情况：便利构造器，单例，纯过程封装）
//返回值类型
//方法名
//参数描述+参数类型+参数名（可选）

-(double)zhouchang;

-(instancetype)initWithA:(double)a B:(double)b C:(double)c;

+(instancetype)sanjiaoxingWithA:(double)a B:(double)b C:(double)c;

/*
-(void)test;
-(void)testA:(double)a;
-(void)testA:(double)a B:(double)b;
-(void)testA:(double)a B:(double)b C:(double)c;
*/


@end


@implementation Sanjiaoxing

+(instancetype)sanjiaoxingWithA:(double)a B:(double)b C:(double)c
{
    __autoreleasing Sanjiaoxing * s = [[Sanjiaoxing alloc]initWithA:a B:b C:c];
    return s;
}

- (instancetype)initWithA:(double)a B:(double)b C:(double)c
{
    self = [super init];
    if (self)
    {
        self.a = a;
        self.b = b;
        self.c = c;
    }
    return self;
}

-(double)zhouchang
{
    /*
    //类的内部
    //在内部方法成员变量
    _d = 10;
    
    //在内部访问属性两种方法
    //1,通过属性生成的成员变量来访问
    //此中方法为通用方法，但只建议在属性为readonly情况下在写入数值时使用
    _a = 3;
    
    //2,通过self关键字和点语法进行访问，（除属性为readonly情况下在写入数值时）
    self.a = 4;
    int aa = self.a;
    
    //self：本质为一个隐含参数，在对象指针调用此方法时，self被赋值为该对象指针。
    */
    
    double s;
    s = self.a + self.b + self.c;
    return s;
}

@end



int main(int argc, const char * argv[])
{
    /*
    //1,创建对象指针
    Sanjiaoxing * s;
    //2，分配对象内存，且让对象指针，指向对象内存
    s = [Sanjiaoxing alloc];
    //3,对对象内存进行初始化操作
    s = [s init];
    */
    
    /*
    Sanjiaoxing * s1 = [[Sanjiaoxing alloc]init];
    
    s1.a = 10;
    s1.b = 11;
    s1.c = 12;
    
    double c1 = [s1 zhouchang];
    
    NSLog(@"c1 = %g",c1);
    
    Sanjiaoxing * s2 = [[Sanjiaoxing alloc]init];
    s2.a = 20;
    s2.b = 30;
    s2.c = 40;
    double c2 = [s2 zhouchang];
    NSLog(@"c2 = %g",c2);
    */
    
    /*
    //自定义初始化方法的调用
    Sanjiaoxing * s3 = [[Sanjiaoxing alloc]initWithA:10 B:11 C:12];
    
    double c3 = [s3 zhouchang];
    NSLog(@"c3 = %g",c3);
    
    //使用便利构造器创建对象
    Sanjiaoxing * s4 = [Sanjiaoxing sanjiaoxingWithA:11 B:12 C:13];

     */
    
    
    Yuan * y1 = [[Yuan alloc]initWithR:3 O:CGPointMake(0, 0)];
    
    NSLog(@"c = %g",y1.c);
    
    //属性赋值
    y1.r = 4;
    
    NSLog(@"c = %g",y1.c);
    
    //键值编码赋值方式
    [y1 setValue:@5 forKey:@"r"];

    NSLog(@"c = %g",y1.c);
    
    
    
    
    
    return 0;
}
