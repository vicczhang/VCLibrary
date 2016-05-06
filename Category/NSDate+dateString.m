//
//  NSDate+dateString.m
//  RaiseLeTang
//
//  Created by zhang on 16/3/2.
//  Copyright © 2016年 Messcat. All rights reserved.
//

#import "NSDate+dateString.h"

@implementation NSDate (dateString)
- (NSString *)getDateString:(NSString *)formatString
{
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:formatString];
    return [formatter stringFromDate:self];
}


@end
