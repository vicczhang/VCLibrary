//
//  RLTNetWorkingHelper.m
//  RaiseLeTang
//
//  Created by zhang on 16/3/2.
//  Copyright © 2016年 Messcat. All rights reserved.
//

#import "NetWorkingHelper.h"
#import "AFNetworking.h"
#import "AFNetworking/AFURLRequestSerialization.h"
#import "AFNetworking/AFHTTPSessionManager.h"
@implementation NetWorkingHelper

+ (void)getRequestUrl:(NSString *)url parameters:(id)parameters success:(void (^)(id responseData))successBlock failure:(void (^)())failureBlock{
    
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    session.requestSerializer = [AFHTTPRequestSerializer serializer];
   
    
    [session GET:url parameters:parameters progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
        if (successBlock) {
            //            NSDictionary *responseData = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
            
            NSMutableDictionary *responseData = [NSMutableDictionary dictionaryWithDictionary:responseObject];
            successBlock(responseData);
            
        }
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        
        NSLog(@"REQUEST FAILURE, ERROR: %@", error);
        if (failureBlock) {
            failureBlock();
        }
    }];
}


+ (void)postRequestUrl:(NSString *)url parameters:(id)parameters success:(void (^)(id responseData))successBlock failure:(void (^)())failureBlock{

    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    session.requestSerializer = [AFHTTPRequestSerializer serializer];
    
    [session POST:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (successBlock) {
            //            NSDictionary *responseData = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
            NSMutableDictionary *responseData = [NSMutableDictionary dictionaryWithDictionary:responseObject];
            successBlock(responseData);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"REQUEST FAILURE, ERROR: %@", error);
        if (failureBlock) {
            failureBlock();
        }
    }];
}

@end
