//
//  DKNetwork.m
//  DKProject
//
//  Created by 雪凌 on 2018/8/23.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import "DKNetwork.h"
#import "RequestService.h"
#import "DKNetworkConfig.h"

#define DK_BASE_URL ServerUrl

// 存放所有正在进行中的请求
static NSMutableArray *_allRequestTask;

@implementation DKNetwork

+ (void)initialize {
    YTKNetworkConfig *config = [YTKNetworkConfig sharedConfig];
    config.baseUrl = DK_BASE_URL;
    config.debugLogEnabled = YES;
}

#pragma mark- *** Execute Request ***

// 执行一个请求
+ (void)executeRequest:(id<DKRequest>)request
              callBack:(DKRequestCallback)callback {
    
    // 创建请求服务
    RequestService *service = [RequestService serviceWithRequest:request];
    
    // 开始网络请求
    [service startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        [[self allRequestTask] removeObject:request];
        callback ? callback(YES, request.responseObject) : nil;
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        [[self allRequestTask] removeObject:request];
        callback ? callback(NO, request.error) : nil;
    }];
    
    [[self allRequestTask] addObject:service];
}

// 存储着所有的请求字典
+ (NSMutableArray *)allRequestTask {
    if (!_allRequestTask) {
        _allRequestTask = [@[] mutableCopy];
    }
    return _allRequestTask;
}

#pragma mark- *** Cancel Requet ***

+ (void)cancelRequest:(id<DKRequest>)request {
    
    if (!request) { return; }
    @synchronized (self) {
        [[self allRequestTask] enumerateObjectsUsingBlock:^(RequestService  *_Nonnull service, NSUInteger idx, BOOL * _Nonnull stop) {
            if ([request isEqual:service.request]) {
                [service stop];
                [[self allRequestTask] removeObject:service];
                *stop = YES;
            }
        }];
    }
}

+ (void)cancelAllRequest {
    @synchronized(self) {
        [[self allRequestTask] enumerateObjectsUsingBlock:^(RequestService  *_Nonnull service, NSUInteger idx, BOOL * _Nonnull stop) {
            [service stop];
        }];
        [[self allRequestTask] removeAllObjects];
    }
}


@end
