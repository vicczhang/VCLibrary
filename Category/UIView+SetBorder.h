//
//  UIView+SKSetBorder.h
//  skp2p
//
//  Created by zhang on 15/12/25.
//  Copyright © 2015年 Messcat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SetBorder)
/**
 设置上边线条
 **/
- (void)setTopBorder;
/**
 设置下边线条
 **/
- (void)setBottomBorder;
/**
 设置上、下线条
 **/
- (void)setTopAndBottomBorder;
/**
 设置左边线条
 **/
- (void)setLeftBorder;
/**
 设置右边线条
 **/
- (void)setRightBorder;
/**
 设置左、右线条
 **/
- (void)setLeftAndRightBorder;
/**
 设置边框
 **/
- (void)setFourExtremesBorder;
/**
 加线条
 **/
- (void)addLineWithPosition:(CGPoint)position andSize:(CGSize)size;
@end
