//
//  VCLibrary.h
//  projectGather
//
//  Created by zhang on 16/5/6.
//  Copyright © 2016年 Messcat. All rights reserved.
//

#ifndef VCLibrary_h
#define VCLibrary_h
/* the app Color */
#define rbgColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]

#define defaultClearColor [UIColor clearColor]
/* the app Size */
#define applicationWidth [UIScreen mainScreen ].applicationFrame.size.width
#define applicationHeight [UIScreen mainScreen ].applicationFrame.size.height

#import "UILabel+StringAdaptive.h"
#import "NetWorkingHelper.h"
#import "UILabel+TextShake.h"
#import "UIView+SetBorder.h"
#import "UIView+SetFrame.h"
#import "NSString+DealString.h"
#import "NSDate+dateString.h"
#import "UIButton+Countdown.h"
#import "UIView+AlertMessage.h"
#import "UIView+RequestMessage.h"

#import "ADbaseViewController.h"
#import "AlertBaseController.h"
#endif /* VCLibrary_h */
