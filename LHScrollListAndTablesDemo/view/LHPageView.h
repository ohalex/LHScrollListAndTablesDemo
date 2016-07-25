//
//  LHPageView.h
//  LHScrollListAndTablesDemo
//
//  Created by 陈汉鑫 on 16/1/4.
//  Copyright © 2016年 陈汉鑫. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LHPageView;


@protocol LHPageViewDelegate <NSObject>
-(void)pageViewDidScroll:(LHPageView *)pageView withLeftPageIndex:(NSInteger)index rightPageVisibleRect:(CGFloat)ratio ;
@end

@interface LHPageView : UIView

@property(assign,readonly,nonatomic)CGPoint contentOffset;
@property(assign,readonly,nonatomic)NSInteger numberOfPages;
@property(weak,nonatomic)id<LHPageViewDelegate> delegate;

-(void)initializeWithNumberOfPages:(NSInteger)numberOfPages;
-(void)moveToPageAtIndex:(NSInteger)index;
-(void)addPageWithView:(UIView *)contentView atIndex:(NSInteger)index;
@end
