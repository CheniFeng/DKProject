//
//  DKNetwork.h
//  DKProject
//
//  Created by 雪凌 on 2018/8/23.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^DKRequestCallback)(BOOL success, id _Nullable result);

@protocol DKRequest;
@interface DKNetwork : NSObject

/**
 *  执行一个网络请求
 *
 *  @param request   遵循DKRequest协议的对象
 *  @param callback  请求完成后的回调
 */
+ (void)executeRequest:(id<DKRequest>)request
              callBack:(nullable DKRequestCallback)callback;

/**
 *  取消指定Request请求
 */
+ (void)cancelRequest:(_Nullable id<DKRequest>)request;

/**
 *  取消所有网络请求
 */
+ (void)cancelAllRequest;

@end

NS_ASSUME_NONNULL_END
