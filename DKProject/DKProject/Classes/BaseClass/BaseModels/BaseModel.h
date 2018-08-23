//
//  BaseModel.h
//  DKProject
//
//  Created by 雪凌 on 2018/8/23.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseModel : NSObject

+ (nullable id)parseWithData:(id)data;

@end

NS_ASSUME_NONNULL_END
