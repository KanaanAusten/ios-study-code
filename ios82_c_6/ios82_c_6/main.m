//
//  main.m
//  ios82_c_6
//
//  Created by ying xu on 15/7/30.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

void fun1(int * a,int * b)
{
    int * temp;
    temp = a;
    a = b;
    b = temp;
}

void fun2(int * a,int * b)
{
    int  temp;
    temp = *a;
    *a = *b;
    *b = temp;
}

void fun3(int ** a, int ** b)
{
    int * temp;
    temp = *a;
    *a = *b;
    *b = temp;
}

void fun4(int **a ,int ** b)
{
    int temp;
    temp = **a;
    **a = **b;
    **b = temp;
}

void fun5(int ** a,int ** b)
{
    int temp;
    temp = **a;
    **a = **b;
    **b = temp;
    
    int * temp1;
    temp1 = *a;
    *a = *b;
    *b = temp1;
    
}

int main(int argc, const char * argv[])
{
    int a = 5;
    int b = 6;
    int * pa = &a;
    int * pb = &b;

    

    fun5(&pa,&pb);
    printf("a = %d,b = %d\n",a,b);
    //a = 6,b = 5;
    printf("*pa = %d,*pb = %d\n",*pa,*pb);
    //*pa = 5 *pb = 6
    /*
    int a;
    a = 1;
    
    int * p;
    
    p = &a;
    
    *p = 2;
    
    printf("a = %d",a);
    */
   
    return 0;
}
