//
//  DKLoginRequest.h
//  DKProject
//
//  Created by 雪凌 on 2018/8/24.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DKRequest.h"

NS_ASSUME_NONNULL_BEGIN

@interface DKLoginRequest : NSObject<DKRequest>

/** 用户名 */
@property (nonatomic, nullable, copy) NSString *userName;

/** 密码 */
@property (nonatomic, nullable, copy) NSString *password;

/** 图片验证码 */
@property (nonatomic, nullable, copy) NSString *imageCode;

@end

NS_ASSUME_NONNULL_END
