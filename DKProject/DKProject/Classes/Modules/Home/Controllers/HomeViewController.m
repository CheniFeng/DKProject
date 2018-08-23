//
//  HomeViewController.m
//  DKProject
//
//  Created by 雪凌 on 2018/8/24.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import "HomeViewController.h"
#import "DKHomeInfoModel.h"
#import "DKHomeInfoRequest.h"

@interface HomeViewController ()

@property (nonatomic, strong) DKHomeInfoModel *dataModel;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"首页";
}

#pragma mark- *** Network Request ***

/** 网络请求示例 */

- (void)loginRequst {
    DKHomeInfoRequest *request = [[DKHomeInfoRequest alloc] init];
    
    kWeakSelf(self);
    [DKNetwork executeRequest:request callBack:^(BOOL success, id  _Nullable result) {
        if (success) {
            // 请求成功
            DKHomeInfoModel *model = [DKHomeInfoModel parseWithData:result];
            weakself.dataModel = model;
        }else {
            // 请求失败
        }
    }];
}

#pragma mark- *** Memory Warning ***


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
