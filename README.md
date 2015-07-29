# EBTPayPassWordDemo(模仿支付宝密码输入框)
#1:先把EBTPayPassWordView文件夹导入工程，再#import "EBTPayPassWordView.h"
#2:具体操作步骤
[EBTPayPassWordView showPassWordViewInView:^(NSString *password) {
        
        /**
           这里模拟网络请求，把输入密码和后台的密码进行比较。这里使用要注意发送一个通知出去,我是根据
           通知来获取最终的验证的结果，如果我们输入密码和后台密码一样，则移除当前密码输入框。否则抖动密码
           输入框提示密码错误。
         ***/
        BOOL result = [password isEqualToString:@"123456"]?YES:NO;
        NSDictionary *dic = @{
                                @"validateResult":@(result)
                              };

        /**通知名要和EBTPayPassWordView.m文件中监听通知的通知名保持一样*/
        [[NSNotificationCenter defaultCenter] postNotificationName:KNotification_ValidatePassWord object:nil userInfo:dic];
        
        
        NSLog(@"password = %@",password);
    }];













#效果演示效果
![Image](https://github.com/KBvsMJ/EBTPayPassWordDemo/blob/master/demoGif/1.gif)
