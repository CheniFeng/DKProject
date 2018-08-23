//
//  DKHelper.m
//  DKProject
//
//  Created by 雪凌 on 2018/8/24.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import "DKHelper.h"

@implementation DKHelper

#pragma mark- *** StotyBoard ***

+ (UIStoryboard *)homeBoard {
    return [[self class] storyboardWithName:@"Home"];
}

+ (UIStoryboard *)loginBoard {
    return [[self class] storyboardWithName:@"Login"];
}

+ (UIStoryboard *)storyboardWithName:(NSString *)name {
    
    UIStoryboard *board = [UIStoryboard storyboardWithName:name
                                                    bundle:[NSBundle mainBundle]];
    return board;
}

@end
