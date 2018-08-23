//
//  DKHomeInfoModel.m
//  DKProject
//
//  Created by 雪凌 on 2018/8/24.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import "DKHomeInfoModel.h"

@implementation DKHomeInfoModel

+ (id)parseWithData:(id)data {
    if ([data isKindOfClass:[NSDictionary class]]) {
        NSDictionary *dataDic = data[@"ret"];
        DKHomeInfoModel *model = [DKHomeInfoModel yy_modelWithDictionary:dataDic];
        
        return model;
    }
    return [super parseWithData:data];
}

@end
