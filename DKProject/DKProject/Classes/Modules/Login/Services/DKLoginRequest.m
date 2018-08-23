//
//  DKLoginRequest.m
//  DKProject
//
//  Created by 雪凌 on 2018/8/24.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import "DKLoginRequest.h"

@implementation DKLoginRequest

@synthesize userName = _userName;
@synthesize password = _password;
@synthesize imageCode = _imageCode;



- (NSString *)requestUrl {
    return LoginNetworkPort;
}

- (NSDictionary *)parameters {
    
    NSMutableDictionary *params = [@{} mutableCopy];
    
    if (_userName.length > 0) {
        [params setObject:_userName forKey:@"loginname"];
    }
    
    if (_password.length > 0) {
        [params setObject:_password forKey:@"password"];
    }
    
    if (_imageCode.length > 0) {
        [params setObject:_imageCode forKey:@"verifycode"];
    }
    
    return params;
}

@end
