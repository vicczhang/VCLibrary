//
//  AlertBaseController.h
//  RaiseLeTang
//
//  Created by zhang on 16/3/18.
//  Copyright © 2016年 Messcat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlertBaseController : UIViewController

//点击确定的事件回调
@property (nonatomic, strong) void(^alertCallBack)();
//带输入框的回调
@property (nonatomic, strong) void(^alertInputCallBack)(NSString* inputText);
//sheet回调
@property (nonatomic, strong) void(^actionSheetCallBack)(NSString* sheetTitle);

- (void)actionAlertMessage:(NSString *)message;
/**
 带取消按钮
 **/
- (void)actionAlertWithCancleMessage:(NSString *)message;


//UIActionSheet
- (void)ActionSheetWithButtons:(NSArray *)itemTitles;

//输入框  确定按钮
- (void)actionAlertTextInput:(NSString *)title submitBtnTitle:(NSString *)btnTitle;

@end
