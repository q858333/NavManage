//
//  ViewController.m
//  NavManege
//
//  Created by dengbin on 16/12/13.
//  Copyright © 2016年 dengbin. All rights reserved.
//

#import "ViewController.h"
#import "SecondVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    SecondVC *secondVC = [[SecondVC alloc]init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
