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
@property (weak, nonatomic) IBOutlet UIImageView *tomCatImage;

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
    
    
    
    //登录界面添加火焰和雪花
    
//    
//    UIImageView *fireImageView=[UIImageView alloc]initWithFrame:[]
//    NSMutableArray *firearray=[[NSMutableArray alloc]init];
//    
//    
    

    
    
    
    
}





- (IBAction)cymbal:(id)sender {
    NSMutableArray *cymbalImage=[NSMutableArray array];
    for (int i=0; i<13;i++ ) {
        [cymbalImage addObject:[UIImage imageNamed: [NSString stringWithFormat:@"cymbal_%02d.jpg",i]]];
    }
    _tomCatImage.animationImages=cymbalImage;
    _tomCatImage.animationDuration=0.3;
    _tomCatImage.animationRepeatCount=1;
    [_tomCatImage startAnimating];
    
 
        _tomCatImage.animationImages=nil;
 
    
    
}
- (IBAction)drink:(id)sender {
    NSMutableArray *drinkImage=[NSMutableArray array];
    for (int i=0; i <81; i++) {
        [drinkImage addObject:[UIImage imageNamed:[NSString stringWithFormat:@"drink_%02d.jpg",i]]];
    }
    _tomCatImage.animationImages=drinkImage;
    _tomCatImage.animationDuration=3;
    _tomCatImage.animationRepeatCount=1;
    [_tomCatImage startAnimating];
    
}

//eat
- (IBAction)eat:(id)sender {
    NSMutableArray *eatImage=[NSMutableArray array];
    for (int i =0;i <40 ; i++) {
        [eatImage addObject:[UIImage imageNamed:[NSString stringWithFormat:@"eat_%02d.jpg",i]] ];
        
    }
    _tomCatImage.animationImages=eatImage;
    _tomCatImage.animationDuration=2;
    _tomCatImage.animationRepeatCount=1;
    [_tomCatImage startAnimating];
    

}
- (IBAction)fart:(id)sender {
    NSMutableArray *fartImage=[NSMutableArray array];
    for (int i=0; i <28; i++) {
        [fartImage addObject:[UIImage imageNamed:[NSString stringWithFormat:@"fart_%02d.jpg",i]]];
    }
    _tomCatImage.animationImages=fartImage;
    _tomCatImage.animationDuration=1.5;
    _tomCatImage.animationRepeatCount=1;
    [_tomCatImage startAnimating];
    
    
}
- (IBAction)pie:(id)sender {
    NSMutableArray *pieImage=[NSMutableArray array];
    for (int i=0; i <24; i++) {
        [pieImage addObject:[UIImage imageNamed:[NSString stringWithFormat:@"pie_%02d.jpg",i]]];
        
    }
    _tomCatImage.animationImages=pieImage;
    _tomCatImage.animationDuration=1.5;
    _tomCatImage.animationRepeatCount=1;
    [_tomCatImage startAnimating];
    
    
    
}
- (IBAction)scratch:(id)sender {
    NSMutableArray *scratchImage=[NSMutableArray array];
    for (int i=0; i<56; i++) {
        [scratchImage addObject:[UIImage imageNamed:[NSString stringWithFormat:@"scratch_%02d.jpg",i]]];
        
    }
    _tomCatImage.animationImages=scratchImage;
    _tomCatImage.animationDuration=2;
    _tomCatImage.animationRepeatCount=1;
    [_tomCatImage startAnimating];
    
    
}
- (IBAction)knockout:(id)sender {
    NSMutableArray *knockoutImage=[NSMutableArray array];
    for (int i=0; i<81; i++) {
        [knockoutImage addObject:[UIImage imageNamed:[NSString stringWithFormat:@"knockout_%02d.jpg",i]]];
        
    }
    _tomCatImage.animationImages=knockoutImage;
    _tomCatImage.animationDuration=4;
    _tomCatImage.animationRepeatCount=1;
    [_tomCatImage startAnimating];
    
}

- (IBAction)angry:(id)sender {
    NSMutableArray *angryImage=[NSMutableArray array];
    for (int i=0; i<26; i++) {
        [angryImage addObject:[UIImage imageNamed:[NSString stringWithFormat:@"angry_%02d.jpg",i]]];
        
    }
    _tomCatImage.animationImages=angryImage;
    _tomCatImage.animationDuration=2;
    _tomCatImage.animationRepeatCount=1;
    [_tomCatImage startAnimating];
    
}

- (IBAction)footleft:(id)sender {
    NSMutableArray *footleftImage=[NSMutableArray array];
    for (int i=0; i<30; i++) {
        [footleftImage addObject:[UIImage imageNamed:[NSString stringWithFormat:@"footleft_%02d.jpg",i]]];
        
    }
    _tomCatImage.animationImages=footleftImage;
    _tomCatImage.animationDuration=2;
    _tomCatImage.animationRepeatCount=1;
    [_tomCatImage startAnimating];
    
}
- (IBAction)footright:(id)sender {    NSMutableArray *footrightImage=[NSMutableArray array];
    for (int i=0; i<30; i++) {
        [footrightImage addObject:[UIImage imageNamed:[NSString stringWithFormat:@"footright_%02d.jpg",i]]];
        
    }
    _tomCatImage.animationImages=footrightImage;
    _tomCatImage.animationDuration=2;
    _tomCatImage.animationRepeatCount=1;
    [_tomCatImage startAnimating];
    
}









- (IBAction)quit:(UIButton *)sender {
    exit(0);
}
- (IBAction)loginout:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
    
}


@end
