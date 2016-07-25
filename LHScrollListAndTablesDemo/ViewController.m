//
//  ViewController.m
//  LHScrollListAndTablesDemo
//
//  Created by 陈汉鑫 on 15/12/30.
//  Copyright © 2015年 陈汉鑫. All rights reserved.
//

#import "ViewController.h"
#import "LHScrollList.h"
#import "LHPageView.h"
@interface ViewController ()<UIGestureRecognizerDelegate,LHPageViewDelegate>

@end

@implementation ViewController
{
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //self.view.backgroundColor = [UIColor whiteColor];
    //self.automaticallyAdjustsScrollViewInsets = NO;
//    UIImageView * iv = [[UIImageView alloc]initWithFrame:self.view.frame];
//    NSString * path = [[NSBundle mainBundle] pathForResource:@"a" ofType:@"jpg"];
//    iv.image = [UIImage imageWithContentsOfFile:path];
//    
//    [self.view addSubview:iv];
    LHScrollList * list = [[LHScrollList alloc]init];
    
    [self.view addSubview:list];
    
    list.frame=CGRectMake(0, 100,375 , 70);
    [list setTitles:@[@"hello",@"from",@"theOther",@"side",@"I",@"must",@"callit",@"thounsands",@"time",@"to",@"turn",@"you",@"i'm sorry"]];
//
//    UIPanGestureRecognizer * pan = [UIPanGestureRecognizer new];
//    [pan addTarget:self action:@selector(dragToMove:)];
//    //pan.delegate = self;
//    [list addGestureRecognizer:pan];
    
//    
//    LHPageView * pageView = [[LHPageView alloc]initWithFrame:self.view.frame];
//    pageView.delegate = self;
//    [pageView initializeWithNumberOfPages:5];
//    
//    UIView * view1 = [[UIView alloc]init];
//    view1.backgroundColor = [UIColor orangeColor];
//    [pageView addPageWithView:view1 atIndex:0];
//   
//    UIView * view2 = [[UIView alloc]init];
//    view2.backgroundColor = [UIColor redColor];
//    [pageView addPageWithView:view2 atIndex:1];
//
//    UIView * view3 = [[UIView alloc]init];
//    view3.backgroundColor = [UIColor blueColor];
//    [pageView addPageWithView:view3 atIndex:2];
//    UIView * view4 = [[UIView alloc]init];
//    view4.backgroundColor = [UIColor greenColor];
//    [pageView addPageWithView:view4 atIndex:3];
//
//    [self.view addSubview:pageView];
//    [pageView moveToPageAtIndex:2];
    
}
-(void)pageViewDidScroll:(LHPageView *)pageView withLeftPageIndex:(NSInteger)index rightPageVisibleRect:(CGFloat)ratio
{
    NSLog(@"%ld %f",index,ratio);
}
-(void)dragToMove:(UIPanGestureRecognizer *)pan
{
    
    CGPoint delta=[pan translationInView:self.view];
    
    
    pan.view.center= CGPointMake(pan.view.center.x+delta.x, pan.view.center.y+delta.y);
        
    [pan setTranslation:CGPointZero inView:self.view];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
