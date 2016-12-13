//
//  UINavigationController+ShouldPopOnBackButton.m
//  RongShuQianBao
//
//  Created by 杨芳 on 16/9/8.
//  Copyright © 2016年 杨芳. All rights reserved.
//

#import "UINavigationController+ShouldPopOnBackButton.h"

@implementation UINavigationController (ShouldPopOnBackButton)

- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem*)item {
    
    if([self.viewControllers count] < [navigationBar.items count]) {
        return YES;
    }
    
    BOOL shouldPop = YES;
    UIViewController* vc = [self topViewController];
    if([vc respondsToSelector:@selector(navigationShouldPopOnBackButton)]) {
        shouldPop = [vc navigationShouldPopOnBackButton];
    }
    
    if(shouldPop) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self popViewControllerAnimated:YES];
        });
    } else {
        // Workaround for iOS7.1. Thanks to @boliva - <a href="http://stackoverflow.com/posts/comments" target="_blank">http://stackoverflow.com/posts/comments</a> /34452906
        for(UIView *subview in [navigationBar subviews]) {
            if(subview.alpha < 1.) {
                [UIView animateWithDuration:.25 animations:^{  
                    subview.alpha = 1.;  
                }];  
            }  
        }  
    }  
    
    return NO;  
}

@end
