//
//  main.m
//  ios82_oc_9
//
//  Created by ying xu on 15/8/19.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Test.h"

//手动内存管理原则：谁申请内存，谁负责释放

//基础原则：内存无人引用，即立即释放
//例子：播放器释放
void fun1()
{
    {
        __strong Test * t = [[Test alloc]init];
    }
    int i = 0;
    i++;
}

//__strong:强引用。被强引用类型的对象指针指向的内存，绝对不会释放。

void fun2()
{
    {
        __strong Test * t1;
        {
            __strong Test * t2 = [[Test alloc]init];
            t1 = t2;
        }
        int i = 0;
        i++;
    }
    int i = 0;
    i++;

}

void fun3()
{
     Test * t1;
    {
        __strong Test * t2 = [[Test alloc]init];
        t1 = t2;
    }
    int i = 0;
    i++;
    t1 = nil;
}
//__weak:归零弱引用。如果内存，被归零弱引用类型的对象指针指向。该内存释放情况，不受此类型对象指针影响。当对象指针指向的内存释放时，该对象指针自动值nil（归零）。

void fun4()
{
    __strong Test * t1 = [[Test alloc]init];
    __weak Test * t2 = t1;
    
    t1 = nil;
    
}

//__unsafe_unretained:弱引用（错！）
void fun5()
{
    __strong Test * t1 = [[Test alloc]init];
    __unsafe_unretained Test * t2 = t1;
    
    t1 = nil;
    
}
//__autoreleasing:不能理解为自动释放类型！它需要自动释放池与之配合使用，让对象指针指向的内存在受控的情况下释放。
//被__autoreleasing指向的内存，在出自动释放池时释放
//作用：延迟释放，提前释放

void fun6()
{
    __autoreleasing Test * t;
    __strong Test * t1;
    @autoreleasepool {
        t = [[Test alloc]init];
        t1 = t;
    }
    int i= 0;
    i++;
}

//延迟释放
void fun7()
{
    @autoreleasepool
    {
        {
            __strong Test * t1 = [[Test alloc]init];
            __autoreleasing Test * t2 = t1;
        }
        int i = 0;
        i++;
    }
    int i = 0;
    i++;
}

//提前释放：内存激增(特殊情况1)
void fun8()
{
        for (int i = 0; i<100; i++)
        {
            @autoreleasepool {
                Test * t = [Test test];
                int i = 0;
                i++;
                
            }
            int i = 0;
            i++;
        }
    
    int i = 0;
    i++;
    
    
}

//内存管理中两大特殊问题：
    //一般用strong即可

    //强引用循环的解决方案
        //delegate
        //block
    //内存激增

#import "Teacher.h"
#import "Student.h"

//强引用循环：逻辑上的死循环
void fun9()
{
    {
        Student * s = [[Student alloc]init];
        Teacher * t = [[Teacher alloc]init];
        
        s.tea = t;
        t.stu = s;
        
    }
    int i = 0;
    i++;
}

typedef void(^TB)(void);
void fun10()
{
    {
        TB b;
        b = ^{
            Test * t = [[Test alloc]init];
        };
        b();
    }
    
}

//__block:block全局变量
void fun11()
{
    TB a;
    TB b;
    
    
   __block int count = 5;
    
   __block Test * t = [[Test alloc]init];
    
    a = ^{
        NSLog(@"count = %d",count);
        count = 6;
        t;
    };
    b = ^{
        NSLog(@"count = %d",count);
    };
}

int a = 5;
void funt1()
{
    NSLog(@"a = %d",a);
    a = 10;
}
void funt2()
{
    NSLog(@"a = %d",a);
}


// copy 内存操作。
// 复制过程：深复制，浅复制
//复制过程中有新内存产生---深复制（一般）
//复制过程中没有新内存产生---浅复制
void fun12()
{
    /*
    NSMutableString * str1 = [NSMutableString stringWithFormat:@"123"];
    
    NSMutableString * str2 =[str1 mutableCopy];
    
    [str1 appendFormat:@"456"];
    
    NSLog(@"str1 = %@",str1);
    NSLog(@"str2 = %@",str2);
     */
    
    NSString * str1 = @"123";
    NSString * str2 = [str1 copy];
    
    NSLog(@"str1 = %p",str1);
    NSLog(@"str2 = %p",str2);
    
}

int main(int argc, const char * argv[])
{
    /*
    a = 5;
    funt1(a);
    funt2(a);
    NSLog(@"a = %d",a);
    */
    
    /*
    int * p1;
    int * p2;
    {
        p1 = malloc(4);
        p2 = p1;
    }
    free(p1);
    p1 = NULL;
    
    *p2 = 3;
    
    
    {
        NSString * str = [[NSString alloc]init];
    }
    */
    
    /*
    __strong
    __weak
    __autoreleasing
    __unsafe_unretained
     */
    
    fun12();
    
    

  //  NSString * str = [[NSString alloc]init];

    
    
    
    

//    int * p;
//    {
//        int a;
//        p = &a;
//    }
//    *p = 5;
    
    
    
    
    
    
    
    
    return 0;
}
