//
//  LoginViewController.m
//  DKProject
//
//  Created by 雪凌 on 2018/8/24.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import "LoginViewController.h"
#import "DKLoginRequest.h"

@interface LoginViewController ()

@property (nonatomic, strong) DKLoginRequest *loginRequest;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"我的";
}

#pragma mark- *** Network Request ***

/** 网络请求示例 */

- (void)loginRequst {
    
    if (_loginRequest) {
        [DKNetwork cancelRequest:_loginRequest];
    }
    
    DKLoginRequest *request = [[DKLoginRequest alloc] init];
    request.userName = @"userName";
    request.password = @"password";
    request.imageCode = @"1345";
    self.loginRequest = request;
    
    kWeakSelf(self);
    [DKNetwork executeRequest:request callBack:^(BOOL success, id  _Nullable result) {
        if (success) {
            // 解析并保存用户信息
            DKUserModel *user = [DKUserModel parseWithData:request];
            [[DKUserManager sharedManager] saveUser:user];
            
            kPostNotification(LoginManagerDidLoginSuccess, nil);
        }else {
            NSLog(@"登录失败");
        }
        weakself.loginRequest = nil;
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
