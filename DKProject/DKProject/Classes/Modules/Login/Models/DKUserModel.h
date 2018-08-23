//
//  DKUserModel.h
//  DKProject
//
//  Created by 雪凌 on 2018/8/24.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import "BaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface DKUserModel : BaseModel

/* 用户名称 */
@property (nonatomic, nullable, copy) NSString *realname;

/* 用户id */
@property (nonatomic, nullable, copy) NSString *userId;

/* 昵称 */
@property (nonatomic, nullable, copy) NSString *nickname;

/* 登录用户名 */
@property (nonatomic, nullable, copy) NSString *loginname;

/* token */
@property (nonatomic, nullable, copy) NSString *token;

@end

NS_ASSUME_NONNULL_END
