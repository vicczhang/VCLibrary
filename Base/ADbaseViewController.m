//
//  ADbaseViewController.m
//  RaiseLeTang
//
//  Created by zhang on 16/3/14.
//  Copyright © 2016年 Messcat. All rights reserved.
//

#import "ADbaseViewController.h"
#import "VCLibrary.h"
@interface ADbaseViewController ()

@end
@implementation ADbaseViewController

- (void)setImages:(NSArray *)images{
    
    for (NSInteger i = 0; i<[images count] ; i++) {
        
        UIImageView *ivWelcome = [[UIImageView alloc]initWithFrame:CGRectMake(i*CGRectGetWidth(self.welcomeSc.frame), 0, CGRectGetWidth(self.welcomeSc.frame), CGRectGetHeight(self.welcomeSc.frame))];
        ivWelcome.image = [UIImage imageNamed:images[i]];
        
        if(i==images.count-1){
            ivWelcome.userInteractionEnabled = YES;
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(gotoLogin:)];
            tap.numberOfTapsRequired = 1;
            tap.numberOfTouchesRequired = 1;
            [ivWelcome addGestureRecognizer:tap];
        }
        
        [self.welcomeSc addSubview:ivWelcome];
    }
    
    self.welcomeSc.contentSize = CGSizeMake(CGRectGetWidth(self.welcomeSc.frame) * images.count, CGRectGetHeight(self.welcomeSc.frame));
    
}

- (UIScrollView *)welcomeSc{
    if (!_welcomeSc) {
        
        _welcomeSc = [[UIScrollView alloc]init];
        _welcomeSc.pagingEnabled=YES;
        _welcomeSc.bounces=NO;
        _welcomeSc.showsHorizontalScrollIndicator = NO;
        _welcomeSc.backgroundColor = defaultClearColor;
        _welcomeSc.frame=CGRectMake(0, 0, applicationWidth,applicationHeight);
    }
    return _welcomeSc;
}

- (void)gotoLogin:(UITapGestureRecognizer *)tap
{
    NSLog(@".........UITapGestureRecognizer");
}
@end
