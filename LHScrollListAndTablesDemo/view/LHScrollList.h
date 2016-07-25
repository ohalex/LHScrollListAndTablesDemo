//
//  LHScrollList.h
//  LHScrollListAndTablesDemo
//
//  Created by 陈汉鑫 on 15/12/30.
//  Copyright © 2015年 陈汉鑫. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LHScrollList;

@protocol LHScrollListDelegate <NSObject>
-(void)scrollList:(LHScrollList *)scrollList didClickItemAtIndex:(NSInteger)index;

@end

@interface LHScrollList : UIView


@property(copy,nonatomic)NSArray <NSString *> * titles;

@property(weak,nonatomic)id<LHScrollListDelegate> delegate;

@end
