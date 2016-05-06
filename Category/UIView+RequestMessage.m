//
//  UIView+RequestMessage.m
//  RaiseLeTang
//
//  Created by zhang on 16/3/8.
//  Copyright © 2016年 Messcat. All rights reserved.
//

#import "UIView+RequestMessage.h"
#import "MBProgressHUD.h"
#define MBProgressHUDTag 111112000
@implementation UIView (RequestMessage)

- (void)loadingRequest
{
    MBProgressHUD  *hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
    hud.labelText = @"加载中";
    hud.margin    = 20.f;
    hud.tag = MBProgressHUDTag;
}

- (void)loadingRequestString:(NSString *)textString{
    MBProgressHUD  *hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
    hud.labelText = textString;
    hud.margin    = 20.f;
    hud.tag = MBProgressHUDTag;
}

- (void)hiddenHUDView
{
    for (MBProgressHUD *hud in self.subviews) {
        if ([hud isKindOfClass:[MBProgressHUD class]] && hud.tag == MBProgressHUDTag) {
            hud.hidden = YES;
            [hud removeFromSuperview];
        }
    }
}
@end
