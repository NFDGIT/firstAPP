//
//  registerViewController.m
//  UI概述
//
//  Created by qingyun on 16/1/27.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "registerViewController.h"
#define Filepath @"/Users/qingyun/Desktop/彭辉/UI概述/userinformation.plist"
@interface registerViewController ()


//1, account

@property (weak, nonatomic) IBOutlet UILabel *REGaccountlable;
@property (weak, nonatomic) IBOutlet UITextField *REGaccount;
@property (weak, nonatomic) IBOutlet UITextField *acal;
//2,email
@property (weak, nonatomic) IBOutlet UILabel *REGemaillable;
@property (weak, nonatomic) IBOutlet UITextField *REGemail;
@property (weak, nonatomic) IBOutlet UITextField *emal;
//3,password
@property (weak, nonatomic) IBOutlet UILabel *REGpasswordlable;
@property (weak, nonatomic) IBOutlet UITextField *REGpassword;
@property (weak, nonatomic) IBOutlet UITextField *paal;
//4,beginpassword
@property (weak, nonatomic) IBOutlet UILabel *REGbeginpasswordlable;
@property (weak, nonatomic) IBOutlet UITextField *REGbeginpassword;
@property (weak, nonatomic) IBOutlet UITextField *beal;
//5,phone
@property (weak, nonatomic) IBOutlet UILabel *REGphonelable;
@property (weak, nonatomic) IBOutlet UITextField *REGphone;
@property (weak, nonatomic) IBOutlet UITextField *phal;
//6,age
@property (weak, nonatomic) IBOutlet UILabel *REGagelable;
@property (weak, nonatomic) IBOutlet UITextField *REGage;
@property (weak, nonatomic) IBOutlet UITextField *agal;
@property (strong, nonatomic)NSMutableDictionary * plist;


@end

@implementation registerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //delegate
    _REGaccount.delegate=self;
    _REGemail.delegate=self;
    _REGpassword.delegate=self;
    _REGbeginpassword.delegate=self;
    _REGphone.delegate=self;
    _REGage.delegate=self;
    _acal.delegate=self;
    //tag
    _REGaccount.tag=1;
    _REGemail.tag=2;
    _REGpassword.tag=3;
    _REGbeginpassword.tag=4;
    _REGphone.tag=5;
    _REGage.tag=6;
    _acal.tag=7;
    
    
    self.plist = [NSMutableDictionary new];
    
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSLog(@"tag%ld>>>>%@",textField.tag,textField.text);
    
    
    switch (textField.tag) {
        case 1 :
       {   NSPredicate *predicate=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"[_A-Za-z0-9]+"];
            if ([predicate evaluateWithObject: string]) {
              _acal.text=NULL;
            }else if([string isEqualToString:@""]){
               _acal.text=NULL;
               }else{_acal.text=@"请输入大小写或则数字";
                   return NO;
               }
           
            if(textField.text.length+1>3){
                 _acal.text=@"超过20个字符";
                if([string isEqualToString:@""]){
                    
                }else {
                   
                    return  NO;
                }
            }
    
            
  
          [_plist addEntriesFromDictionary:@{_REGaccountlable.text:[textField.text stringByAppendingString:string ]}];
  
            
        };
           break;
            
      case 2:
        {
            
            
            NSPredicate*predforemail=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"[A-Za-z0-9]+@[a-zA-Z0-9]+\\.[a-zA-Z]{2,4}"];
            if([predforemail evaluateWithObject: [textField.text stringByAppendingString:string]])
            {
                _emal.text=NULL;
            }else{_emal.text=@"请输入正确格式！";}
            
            [_plist addEntriesFromDictionary:@{_REGemaillable.text:[textField.text stringByAppendingString:string] }];
      
        }
           break;
            
      case 3:
        {
            NSPredicate*predforpassword=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"[A-Za-z0-9]+"];
            if([predforpassword evaluateWithObject:[textField.text stringByAppendingString:string]]){
                _paal.text=NULL;
            }else {
                _paal.text=@"请输入正确格式！";
            }
            
            
            
            
            
            [_plist addEntriesFromDictionary:@{_REGpasswordlable.text:[textField.text stringByAppendingString:string ]}];
   

        
        }
           break;
            
      case 4:
        {
            [_plist addEntriesFromDictionary:@{_REGbeginpasswordlable.text:textField.text}];
 
            
            
        }
          break;
            
      case 5:
        {
            [_plist addEntriesFromDictionary:@{_REGphonelable.text:textField.text}];

        }
          break;
            
        case 6:{
            [_plist addEntriesFromDictionary:@{_REGagelable.text:textField.text}];
 
        }
          break;
        default:
            break;
    }
    return  YES;
    
}









-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.REGaccount resignFirstResponder];
    [self.REGemail resignFirstResponder];
    [self.REGpassword resignFirstResponder];
    [self.REGbeginpassword resignFirstResponder];
    [self.REGphone resignFirstResponder];
    [self.REGage resignFirstResponder];
    
}
//开始输入
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
   
}
//结束输入
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    
}


- (IBAction)commit:(UIButton *)sender {
    
   
    [_plist writeToFile:Filepath atomically:YES];
     [self Backlogin];

}
-(void)Backlogin{
    UIStoryboard *mainSB=[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    loginViewController *login=[mainSB instantiateViewControllerWithIdentifier:@"main"];
    
    [self presentViewController:login animated:YES completion:^{
        NSLog(@"注册成功！！！！");
    }];
}

@end
