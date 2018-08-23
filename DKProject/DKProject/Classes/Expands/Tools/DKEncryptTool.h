//
//  DKEncryptTool.h
//  DKProject
//
//  Created by 雪凌 on 2018/8/24.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 二次封装加密解密方法 */

NSString *DKEncrypt(NSString *encryptStr);
NSString *DKDecrypt(NSData *decryptData);
