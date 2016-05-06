//
//  NSString+RLTDealString.h
//  RaiseLeTang
//
//  Created by zhang on 16/3/4.
//  Copyright © 2016年 Messcat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (DealString)

/**
 删除字符串的HTML标签
 **/
- (NSString *)removeHTML;

/**
 MD5加密
 **/
- (NSString *)md5HexDigest;

//- (NSString *)setNumberType:(NSString *)type;

/**
 字符串是否是纯数字
 **/
- (BOOL)isPureNumber;

- (NSString *)contentHtmlStyle;

/**
 获取字(拼音)的首字母
 **/
- (NSString *)convertPinYinFirstLetters;
@end
