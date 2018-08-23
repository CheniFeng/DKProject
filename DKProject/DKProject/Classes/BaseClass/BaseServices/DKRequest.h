//
//  DKRequest.h
//  DKProject
//
//  Created by 雪凌 on 2018/8/23.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 请求方式
typedef NS_ENUM(NSUInteger, DKRequestMethod) {
    DKRequestMethodGET = 0, // GET
    DKRequestMethodPOST, // POST 默认
    DKRequestMethodHEAD, // HEAD
    DKRequestMethodPUT, // PUT
    DKRequestMethodDELETE, // DELETE
    DKRequestMethodPATCH, // PATCH
};

@protocol DKRequest <NSObject>

@required

/**
 *  请求参数,可为nil
 *
 *  @return NSDictionary 参数字典
 */
- (nullable NSDictionary *)parameters;

/**
 *  接口API,可为nil
 *
 *  @return NSString 接口拼接部分
 */
- (nullable NSString *)requestUrl;

@optional

/**
 *  BaseUrl,不实现则使用默认配置
 *
 *  @return NSString BaseUrl
 */
- (nullable NSString *)baseUrl;

//

/**
 *  请求方式, 不实现此方法,则使用默认值
 *
 *  @return DKRequestMethod 请求方式
 */
- (DKRequestMethod)requestMethod;

/**
 *  请求超时时间,默认60s
 *
 *  @return NSTimeInterval 超时时间
 */
- (NSTimeInterval)timeoutInterval;

@end

NS_ASSUME_NONNULL_END
