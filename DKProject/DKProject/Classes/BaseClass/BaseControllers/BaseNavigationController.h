//
//  BaseNavigationController.h
//  DKProject
//
//  Created by 雪凌 on 2018/8/23.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseNavigationController : UINavigationController

@end

@interface UINavigationController (BaseExtension)

// 返回到根视图
- (void)popToRoot;

// 返回到前一个视图
- (void)popToPre;

/**
 *  返回到指定的类视图
 *
 *  @param className 类名
 *  @param animated  是否动画
 *
 *  @return BOOL 方法是否调用成功,如果在导航栏的层次结构中找不到相应名称的视图,
 *          则返回NO,否则返回YES
 */
-(BOOL)popToAppointViewController:(NSString *)className
                         animated:(BOOL)animated;


@end

NS_ASSUME_NONNULL_END
