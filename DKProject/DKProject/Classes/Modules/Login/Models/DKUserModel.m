//
//  DKUserModel.m
//  DKProject
//
//  Created by 雪凌 on 2018/8/24.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import "DKUserModel.h"

@implementation DKUserModel

@synthesize realname = _realname;
@synthesize userId = _userId;
@synthesize nickname = _nickname;
@synthesize loginname = _loginname;
@synthesize token = _token;

+ (id)parseWithData:(id)data {
    if ([data isKindOfClass:[NSDictionary class]]) {
        NSDictionary *dataDic = data[@"ret"];
        DKUserModel *userModel = [DKUserModel yy_modelWithDictionary:dataDic];
        
        return userModel;
    }
    return [super parseWithData:data];
}

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper {
    return @{@"userId":@"id"};
}

@end
