//
//  main.m
//  ios82_c_7
//
//  Created by ying xu on 15/7/31.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

struct MyPoint
{
    double x;
    double y;
    struct MyPoint * next;
};

typedef struct MyPoint MyPoint;

/*
struct Yuan
{
    MyPoint o;
    double r;
};

typedef struct Yuan Yuan;

int isCover(Yuan y1,Yuan y2)
{
 
    double d_r = y1.r + y2.r;
    
    double d_o = sqrt(pow(y1.o.x-y1.o.x, 2)+pow(y1.o.y-y1.o.y, 2));
    
    if (d_o>d_r)
    {
        return 0;
    }
    else
    {
        return 1;
    }
 
}
*/


void printAllPiont(MyPoint * head)
{
    if (head == NULL)
    {
        printf("没有点在该链表中");
        return;
    }
    
    MyPoint * temp;
    temp = head;
    while (temp != NULL)
    {
        printf("point.x = %g,point.y = %g\n",temp->x,temp->y);
        temp = temp->next;
    }
}

void addPoint(MyPoint ** pHead,double x,double y)
{
    /*
    MyPoint p;
    p.x = x;
    p.y = y;
    p.next = NULL;
    */
    
   MyPoint * p = malloc(sizeof(MyPoint));
    
    p->x = x;
    p->y = y;
    p->next = NULL;
    
    if (*pHead == NULL)
    {
        *pHead = p;
    }
    else
    {
        MyPoint * tempHead;
        tempHead= *pHead;
        
        
        while (tempHead->next != NULL)
        {
            tempHead = tempHead->next;
        }
        
        tempHead->next = p;
        
    }
    
    
    
    
    
    
}

void deleteLastPoint(MyPoint ** pHead)
{
    MyPoint * tempHead = *pHead;
    
    if (tempHead->next == NULL)
    {
        *pHead = NULL;
        return;
    }
    
    while (1)
    {
        if (tempHead->next->next == NULL)
        {
            tempHead->next = NULL;
            break;
        }
        tempHead = tempHead->next;
    }
    
}



int main(int argc, const char * argv[])
{

    MyPoint * head = NULL;
    
    addPoint(&head,1,2);
    
    printAllPiont(head);
    
    addPoint(&head,2,3);
    
    printAllPiont(head);
    
    deleteLastPoint(&head);
    
    printAllPiont(head);
    
    deleteLastPoint(&head);
    
    printAllPiont(head);
    
    
    /*
    
    MyPoint p1;
    p1.x = 1;
    p1.y = 2;
    
    MyPoint p2;
    p2.x = 2;
    p2.y = 3;
    
    
    p1.next = &p2;
    p2.next = NULL;
    
    
    MyPoint * p = &p1;
    
    
    MyPoint p3;
    p3.x = 4;
    p3.y = 5;
    
    
    p2.next = &p3;
    p3.next = NULL;
    
    
  //  p2.next = NULL;
    
  //  p1.next = &p3;
    
    MyPoint p4;
    p4.x = 3;
    p4.y = 5;
    
    p2.next = &p4;
    p4.next = &p3;
    
   // printAllPiont(&p1);
    
    */
    /*
    for (int i= 0; 1; i++)
    {
        NSLog(@"x = %g",p->x);
        
        p = p->next;
        
        if (p == NULL)
        {
            break;
        }
    }
     */
    
   
    
    /*
    double x1 = p->x;//(*p).x;
    printf("x1 = %g",x1);
    
    p = p->next;
    
    double x2 = p->x;//(*p).x;
    printf("x2 = %g",x2);
    
    */
    /*
    //数组的指针和指针的数组 区别
    int a[4];
    
    //数组的指针
    int * p;
    p = a;
    
    a[0] = 1;
    NSLog(@"a[0] = %d",a[0]);
    *(a+1) = 2;
    NSLog(@"a[1] = %d",a[1]);
    
    p[2] = 3;
    NSLog(@"a[2] = %d",a[2]);
    *(p+3) = 4;
    NSLog(@"a[3] = %d",a[3]);
    */
    
    
    /*
    MyPoint parr[2];
    
    parr[0].x = 1;
    parr[0].y = 2;
    parr[1].x = 3;
    parr[1].y = 4;
    
    MyPoint * pa = parr;
    
    for (int i = 0; i<2; i++)
    {
       // NSLog(@"x = %g",parr[i].x);
        
        NSLog(@"x = %g",pa->x);
        
        pa++;
        
    }
    */
    
    
    
    return 0;
}
