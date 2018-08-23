//
//  DKPublicMacros.h
//  DKProject
//
//  Created by 雪凌 on 2018/8/24.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#ifndef DKPublicMacros_h
#define DKPublicMacros_h

/** 系统相关对象 */
#define kApplication        [UIApplication sharedApplication]
#define kAppWindow          [UIApplication sharedApplication].delegate.window
#define kAppDelegate        [[UIApplication sharedApplication] delegate]
#define kRootViewController [UIApplication sharedApplication].delegate.window.rootViewController
#define kUserDefaults       [NSUserDefaults standardUserDefaults]
#define kNotificationCenter [NSNotificationCenter defaultCenter]


/** 屏幕宽高相关 */
#define kScreenWidth ([[UIScreen mainScreen] bounds].size.width)
#define kScreenHeight ([[UIScreen mainScreen] bounds].size.height)
#define kScreenBounds ([UIScreen mainScreen].bounds)


/** 适配相关 */

// 根据iphone6的屏幕来拉伸
#define kRealValue(with) ((with)*(kScreenWidth/375.0f))

// 状态栏高度
#define kStatusBarHeight kApplication.statusBarFrame.size.height


/** 常用便利方法 */

// 强弱引用
#define kWeakSelf(type)  __weak typeof(type) weak##type = type;
#define kStrongSelf(type) __strong typeof(type) type = weak##type;

//发送通知
#define kPostNotification(name,obj) [[NSNotificationCenter defaultCenter] postNotificationName:name object:obj];

//拼接字符串
#define NSStringFormat(format,...) [NSString stringWithFormat:format,##__VA_ARGS__]

//单例化一个类
#define SINGLETON_FOR_HEADER(className) \
\
+ (className *)shared##className;

#define SINGLETON_FOR_CLASS(className) \
\
+ (className *)shared##className { \
static className *shared##className = nil; \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
shared##className = [[self alloc] init]; \
}); \
return shared##className; \
}


#endif /* DKPublicMacros_h */
