//
//  T1ViewController.m
//  ios82_app_1_3
//
//  Created by ying xu on 15/8/25.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "T1ViewController.h"

@interface T1ViewController ()<UIScrollViewDelegate>

@property(nonatomic,strong)NSArray * items;

@property(nonatomic,strong)UIScrollView * scrollView;
@property(nonatomic,strong)UILabel * label;
@property(nonatomic,strong)UIPageControl * pageControl;

@property(nonatomic,strong)NSMutableArray * imageViews;

@end

@implementation T1ViewController

-(void)loadShuju
{
    UIImage * image1 = [UIImage imageNamed:@"1"];
    NSDictionary * dic1 = @{@"image":image1,@"title":@"图片1测试XXX"};
    UIImage * image2 = [UIImage imageNamed:@"2"];
    NSDictionary * dic2 =@{@"image":image2,@"title":@"图片2测试YYY"};
    
    UIImage * image3 = [UIImage imageNamed:@"3"];
    NSDictionary * dic3 =@{@"image":image3,@"title":@"图片3测试ZZZ"};
    
    self.items = @[dic1,dic2,dic3];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadShuju];
    
    
    
    self.imageViews = [NSMutableArray arrayWithCapacity:self.items.count];
    
    
    self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 50, 320, 80)];
    self.scrollView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.scrollView];
    self.scrollView.contentSize = CGSizeMake(320*self.items.count, 80);
    self.scrollView.pagingEnabled = YES;
    self.scrollView.delegate = self;
    
    for (int i = 0; i<self.items.count; i++)
    {
        UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(320* i, 0, 320, 80)];
        imageView.image = self.items[i][@"image"];
        [self.scrollView addSubview:imageView];
        [self.imageViews addObject:imageView];
    }
    
    self.pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(0, 0, 200, 20)];
    self.pageControl.center = CGPointMake(250, 130-10);
    [self.view addSubview:self.pageControl];
    self.pageControl.numberOfPages = self.items.count;
    self.pageControl.currentPage = 0;
    
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 30)];
    //self.label.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.label];
    
    self.label.center = CGPointMake(320/2, 130-15);
    
    self.label.text = self.items[0][@"title"];
    self.label.textAlignment = NSTextAlignmentCenter;
    
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //1,获取当前滑动的偏移量
    CGPoint contentOffset = scrollView.contentOffset;
    //2，
    int imageIndex = [self imageIndexWithContentOffset:contentOffset];
    //3
    self.pageControl.currentPage = imageIndex;
    
    //4
    self.label.text = self.items[imageIndex][@"title"];
    
    
}
/**
 *  通过scrollView的偏移量计算图片索引
 *
 *  @param offset scrollView的偏移量
 *
 *  @return 图片索引
 */
-(int)imageIndexWithContentOffset:(CGPoint)offset
{
    
    return (offset.x + 320/2)/320;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
