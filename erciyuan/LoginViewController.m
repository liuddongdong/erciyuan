//
//  LoginViewController.m
//  erciyuan
//
//  Created by liudongdong on 15/5/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "LoginViewController.h"
#import "NeteaseLoginViewController.h"
#import "WeiboSDK.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UIButton *NeteaseLoginButton;
@property (weak, nonatomic) IBOutlet UIButton *WeiboLoginButton;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)neteaseLoginButtonAction:(id)sender {
    
    NeteaseLoginViewController *neteaseLoginVC = [[NeteaseLoginViewController alloc] init];
    
    [self presentViewController:neteaseLoginVC animated:YES completion:nil];
    
}

- (IBAction)weiboLoginButtonAction:(id)sender {
    
    WBAuthorizeRequest *request = [WBAuthorizeRequest request];
    request.redirectURI = @"https://api.weibo.com/oauth2/default.html";
    request.scope = @"all";
    request.userInfo = @{@"SSO_From": @"LoginViewController"};
    
    [WeiboSDK sendRequest:request];
    
}

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
