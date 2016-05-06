//
//  RLTNetWorkingHelper.h
//  RaiseLeTang
//
//  Created by zhang on 16/3/2.
//  Copyright © 2016年 Messcat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetWorkingHelper : NSObject

/**
 Get 请求
 @param url 请求地址
 @param parameters 参数
 @param successBlock 成功时的回调函数
 @param failureBlock 失败时的回调函数
 **/
+ (void)getRequestUrl:(NSString *)url parameters:(id)parameters success:(void (^)(id responseData))successBlock failure:(void (^)())failureBlock;
/**
 Post 请求
 @param url 请求地址
 @param parameters 参数
 @param successBlock 成功时的回调函数
 @param failureBlock 失败时的回调函数
 **/
+ (void)postRequestUrl:(NSString *)url parameters:(id)parameters success:(void (^)(id responseData))successBlock failure:(void (^)())failureBlock;
@end
