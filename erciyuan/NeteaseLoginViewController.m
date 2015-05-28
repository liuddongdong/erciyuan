//
//  NeteaseLoginViewController.m
//  erciyuan
//
//  Created by liudongdong on 15/5/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "NeteaseLoginViewController.h"
#import "MD5Utils.h"

@interface NeteaseLoginViewController () < UITextFieldDelegate >

@property (strong, nonatomic) IBOutlet UITextField *accountTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *backButton;

@property (strong, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation NeteaseLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //[self initCustomView];
}

- (void)initCustomView {
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _accountTextField = [[UITextField alloc] initWithFrame:CGRectMake(40, 80, 240, 44)];
    _accountTextField.placeholder = @"请输入网易通行证账号";
    [_accountTextField setBorderStyle:UITextBorderStyleRoundedRect];
    [_accountTextField setClearButtonMode:UITextFieldViewModeWhileEditing];
    _accountTextField.delegate = self;
    [self .view addSubview:_accountTextField];
    
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(40, 130, 240, 44)];
    _passwordTextField.placeholder = @"请输入网易通行证密码";
    [_passwordTextField setBorderStyle:UITextBorderStyleRoundedRect];
    [_passwordTextField setClearButtonMode:UITextFieldViewModeWhileEditing];
    _passwordTextField.secureTextEntry = YES;
    _passwordTextField.delegate = self;
    [self.view addSubview:_passwordTextField];
    
    _loginButton = [[UIButton alloc] initWithFrame:CGRectMake(40, 200, 240, 44)];
    _loginButton.backgroundColor = [UIColor lightGrayColor];
    [_loginButton setTitle:@"登  录" forState:UIControlStateNormal];
    [_loginButton addTarget:self action:@selector(loginButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_loginButton];
    
}

- (IBAction)backButtonAction:(id)sender {
    
    [self dismissViewControllerAnimated:NO completion:nil];
    
}

- (IBAction)loginButtonAction:(id)sender {
    
//    NSString *passwordMd5String = [MD5Utils md5String:_passwordTextField.text];
//    
//    NSMutableDictionary *parameterDic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:_accountTextField.text, @"username", passwordMd5String, @"password", nil];
//    
//    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
//    
//    [manager POST:@"http://223.252.220.52/login/netease"
//       parameters:parameterDic
//          success:^(AFHTTPRequestOperation *operation,  id responseObject) {
//              
//              //NSDictionary *responseDic = (NSDictionary *)responseObject;
//              
//              UIAlertView *successAlertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"登录成功" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
//              [successAlertView show];
//              
//          }
//          failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//              
//              UIAlertView *failureAlertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"登录失败" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
//              [failureAlertView show];
//
//          }
//     ];
    
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [_accountTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
