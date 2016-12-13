//
//  UIViewController+BackButtonHandler.h
//  RongShuQianBao
//
//  Created by 杨芳 on 16/9/8.
//  Copyright © 2016年 杨芳. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BackButtonHandlerProtocol <NSObject>
@optional
// Override this method in UIViewController derived class to handle 'Back' button click
-(BOOL)navigationShouldPopOnBackButton;
@end
@interface UIViewController (BackButtonHandler) <BackButtonHandlerProtocol>
@end
