//
//  NSString+RLTDealString.m
//  RaiseLeTang
//
//  Created by zhang on 16/3/4.
//  Copyright © 2016年 Messcat. All rights reserved.
//

#import "NSString+DealString.h"
#import <CommonCrypto/CommonDigest.h>
#import "pinyin.h"
@implementation NSString (DealString)
#define LOWERCASE_START 65
#define LOWERCASE_END 90
#define UPPERCASE_START 97
#define UPPERCASE_END 122
- (NSString *)removeHTML{
    
    NSScanner *theScanner;
    NSString *text = nil;
    NSString *html = self;
    theScanner = [NSScanner scannerWithString:html];
    while ([theScanner isAtEnd] == NO) {
        [theScanner scanUpToString:@"<" intoString:NULL] ;
        [theScanner scanUpToString:@">" intoString:&text] ;
        html = [html stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@>", text] withString:@""];
    }
    return html;
    
}

- (NSString *)md5HexDigest{
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5( cStr, strlen(cStr), digest );
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [result appendFormat:@"%02x", digest[i]];
    
    return result.lowercaseString;
}

- (NSString *)contentHtmlStyle {
    //    content = [self getIframeLabel:content];
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"<img[^>]*/>" options:NSRegularExpressionAllowCommentsAndWhitespace error:nil];
    
    NSString* content = self;
    //获取img标签，并去掉img的所有格式，再设定img的宽
    NSArray *result = [regex matchesInString:content options:NSMatchingReportCompletion range:NSMakeRange(0, content.length)];
    NSMutableArray *arrayUrl = [NSMutableArray array];
    NSMutableArray *arrayImgHtml = [NSMutableArray array];
    for (NSTextCheckingResult *item in result) {
        NSString *imgHtml = [content substringWithRange:[item rangeAtIndex:0]];
        [arrayImgHtml addObject:imgHtml];
        NSArray *tmpArray = nil;
        if ([imgHtml rangeOfString:@"src=\""].location != NSNotFound) {
            tmpArray = [imgHtml componentsSeparatedByString:@"src=\""];
        } else if ([imgHtml rangeOfString:@"src="].location != NSNotFound) {
            tmpArray = [imgHtml componentsSeparatedByString:@"src="];
        }
        
        if (tmpArray.count >= 2) {
            NSString *src = tmpArray[1];
            
            NSUInteger loc = [src rangeOfString:@"\""].location;
            if (loc != NSNotFound) {
                src = [src substringToIndex:loc];
                [arrayUrl addObject:src];
            }
        }
    }
    for (int i = 0; i < arrayImgHtml.count; i++) {
        NSString *urlStr = arrayUrl[i];
        //NSString *widthStr = [NSString stringWithFormat:@"width=\"%f\" ",applicationWidth - 20];
        //        [newImgHtml insertString:widthStr atIndex:5];
        NSString *newImgHtml = [NSString stringWithFormat:@"<img src=\"%@\"  width=100%%/>", urlStr];
        content = [content stringByReplacingOccurrencesOfString:arrayImgHtml[i] withString:newImgHtml];
    }
    content = [content stringByReplacingOccurrencesOfString:@"rgb(255, 255, 255)" withString:@"#f8f4e7"];
    NSString *contentHtmlStyle = [NSString stringWithFormat:
                                  @"<body style=\"background-color:#f8f4e7;\"> <div style=\"color:#000;-webkit-text-size-adjust :none;background-color:#f8f4e7;width:100%%;min-height:100%%; line-height:1.5em;word-break:break-all ; font-size:15px;\">%@</div></body>",content];
    return contentHtmlStyle;
}


//- (NSString *)setNumberType:(NSString *)type
//{
//    NSMutableString *attributedString = [NSMutableString stringWithString:@""];
//    NSString *temp = nil;
//    NSString *next = nil;
//    for(int i =0; i < [self length]; i++)
//    {
//        temp = [self substringWithRange:NSMakeRange(i, 1)];
//        if (i<self.length-1) {
//            
//            next = [self substringWithRange:NSMakeRange(i+1, 1)];
//            //|| [temp isEqualToString:@"."]
//            if( (![next isPureNumber] && [temp isPureNumber]) &&[next isEqualToString:@"."]){
//                [attributedString appendString:[NSString stringWithFormat:@"%@%@",temp,type]];
//            }else{
//                [attributedString appendString:temp];
//            }
//        }else{
//            [attributedString appendString:temp];
//        }
//        if (i==self.length-1) {
//            [attributedString appendString:type];
//        }
//    }
//    return [attributedString copy];
//}

- (BOOL)isPureNumber{
    [NSCharacterSet decimalDigitCharacterSet];
    
    if ([self stringByTrimmingCharactersInSet: [NSCharacterSet decimalDigitCharacterSet]].length >0) {
        
        return NO;
        
    }else{
        
        return YES;
        
    }
}

- (NSString *)convertPinYinFirstLetters {
    if (![NSString isNullOrEmpty:self]) {
        NSString *result = @"";
        for (NSUInteger i = 0, count = self.length; i < count; ++i) {
            unichar c = [self characterAtIndex:i];
            if (!((c >= LOWERCASE_START && c <= LOWERCASE_END) ||
                  (c >= UPPERCASE_START && c <= UPPERCASE_END))) {
                c = pinyinFirstLetter(c);
            }
            
            result = [result stringByAppendingFormat:@"%c", c];
        }
        return [result uppercaseString];
    }
    return self;
}

+ (BOOL)isNullOrEmpty:(NSString *)value {
    // 判断是否为 nil 或长度为0
    return !value || [value length] == 0;
}

@end
