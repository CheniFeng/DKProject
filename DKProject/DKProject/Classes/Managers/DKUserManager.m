//
//  DKUserManager.m
//  DKProject
//
//  Created by 雪凌 on 2018/8/24.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import "DKUserManager.h"
#import "DKCryptor.h"

#define save_key @"user_save"
#define save_encrypt_key @"encrypt_user_key"

@interface DKUserManager()

@property (nonatomic, strong, nullable) DKUserModel *user;

@end


@implementation DKUserManager

@synthesize user = _user;
@synthesize login = _login;

+ (instancetype)sharedManager {
    
    static DKUserManager *_sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManager = [[DKUserManager alloc] init];
    });
    return _sharedManager;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _user = [self getDefaultUser];
    }
    return self;
}

#pragma mark- Login Out

- (void)loginOut {
    _user = nil;
    [self clearUser];
}

#pragma mark- Setters And Getters

- (BOOL)isLogin {
    if (_user && _user.token.length > 0) {
        _login = YES;
    }else {
        _login = NO;
    }
    return _login;
}

#pragma mark- Save  User

- (BOOL)saveUser:(DKUserModel *)user {
    
    if (!user) { return NO; }
    
    // 设置user
    self.user = user;
    
    // 加密user
    NSString *encryptKey = [DKCryptor SHA1:save_encrypt_key];
    NSData *jsonData = [_user yy_modelToJSONData];
    NSData *encryptData = [DKCryptor AES256EncryptData:jsonData withKey:encryptKey];
    
    // 保存user
    NSString *saveKey = [DKCryptor MD5:save_key];
    [kUserDefaults setObject:encryptData forKey:saveKey];
    
    return YES;
}

- (DKUserModel *)getDefaultUser {
    
    // 读取user
    NSString *saveKey = [DKCryptor MD5:save_key];
    NSData *encryptData = [kUserDefaults objectForKey:saveKey];
    
    if (!encryptData) { return nil; };
    
    // 解密data
    NSString *encryptKey = [DKCryptor SHA1:save_encrypt_key];
    NSData *desData = [DKCryptor AES256DecryptData:encryptData withKey:encryptKey];
    
    // 转换成user
    DKUserModel *user = [DKUserModel yy_modelWithJSON:desData];
    
    return user;
}

- (void)updateUser {
    [self saveUser:_user];
}

- (void)clearUser {
    // 移除保存的用户信息
    NSString *saveKey = [DKCryptor MD5:save_key];
    [kUserDefaults removeObjectForKey:saveKey];
}

@end
