//
//  UIView+SLSetFrame.m
//  SLStaticLibrary
//

#import "UIView+SetFrame.h"


@implementation UIView (SetFrame)

- (void)setFrameX:(CGFloat)x {
    self.frame = CGRectMake(x, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

- (void)setFrameY:(CGFloat)y {
    self.frame = CGRectMake(self.frame.origin.x, y, self.frame.size.width, self.frame.size.height);
}

- (void)setFrameWidth:(CGFloat)width {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height);
}

- (void)setFrameHeight:(CGFloat)height {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height);
}


- (void)setFrameX:(CGFloat)x y:(CGFloat)y {
    self.frame = CGRectMake(x, y, self.frame.size.width, self.frame.size.height);
}

- (void)setFrameX:(CGFloat)x width:(CGFloat)width {
    self.frame = CGRectMake(x, self.frame.origin.y, width, self.frame.size.height);
}

- (void)setFrameX:(CGFloat)x height:(CGFloat)height {
    self.frame = CGRectMake(x, self.frame.origin.y, self.frame.size.width, height);
}

- (void)setFrameY:(CGFloat)y width:(CGFloat)width {
    self.frame = CGRectMake(self.frame.origin.x, y, width, self.frame.size.height);
}

- (void)setFrameY:(CGFloat)y height:(CGFloat)height {
    self.frame = CGRectMake(self.frame.origin.x, y, self.frame.size.width, height);
}

- (void)setFrameWidth:(CGFloat)width height:(CGFloat)height {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, height);
}


- (void)setFrameX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width {
    self.frame = CGRectMake(x, y, width, self.frame.size.height);
}

- (void)setFrameX:(CGFloat)x y:(CGFloat)y height:(CGFloat)height {
    self.frame = CGRectMake(x, y, self.frame.size.width, height);
}

- (void)setFrameX:(CGFloat)x width:(CGFloat)width height:(CGFloat)height {
    self.frame = CGRectMake(x, self.frame.origin.y, width, height);
}

- (void)setFrameY:(CGFloat)y width:(CGFloat)width height:(CGFloat)height {
    self.frame = CGRectMake(self.frame.origin.x, y, width, height);
}

- (void)setCenterX:(CGFloat)x
{
    self.center = CGPointMake(x, self.center.y);
}

- (void)setCenterY:(CGFloat)y{
    self.center = CGPointMake(self.center.x,y);
}

- (void)setBorder:(UIColor *)color
{
    self.layer.masksToBounds = YES;
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = 0.5f;
}

- (id)initWithSize:(CGSize)size
{
    CGRect rect = (CGRect){CGPointZero, size};
    return [self initWithFrame:rect];
}
@end
