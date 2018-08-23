//
//  DKEncryptTool.m
//  DKProject
//
//  Created by 雪凌 on 2018/8/24.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import "DKEncryptTool.h"
#import "DKCryptor.h"

#define kEncrypt @"123456789012345678901234"

NSString *DKEncrypt(NSString *encryptStr) {
    NSData *encryptData = [DKCryptor DES3EncryptString:encryptStr withKey:kEncrypt];
    return [encryptData base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
}

NSString *DKDecrypt(NSData *decryptData) {
    
    if(!decryptData) return nil;
    
    NSString *result = [[NSString alloc] initWithData:decryptData encoding:NSUTF8StringEncoding];
    NSData *contentData = [[NSData alloc] initWithBase64EncodedString:result options:NSDataBase64DecodingIgnoreUnknownCharacters];
    NSData *data = [DKCryptor DES3DecryptData:contentData withKey:kEncrypt];
    NSString *dataSting = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    return dataSting;
}
