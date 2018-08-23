//
//  DKUserManager.h
//  DKProject
//
//  Created by 雪凌 on 2018/8/24.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DKUserModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface DKUserManager : NSObject

// 是否已经登录
@property (nonatomic, getter=isLogin, readonly) BOOL login;

/* 登录之后保存的用户信息 */
@property (nonatomic, strong, nullable, readonly) DKUserModel *user;

+ (instancetype)sharedManager;

/* 保存用户信息 */
- (BOOL)saveUser:(nullable DKUserModel *)user;

/* 清除登录状态 */
- (void)loginOut;

/* 更新用户信息 */
- (void)updateUser;

@end

NS_ASSUME_NONNULL_END
