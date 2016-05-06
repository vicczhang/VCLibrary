//
//  UIView+SKSetBorder.m
//  skp2p
//
//  Created by zhang on 15/12/25.
//  Copyright © 2015年 Messcat. All rights reserved.
//

#import "UIView+SetBorder.h"
#import "VCLibrary.h"
@implementation UIView (SetBorder)


- (void)setTopBorder
{
    [self addLineWithPosition:CGPointMake(0, 0) andSize:CGSizeMake(CGRectGetWidth(self.frame), 0.5f)];
}

- (void)setBottomBorder
{
    [self addLineWithPosition:CGPointMake(0, CGRectGetHeight(self.frame)-1) andSize:CGSizeMake(CGRectGetWidth(self.frame), 0.5f)];
}

- (void)setTopAndBottomBorder
{
    [self setTopBorder];
    [self setBottomBorder];
}

- (void)setLeftBorder
{
    [self addLineWithPosition:CGPointMake(1, 0) andSize:CGSizeMake(0.5f, CGRectGetHeight(self.frame))];
}

- (void)setRightBorder
{
    [self addLineWithPosition:CGPointMake(CGRectGetWidth(self.frame)-1, 0) andSize:CGSizeMake(0.5f, CGRectGetHeight(self.frame))];
}

- (void)setLeftAndRightBorder
{
    [self setLeftBorder];
    [self setRightBorder];
}

- (void)setFourExtremesBorder
{
    self.layer.masksToBounds = YES;
    self.layer.borderColor = rbgColor(235, 235, 235, 1).CGColor;
    self.layer.borderWidth = 0.5f;
}

- (void)addLineWithPosition:(CGPoint)position andSize:(CGSize)size
{
    
    UIImage *dot_icon = [UIImage imageNamed:@"line"];
    UIImageView *line = [[UIImageView alloc] init];
    line.frame = (CGRect){position,size};
    line.image = dot_icon;
    line.alpha = 0.5f;
    [self addSubview:line];
    [self bringSubviewToFront:line];
}

@end
