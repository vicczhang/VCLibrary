//
//  UILabel+THXStringAdaptive.m
//  thx
//
//  Created by zhang on 15/12/18.
//  Copyright © 2015年 THX. All rights reserved.
//

#import "UILabel+StringAdaptive.h"
#import "UIView+SetFrame.h"
#import "NSString+DealString.h"
@implementation UILabel (StringAdaptive)

- (void)setText:(NSString *)textStr width:(CGFloat)width;
{
    [self setFrameWidth:width];
    self.text = textStr;
    [self sizeToFit];
}

- (void)setRichNumberColor:(UIColor *)color FontSize:(CGFloat)size
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithString:self.text];
    NSString *temp = nil;
    for(int i =0; i < [attributedString length]; i++)
    {
        temp = [self.text substringWithRange:NSMakeRange(i, 1)];
        if( [temp isPureNumber]|| [temp isEqualToString:@"."]){
            [attributedString setAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                             color, NSForegroundColorAttributeName,
                                             [UIFont systemFontOfSize:size],NSFontAttributeName, nil]
                                      range:NSMakeRange(i, 1)];
        }
    }
    
    self.attributedText = attributedString;
}
@end
