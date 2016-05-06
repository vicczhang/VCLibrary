//
//  UIView+AlertMessage.m
//  RaiseLeTang
//
//  Created by zhang on 16/3/21.
//  Copyright © 2016年 Messcat. All rights reserved.
//

#import "UIView+AlertMessage.h"

@implementation UIView (AlertMessage)

- (void)alertMessage:(NSString *)message
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:message delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alertView show];
}

@end
