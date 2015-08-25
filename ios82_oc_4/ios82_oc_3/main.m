//
//  main.m
//  ios82_oc_3
//
//  Created by ying xu on 15/8/6.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

//OC语言特性
//1，类目:为任何一个类添加方法的机制
//类目方法如果与原方法重名，调用类目中的方法
//类目为一个类添加的方法，可以被继承
//类目可以创建一个伪类的内部
//类目不可以为一个类添加属性！！！！原因为类目不能添加成员变量

//2，延展:将(成员变量，属性，方法的)声明隐藏在.m中




//3，协议：描述，规定的事。代码中，规定方法
//制定协议者对，遵守协议者行为的规定

//制定协议
//遵守协议

//要求，掌握协议的语法及概念，能够遵守协议。




//4，Block代码块
//机制：把代码封装到一个变量中的机制

//block变量类型：代码返回类型，代码参数

//1,根据目标代码类型，定义block变量
//2,将代码赋值到block变量中
//3,调用block变量中存储的代码
//4,通过typedef 重命名block类型


//5,setter getter方法

//属性的本质：五合一的一个快捷操作。
//a,声明一个成员变量：变量名为 _属性名
//b，声明一个setter方法。
//c，实现这个setter方法
//d，声明一个getter方法
//e，实现这个getter方法


#import "Test.h"
#import "Test+Xuying.h"

#import "SubTest.h"

#import "Jianli.h"
#import "FileManager.h"

#import "Student.h"

int main(int argc, const char * argv[])
{
    Student * stu = [[Student alloc]init];

    [stu setAge:10];
    stu.age = 10;
    int a = [stu age];
    int b = stu.age;
    
    int c = [stu zhouchang];
    int d = stu.zhouchang;
    
    /*
    typedef int (^ BlockType)(int a,int b);
    
   // int (^ a)(int a,int b);
    BlockType a;
    
    a = ^(int a,int b){
        return a+b;
    };
    
    int b = a(1,2);
    
    printf("b = %d",b);
    */
    /*
    
    int (^ a)(void);
    
    a = ^(void){
        return 1+3;
    };
    
    int b = a();
    
    printf("b = %d",b);
    */
    /*
    //定义block类型
//  返回值类型  输入参数是、
    void (^a)(void);
    
    //block变量赋值
   a =^(void){
        int a;
        a = 1;
        printf("a = %d",a);
   };
    void (^b)(void);
    b = a;
    //调用block变量中存储的代码
    a();
   */
   
     /*
     
     Jianli *jl = [[Jianli alloc]init];
     
     FileManager * fm = [[FileManager alloc]init];
     
     [fm addFile:jl];
     
     */
    
   // NSString * str;
    /*
    Test * t = [[Test alloc]init];
    [t fun2];
    t.f = 10;
    NSLog(@"t.f = %d",t.f);
    */
    
    /*
    SubTest *st = [[SubTest alloc]init];
    [st fun3];
     */
    return 0;
}
