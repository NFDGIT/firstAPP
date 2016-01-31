//
//  ViewController.m
//  UI概述
//
//  Created by qingyun on 16/1/26.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "ViewController.h"
#import "loginViewController.h"
#define Filepath @"/Users/qingyun/Desktop/彭辉/UI概述/userinformation.plist"
@interface ViewController ()
//name

@property (weak, nonatomic) IBOutlet UILabel *userNameLable;
@property (weak, nonatomic) IBOutlet UITextField *userNameInfo;

//password


@property (weak, nonatomic) IBOutlet UILabel *userPasswordLable;
@property (weak, nonatomic) IBOutlet UITextField *userPasswordInfo;
//head portrait
@property (weak, nonatomic) IBOutlet UIImageView *headPortrait;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //定义属性
   
    
    
    self.userNameInfo.text=[NSMutableDictionary dictionaryWithContentsOfFile:Filepath][@"account"];
    self.userPasswordInfo.text=[NSMutableDictionary dictionaryWithContentsOfFile:Filepath][@"password"];
    

    
    
    
    
    
    
    
    //delegate
    _userNameInfo.delegate=self;
    _userPasswordInfo.delegate=self;

    //标签
    _userNameInfo.tag=1;
    _userPasswordInfo.tag=2;

    
    
    
    
    
    
//    [self.view addSubview:_userNameLable];
//    [self.view addSubview:_userNameInfo];
//    [self.view addSubview:_userPassword];
//    [self.view addSubview:_userPasswordInfo];
//    [self.view addSubview:_userSid];
//    [self.view addSubview:_userSIDInfo];
//    
//    

}


//监视实时输入
#pragma  mark-delegate
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{NSLog(@"tag>>>%ld:%@",textField.tag,textField.text);
    if ([_userNameInfo.text isEqual: @"penghui"] &&[[_userPasswordInfo.text stringByAppendingString:string] isEqual:@"feng"]) {
        _headPortrait.image=[UIImage imageNamed:@"jing.jpg"];
        
    }else{_headPortrait.image=NULL; }
    return YES;
   
    }






//键盘自动调出与消失！！！！！！
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.userNameInfo resignFirstResponder];
    [self.userPasswordInfo resignFirstResponder];

}
//退出！！！！！！
- (IBAction)exit:(UIButton *)sender {
    exit(0);
}

//界面切换  登录
- (IBAction)login:(UIButton *)sender {
    UIStoryboard*mainSB=[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    loginViewController *loginview=[mainSB instantiateViewControllerWithIdentifier:@"login"];
    [self presentViewController:loginview animated:YES completion:^{NSLog(@"登陆成功！！！");}];
    
}
//注册界面
- (IBAction)regist:(id)sender {
    UIStoryboard*mainSB=[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    loginViewController *registview=[mainSB instantiateViewControllerWithIdentifier:@"register"];
    [self presentViewController:registview animated:YES completion:^{NSLog(@"打开注册界面！！！");}];
    
}





















//调出键盘时界面的变化！！！！！
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    [UIView animateWithDuration:1 animations:^{
        self.view.frame=CGRectMake(self.view.frame.origin.x,-100, self.view.frame.size.width, self.view.frame.size.height);}];
}


-(void)textFieldDidEndEditing:(UITextField *)textField{
    [UIView animateWithDuration:0.1 animations:^{
        self.view.frame=CGRectMake(self.view.frame.origin.x,0, self.view.frame.size.width, self.view.frame.size.height);}];
    }
@end











