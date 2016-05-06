//
//  UIView+RequestMessage.h
//  RaiseLeTang
//
//  Created by zhang on 16/3/8.
//  Copyright © 2016年 Messcat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (RequestMessage)

/**
 将HUD控件隐藏并移除
 **/
- (void)hiddenHUDView;
/**
 HUD控件  显示加载中...
 **/
- (void)loadingRequest;
/**
 加载..
 **/
- (void)loadingRequestString:(NSString *)textString;
@end
