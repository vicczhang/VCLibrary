//
//  UILabel+TextShake.m
//  TestDownload
//
//  Created by zhang on 16/1/28.
//  Copyright © 2016年 Vic. All rights reserved.
//

#import "UILabel+TextShake.h"

@implementation UILabel (TextShake)

-(void)shakeType:(ShakeDirection)type
{
    [UIView animateKeyframesWithDuration:0.2f delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        self.alpha = 1.0f;
        
    }completion:^(BOOL finished){
        if(finished){
            //文字震动
            [self shakeWithTime:10 direction:1 currentTimes:0 delta:5 speed:0.04f shakeType:type];
            [UIView animateKeyframesWithDuration:4.0f delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
                self.alpha = 0;
            }completion:nil];
        }
    }];
}

- (void)shakeWithTime:(int)times direction:(int)direction currentTimes:(int)current delta:(CGFloat)delta speed:(NSTimeInterval)interval shakeType:(ShakeDirection)shakeDirection
{
    [UIView animateWithDuration:interval animations:^{
        self.transform = (shakeDirection == ShakeDirectionHorizontal) ? CGAffineTransformMakeTranslation(delta * direction, 0) : CGAffineTransformMakeTranslation(0, delta * direction);
    } completion:^(BOOL finished) {
        if(current >= times) {
            self.transform = CGAffineTransformIdentity;
            return;
        }
        [self shakeWithTime:(times - 1)
                   direction:direction * -1
                currentTimes:current + 1
                   delta:delta
                    speed:interval
              shakeType:shakeDirection];
    }];
}

@end
