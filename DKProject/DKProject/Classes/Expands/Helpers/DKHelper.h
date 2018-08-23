//
//  DKHelper.h
//  DKProject
//
//  Created by 雪凌 on 2018/8/24.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DKHelper : NSObject

// 首页故事板
+ (UIStoryboard *)homeBoard;

// 登录故事板
+ (UIStoryboard *)loginBoard;

// 根据文件名获取故事板
+ (UIStoryboard *)storyboardWithName:(NSString *)name;

@end
