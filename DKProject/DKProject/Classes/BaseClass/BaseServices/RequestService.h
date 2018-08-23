//
//  RequestService.h
//  DKProject
//
//  Created by 雪凌 on 2018/8/23.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>
#import "DKRequest.h"

NS_ASSUME_NONNULL_BEGIN

@interface RequestService : YTKRequest

/**
 *   遵循请求协议的对象,请求体
 */
@property (nonatomic, strong, readonly) id<DKRequest> request;

/**
 *   类方法,快速创建一个请求服务实例
 *
 *   @param request 遵循请求协议的的对象
 *
 *   @return instancetype 实例对象
 */
+ (instancetype)serviceWithRequest:(id<DKRequest>)request;


/**
 *   指定初始化方法,创建一个请求服务实例
 *
 *   @param request 遵循请求协议的的对象
 *
 *   @return instancetype 实例对象
 */
- (instancetype)initWithRequest:(id<DKRequest>)request;

@end

NS_ASSUME_NONNULL_END
