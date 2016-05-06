//
//  AlertBaseController.m
//  RaiseLeTang
//
//  Created by zhang on 16/3/18.
//  Copyright © 2016年 Messcat. All rights reserved.
//

#import "AlertBaseController.h"
@interface AlertBaseController ()<UIActionSheetDelegate>

@end
@implementation AlertBaseController
#define actionAlertMessageTag 8000
#define actionAlertInputTag 8001

- (void)actionAlertMessage:(NSString *)message{

    if (floor(NSFoundationVersionNumber) < NSFoundationVersionNumber_iOS_8_0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:message delegate:self cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
        alert.tag = actionAlertMessageTag;
        [alert show];
    }else{
        UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"提示" message:message preferredStyle:UIAlertControllerStyleAlert];
        
//        UIAlertAction *cancleAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//            
//        }];
        
        UIAlertAction *otherAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            //回调方法
            self.alertCallBack();
        }];
        
        // Add the actions.
//        [alertController addAction:cancleAction];
        [alertController addAction:otherAction];
        
        [self presentViewController:alertController animated:YES completion:nil];
    }
}

- (void)actionAlertWithCancleMessage:(NSString *)message{
    
    if (floor(NSFoundationVersionNumber) < NSFoundationVersionNumber_iOS_8_0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:message delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        alert.tag = actionAlertMessageTag;
        [alert show];
    }else{
        UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"提示" message:message preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *cancleAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            
        }];
        
        UIAlertAction *otherAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            //回调方法
            self.alertCallBack();
        }];
        
        // Add the actions.
        [alertController addAction:cancleAction];
        [alertController addAction:otherAction];
        
        [self presentViewController:alertController animated:YES completion:nil];
    }
}

- (void)actionAlertTextInput:(NSString *)title submitBtnTitle:(NSString *)btnTitle{
    if (floor(NSFoundationVersionNumber) < NSFoundationVersionNumber_iOS_8_0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:nil delegate:self cancelButtonTitle:@"取消" otherButtonTitles:btnTitle,nil];
        alert.alertViewStyle = UIAlertViewStylePlainTextInput;
        alert.tag = actionAlertInputTag;
        [alert show];
    }else{
        UIAlertController* alertController = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleAlert];
        
        [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField){
            
        }];
        
        UIAlertAction *cancleAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        }];
        UIAlertAction *otherAction = [UIAlertAction actionWithTitle:btnTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            //回调方法
            UITextField *textField = alertController.textFields.firstObject;
            if (!textField.text) {
                textField.text = @"";
            }
            self.alertInputCallBack(textField.text);
        }];
        
        // Add the actions.
        [alertController addAction:cancleAction];
        [alertController addAction:otherAction];
        [self presentViewController:alertController animated:YES completion:nil];
    }
}

- (void)ActionSheetWithButtons:(NSArray *)itemTitles{
    
    if (floor(NSFoundationVersionNumber) < NSFoundationVersionNumber_iOS_8_0){
        
        UIActionSheet *sheet = [[UIActionSheet alloc] init];
        sheet.delegate = self;
        for (NSString* title in itemTitles) {
            [sheet addButtonWithTitle:title];
        }
        [sheet showInView:self.view];
        
    }else{
        UIAlertController * alertController = [UIAlertController alertControllerWithTitle: nil                                                                             message: nil                                                                       preferredStyle:UIAlertControllerStyleActionSheet];
        
        for (NSString* title in itemTitles) {
            if ([title isEqualToString:@"取消"]) {
                [alertController addAction: [UIAlertAction actionWithTitle: @"取消" style: UIAlertActionStyleCancel handler:nil]];
            }else{
                [alertController addAction: [UIAlertAction actionWithTitle: title style: UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//                    action.title
                    self.actionSheetCallBack(action.title);
                }]];
            }
            
        }
        
        [self presentViewController: alertController animated: YES completion: nil];
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (alertView.tag == actionAlertMessageTag) {
        if (buttonIndex == 0) {
//            self.alertCallBack();
        }else{
            self.alertCallBack();
        }
    }else if (alertView.tag == actionAlertInputTag){
        if (buttonIndex == 0) {
            
        }else{
            UITextField *tf=[alertView textFieldAtIndex:0];//获得输入框
            NSString* tfText = tf.text;
            if (!tfText) {
                tfText = @"";
            }
            self.alertInputCallBack(tfText);
        }
    }
    
    
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
//    actionSheet.title
    self.actionSheetCallBack(actionSheet.title);
}

@end
