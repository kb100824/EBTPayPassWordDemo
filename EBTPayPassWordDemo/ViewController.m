//
//  ViewController.m
//  EBTPayPassWordDemo
//
//  Created by MJ on 15/7/28.
//  Copyright (c) 2015年 com.csst.www. All rights reserved.
//

#import "ViewController.h"
#import "EBTPayPassWordView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    
    
}
- (IBAction)btnClick:(UIButton *)sender {
    [EBTPayPassWordView showPassWordViewInView:^(NSString *password) {
        
        /**
           这里模拟网络请求，把输入密码和后台的密码进行比较。这里使用要注意
         ***/
        BOOL result = [password isEqualToString:@"123456"]?YES:NO;
        NSDictionary *dic = @{
                                @"validateResult":@(result)
                              };
        
        
        
        [[NSNotificationCenter defaultCenter] postNotificationName:KNotification_ValidatePassWord object:nil userInfo:dic];
        
        
        NSLog(@"password = %@",password);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
