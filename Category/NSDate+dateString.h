//
//  NSDate+dateString.h
//  RaiseLeTang
//
//  Created by zhang on 16/3/2.
//  Copyright © 2016年 Messcat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (dateString)
#define getDateTime(t) [NSDate dateWithTimeIntervalSince1970:t/1000]
-(NSString *)getDateString:(NSString *)formatString;
@end
