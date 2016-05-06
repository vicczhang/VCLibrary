//
//  UILabel+THXStringAdaptive.h
//  thx
//
//  Created by zhang on 15/12/18.
//  Copyright © 2015年 THX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (StringAdaptive)

/**
 label 文字自适应
 @param textStr labelText
 @param width 最大宽度
 **/
- (void)setText:(NSString *)textStr width:(CGFloat)width;
/**
 设置label中数字的颜色、大小
 @param color 数字颜色
 @param size  数字字体大小
 **/
- (void)setRichNumberColor:(UIColor *)color FontSize:(CGFloat)size;
@end
