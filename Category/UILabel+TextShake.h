//
//  UILabel+TextShake.h
//  TestDownload
//
//  Created by zhang on 16/1/28.
//  Copyright © 2016年 Vic. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, ShakeDirection) {
    ShakeDirectionHorizontal = 0,
    ShakeDirectionVertical
};
@interface UILabel (TextShake)

- (void)shakeType:(ShakeDirection)type;
@end
