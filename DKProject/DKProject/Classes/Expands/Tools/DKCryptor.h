//
//  DKCryptor.h
//  DKProject
//
//  Created by 雪凌 on 2018/8/24.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  This class adds some useful methods to encrypt/decrypt data.
 *  All methods are static
 */

NS_ASSUME_NONNULL_BEGIN

@interface DKCryptor : NSObject

/**
 *  Create a MD5 string
 *
 *  @param string The string to be converted
 *
 *  @return Returns the MD5 NSString
 */
+ (nullable NSString *)MD5:(NSString *)string;

/**
 *  Create a SHA1 string
 *
 *  @param string The string to be converted
 *
 *  @return Returns the SHA1 NSString
 */
+ (nullable NSString *)SHA1:(NSString *)string;

/**
 *  Create a SHA256 string
 *
 *  @param string The string to be converted
 *
 *  @return Returns the SHA256 NSString
 */
+ (nullable NSString *)SHA256:(NSString *)string;

/**
 *  Create a SHA512 string
 *
 *  @param string The string to be converted
 *
 *  @return Returns the SHA512 NSString
 */
+ (nullable NSString *)SHA512:(NSString *)string;

/**
 *  Encrypt NSData in AES128
 *
 *  @param data NSData to be encrypted
 *  @param key  Key to encrypt data
 *
 *  @return Returns the encrypted NSData
 */
+ (nullable NSData *)AES128EncryptData:(NSData *)data withKey:(NSString *)key;

/**
 *  Decrypt NSData in AES128
 *
 *  @param data NSData to be decrypted
 *  @param key  Key to decrypt data
 *
 *  @return Returns the decrypted NSData
 */
+ (nullable NSData *)AES128DecryptData:(NSData *)data withKey:(NSString *)key;

/**
 *  Encrypt NSData in AES256
 *
 *  @param data NSData to be encrypted
 *  @param key  Key to encrypt data
 *
 *  @return Returns the encrypted NSData
 */
+ (nullable NSData *)AES256EncryptData:(NSData *)data withKey:(NSString *)key;

/**
 *  Decrypt NSData in AES256
 *
 *  @param data NSData to be decrypted
 *  @param key  Key to decrypt data
 *
 *  @return Returns the decrypted NSData
 */
+ (nullable NSData *)AES256DecryptData:(NSData *)data withKey:(NSString *)key;

/**
 *  Encrypt NSString in AES128
 *
 *  @param string NSString to be encrypted
 *  @param key  Key to encrypt data
 *
 *  @return Returns the encrypted NSData
 */
+ (nullable NSData *)AES128EncryptString:(NSString *)string withKey:(NSString *)key;

/**
 *  Decrypt NSString in AES128
 *
 *  @param string NSString to be decrypted
 *  @param key  Key to decrypt data
 *
 *  @return Returns the decrypted NSData
 */
+ (nullable NSData *)AES128DecryptString:(NSString *)string withKey:(NSString *)key;

/**
 *  Encrypt NSString in AES256
 *
 *  @param string NSString to be encrypted
 *  @param key  Key to encrypt data
 *
 *  @return Returns the encrypted NSData
 */
+ (nullable NSData *)AES256EncryptString:(NSString *)string withKey:(NSString *)key;

/**
 *  Decrypt NSString in AES256
 *
 *  @param string NSString to be decrypted
 *  @param key  Key to decrypt data
 *
 *  @return Returns the decrypted NSData
 */
+ (nullable NSData *)AES256DecryptString:(NSString *)string withKey:(NSString *)key;

/**
 *  Encrypt NSString in DES
 *
 *  @param data NSData to be encrypted
 *  @param key  Key to encrypt data
 *
 *  @return Returns the encrypted NSData
 */
+ (nullable NSData *)DESEncryptData:(NSData *)data withKey:(NSString *)key;

/**
 *  Decrypt NSString in DES
 *
 *  @param data NSData to be decrypted
 *  @param key  Key to decrypt data
 *
 *  @return Returns the decrypted NSData
 */
+ (nullable NSData *)DESDecryptData:(NSData *)data withKey:(NSString *)key;

/**
 *  Encrypt NSString in 3DES
 *
 *  @param data NSData to be encrypted
 *  @param key  Key to encrypt data
 *
 *  @return Returns the encrypted NSData
 */
+ (nullable NSData *)DES3EncryptData:(NSData *)data withKey:(NSString *)key;

/**
 *  Decrypt NSString in 3DES
 *
 *  @param data NSData to be decrypted
 *  @param key  Key to decrypt data
 *
 *  @return Returns the decrypted NSData
 */
+ (nullable NSData *)DES3DecryptData:(NSData *)data withKey:(NSString *)key;

/**
 *  Encrypt NSString in DES
 *
 *  @param string NSString to be encrypted
 *  @param key  Key to encrypt data
 *
 *  @return Returns the encrypted NSData
 */
+ (nullable NSData *)DESEncryptString:(NSString *)string withKey:(NSString *)key;

/**
 *  Decrypt NSString in DES
 *
 *  @param string NSString to be decrypted
 *  @param key  Key to decrypt data
 *
 *  @return Returns the decrypted NSData
 */
+ (nullable NSData *)DESDecryptString:(NSString *)string withKey:(NSString *)key;

/**
 *  Encrypt NSString in 3DES
 *
 *  @param string NSString to be encrypted
 *  @param key  Key to encrypt data
 *
 *  @return Returns the encrypted NSData
 */
+ (nullable NSData *)DES3EncryptString:(NSString *)string withKey:(NSString *)key;

/**
 *  Decrypt NSString in 3DES
 *
 *  @param string NSString to be decrypted
 *  @param key  Key to decrypt data
 *
 *  @return Returns the decrypted NSData
 */
+ (nullable NSData *)DES3DecryptString:(NSString *)string withKey:(NSString *)key;


@end

NS_ASSUME_NONNULL_END
