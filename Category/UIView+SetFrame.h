//
//  UIView+SLSetFrame.h
//  SLStaticLibrary
//

#import <UIKit/UIKit.h>


@interface UIView (SetFrame)

/**
 设置 View Frame 的 X 坐标
 @param x X 坐标
 **/
- (void)setFrameX:(CGFloat)x;

/**
 设置 View Frame 的 Y 坐标
 @param y Y 坐标
 **/
- (void)setFrameY:(CGFloat)y;

/**
 设置 View Frame 的宽度
 @param width 宽度
 **/
- (void)setFrameWidth:(CGFloat)width;

/**
 设置 View Frame 的高度
 @param height 高度
 **/
- (void)setFrameHeight:(CGFloat)height;


/**
 设置 View Frame 的 X 坐标、Y 坐标
 @param x X 坐标
 @param y Y 坐标
 **/
- (void)setFrameX:(CGFloat)x y:(CGFloat)y;

/**
 设置 View Frame 的 X 坐标、宽度
 @param x X 坐标
 @param width 宽度
 **/
- (void)setFrameX:(CGFloat)x width:(CGFloat)width;

/**
 设置 View Frame 的 X 坐标、高度
 @param x X 坐标
 @param height 高度
 **/
- (void)setFrameX:(CGFloat)x height:(CGFloat)height;

/**
 设置 View Frame 的 Y 坐标、宽度
 @param y Y 坐标
 @param width 宽度
 **/
- (void)setFrameY:(CGFloat)y width:(CGFloat)width;

/**
 设置 View Frame 的 Y 坐标、高度
 @param y Y 坐标
 @param height 高度
 **/
- (void)setFrameY:(CGFloat)y height:(CGFloat)height;

/**
 设置 View Frame 的 X 宽度、高度
 @param width 宽度
 @param height 高度
 **/
- (void)setFrameWidth:(CGFloat)width height:(CGFloat)height;


/**
 设置 View Frame 的 X 坐标、Y 坐标、宽度
 @param x X 坐标
 @param y Y 坐标
 @param width 宽度
 **/
- (void)setFrameX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width;

/**
 设置 View Frame 的 X 坐标、Y 坐标、高度
 @param x X 坐标
 @param y Y 坐标
 @param height 高度
 **/
- (void)setFrameX:(CGFloat)x y:(CGFloat)y height:(CGFloat)height;

/**
 设置 View Frame 的 X 坐标、宽度、高度
 @param x X 坐标
 @param width 宽度
 @param height 高度
 **/
- (void)setFrameX:(CGFloat)x width:(CGFloat)width height:(CGFloat)height;

/**
 设置 View Frame 的 Y 坐标、宽度、高度
 @param y Y 坐标
 @param width 宽度
 @param height 高度
 **/
- (void)setFrameY:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;

- (void)setCenterY:(CGFloat)y;

- (void)setCenterX:(CGFloat)x;

- (void)setBorder:(UIColor *)color;

- (id)initWithSize:(CGSize)size;

@end
