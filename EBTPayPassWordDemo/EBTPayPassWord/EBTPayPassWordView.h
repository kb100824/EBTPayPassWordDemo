//
//  EBTPayPassWordView.h
//  EBTPayPassWordDemo
//
//  Created by MJ on 15/7/28.
//  Copyright (c) 2015年 com.csst.www. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^CompleteHandler) (NSString *password);
@interface EBTPayPassWordView : UIView
{
    CompleteHandler myCompleteHandler;

}
/**
 *  实现支付密码对话框
 *
 *  @param completeHandler block参数
 */
+ (void)showPassWordViewInView:(CompleteHandler)completeHandler;
@end
