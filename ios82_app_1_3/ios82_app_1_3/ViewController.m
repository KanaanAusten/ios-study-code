//
//  ViewController.m
//  ios82_app_1_3
//
//  Created by ying xu on 15/8/25.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>

@property(nonatomic,strong)UIScrollView * scrollView;
@property(nonatomic,strong)UIImageView * imageViewA;
@property(nonatomic,strong)UIImageView * imageViewB;
@property(nonatomic,strong)UILabel * label;
@property(nonatomic,strong)UIPageControl * pageControl;


@property(nonatomic,strong)NSArray * images;
@property(nonatomic,strong)NSArray * titles;

@end

@implementation ViewController

-(void)loadShuju
{
    UIImage * image1 = [UIImage imageNamed:@"1"];
    UIImage * image2 = [UIImage imageNamed:@"2"];
    self.images = @[image1,image2];
    
    self.titles = @[@"图片1测试效果",@"图片2测试效果"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self loadShuju];
    
    self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 50, 320, 80)];
    self.scrollView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.scrollView];
    self.scrollView.contentSize = CGSizeMake(320*2, 80);
    self.scrollView.pagingEnabled = YES;
    self.scrollView.delegate = self;
    
    self.imageViewA = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 80)];
    self.imageViewA.image = self.images[0];
    [self.scrollView addSubview:self.imageViewA];
    
    self.imageViewB = [[UIImageView alloc]initWithFrame:CGRectMake(320, 0, 320, 80)];
    self.imageViewB.image = self.images[1];
    [self.scrollView addSubview:self.imageViewB];
    
    
    
    self.pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(0, 0, 200, 20)];
    self.pageControl.center = CGPointMake(250, 130-10);
    [self.view addSubview:self.pageControl];
    self.pageControl.numberOfPages = 2;
    self.pageControl.currentPage = 0;
    
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 30)];
    //self.label.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.label];
    
    self.label.center = CGPointMake(320/2, 130-15);
    
    self.label.text = self.titles[0];
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
    self.label.text = self.titles[imageIndex];
    
    
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
    if (offset.x<160)
    {
        return 0;
    }
    if (offset.x >= 160)
    {
        return 1;
    }
    return 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
