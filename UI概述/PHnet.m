//
//  PHnet.m
//  firstAPP
//
//  Created by qingyun on 16/2/19.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "PHnet.h"

@interface PHnet ()
{
    NSInteger index;
}
@property (weak,nonatomic)IBOutlet UILabel *indexlabel;
@property (weak,nonatomic)IBOutlet UIImageView *imageView;
@property (weak,nonatomic)IBOutlet UILabel *desclbale;
@property (weak,nonatomic)IBOutlet UIButton *leftBtn;
@property (weak,nonatomic)IBOutlet UIButton *rightBtn;

@property (strong,nonatomic)NSArray *images;
@end

@implementation PHnet

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
    if (self =[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
    }
    return self;
    
}
//-(void)loadView{
//    UIView *v=[[UIView alloc]init];
//    v.backgroundColor=[UIColor whiteColor];
//    UIWebView*webView=[[UIWebView alloc]initWithFrame:CGRectMake( 0,15,[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height)];
//    
//    [v addSubview: webView];
//    
//    
//
//    
//    self.view =v;
//    NSURL *url=[NSURL URLWithString:@"http://www.baidu.com"];
//    NSURLRequest *request=[NSURLRequest requestWithURL:url];
//    [webView loadRequest:request];
//
//    
//}



- (void)viewDidLoad {
    [super viewDidLoad];
    

    UIWebView*webView=[[UIWebView alloc]initWithFrame:CGRectMake( 0,20,[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height-60)];
    
   
    [self.view addSubview: webView];
    //self.view.backgroundColor=[UIColor redColor];
    self.view.backgroundColor=[UIColor colorWithRed:01 green:01 blue:01 alpha:01];
    
    
    
   // self.view =v;
    NSURL *url=[NSURL URLWithString:@"http://www.baidu.com"];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //返回按钮
    UIButton *netback=[[UIButton alloc]initWithFrame:CGRectMake(180, [UIScreen mainScreen].bounds.size.height-35, 50, 25)];
    
    [netback setTitle:@"back" forState:UIControlStateNormal];
    [netback setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    [netback setTitle:@"back" forState:UIControlStateHighlighted];
    [netback setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
   // [netback setBackgroundColor:[UIColor redColor]];
    netback.userInteractionEnabled=YES;
    [netback setBackgroundColor:[UIColor colorWithRed:0.5 green:0.3 blue:0.9 alpha:0.5]];
    [netback addTarget:self action:@selector( netback) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:netback];
  
    //退出按钮
    UIButton *quit=[[UIButton alloc]initWithFrame:CGRectMake(20, [UIScreen mainScreen].bounds.size.height-35,50 ,25)];
    [quit setBackgroundColor:[UIColor colorWithRed:0.5 green:0.3 blue:0.9 alpha:0.45]];
    [quit setTitle:@"quit" forState:UIControlStateNormal];
    [quit addTarget:self action:@selector(quit) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [self.view addSubview:quit];
    //分享界面
    
    UIButton *share=[[UIButton alloc]initWithFrame:CGRectMake(100, [UIScreen mainScreen].bounds.size.height-35,50,25)];
    [share setTitle:@"分享" forState:UIControlStateNormal];
    [share setBackgroundColor:[UIColor colorWithRed:0.5 green:0.3 blue:0.9 alpha:0.45]];
    [share addTarget:self action:@selector(share) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:share];
    
    
    //图片浏览器
    
    UIButton *imageBrowser=[[UIButton alloc]initWithFrame:CGRectMake(260, [UIScreen mainScreen].bounds.size.height-35,50 , 25)];
    [imageBrowser setTitle:@"Image" forState:UIControlStateNormal];
    [imageBrowser setBackgroundColor:[UIColor colorWithRed:0.5 green:0.3 blue:0.9 alpha:0.5]];
    [imageBrowser addTarget:self action:@selector(imageview) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:imageBrowser];
    
    
    //返回网页
    UIButton *home=[[UIButton alloc]initWithFrame:CGRectMake(340, [UIScreen mainScreen].bounds.size.height-35,50 , 25)];
    [home setTitle:@"home" forState:UIControlStateNormal];
    [home setBackgroundColor:[UIColor colorWithRed:0.5 green:0.3 blue:0.9 alpha:0.5]];
    [home addTarget:self action:@selector(home) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:home];

    
    
    
    // Do any additional setup after loading the view from its nib.
}


-(void)netback{

    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"上网结束！！！");
    }];
    
    
}
-(void)quit{
    exit(0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)share{
    UIActionSheet *sheet=[[UIActionSheet alloc]initWithTitle:@"分享" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"微博" otherButtonTitles:@"微信", nil];

    
    
    [sheet showInView:self.view];
}


//image browser  图片浏览器
-(void)imageview{
    UIView *imagecontrolview=[[UIView alloc]initWithFrame:CGRectMake( 0,20,[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height-60)];
    [imagecontrolview setBackgroundColor:[UIColor colorWithRed:0 green:0.5 blue:0.2 alpha:01]];
    [self.view addSubview:imagecontrolview];
    
    
    //创建标题lable
    UILabel *la=[[UILabel alloc]initWithFrame:CGRectMake(150, 100,[UIScreen mainScreen].bounds.size.width-300, 30)];
    _indexlabel=la;
   // [_indexlabel setFrame:CGRectMake(100, 100, 100, 100)];
    [_indexlabel setBackgroundColor:[UIColor grayColor]];
    [imagecontrolview addSubview:_indexlabel];
    
    //创建imageview
    UIImageView *imageView=[[ UIImageView alloc]initWithFrame:CGRectMake(100, 140, [UIScreen mainScreen].bounds.size.width-200, 200)];
    _imageView=imageView;
    [_imageView setBackgroundColor:[UIColor whiteColor]];
    [imagecontrolview addSubview:_imageView];
    [_imageView setImage:[UIImage imageNamed:@"dog"]];
    //在imageview上创建button
    
    
    
    
    //创建left
    
    UIButton *leftView=[[UIButton alloc]initWithFrame:CGRectMake(30, 200, 50, 50)];
    
    _leftBtn=leftView;
     _leftBtn.tag=101;
    [_leftBtn setImage:[UIImage imageNamed: @"left_normal.png"] forState:UIControlStateNormal];
    [_leftBtn setImage:[UIImage imageNamed:@"left_highlighted.png"] forState:UIControlStateHighlighted];
    [_leftBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
   
    [imagecontrolview addSubview:_leftBtn];

   //创建right
    UIButton *rightview=[[UIButton alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width-80, 200,50 , 50)];
    
    _rightBtn=rightview;
     _rightBtn.tag=102;
    [_rightBtn setImage:[UIImage imageNamed:@"right_normal.png"] forState:UIControlStateNormal];
    [_rightBtn setImage:[UIImage imageNamed: @"right_highlighted.png"] forState:UIControlStateHighlighted];
    [_rightBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
  
    [imagecontrolview addSubview:_rightBtn];
    
    //Image数组
    

    
    

}
-(NSArray *)images{
    if (_images==nil) {
        //找到Plisht文件路径
        NSString *path=[[NSBundle mainBundle] pathForResource:@"Images" ofType:@"plist"];
        //根据路径初始化_images
        _images=[NSArray arrayWithContentsOfFile:path];
    }
    return _images;

}



-(void)btnClick:(UIButton *)sender{
    NSLog(@"index的值是%ld",index);
    switch (sender.tag) {
        case 101:{
            index --;
            NSLog(@"index的值是：%ld",index);
            
        };
            [self updata];
            break;
            
        case 102:{
            
            index ++;
            NSLog(@"index的值是：%ld",index);
        };   [self updata];
            break;
            
        default:
            break;
    }
}

-(void)updata{
    _indexlabel.text=[NSString stringWithFormat:@"%ld/%ld",index+1,self.images.count];
    _indexlabel.textAlignment=NSTextAlignmentCenter;
    NSDictionary *dict=self.images[index];
    
    NSString *imageN=dict[@"name"];
    _imageView.image=[UIImage imageNamed:imageN];
    
    _leftBtn.enabled=index==0?NO:YES;
    _rightBtn.enabled=index==self.images.count-1?NO:YES;
}




-(void)home{
    [self viewDidLoad];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
