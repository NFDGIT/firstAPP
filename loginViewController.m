//
//  loginViewController.m
//  UI概述
//
//  Created by qingyun on 16/1/27.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "loginViewController.h"
#import "registerViewController.h"
@interface loginViewController ()

@end

@implementation loginViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)register:(UIButton *)sender {
    UIStoryboard *mainSB= [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    registerViewController *regist=[mainSB instantiateViewControllerWithIdentifier:@"register"];
    [self presentViewController:regist animated:YES completion:^{
        NSLog(@"注册账号！！！");
    }];
    
}

- (IBAction)quit:(UIButton *)sender {
    exit(0);
}


@end
