//
//  AddAdressVCViewController.m
//  DangAn
//
//  Created by Viatom on 16/8/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "AddAdressVCViewController.h"

@interface AddAdressVCViewController ()

@end

@implementation AddAdressVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    if (self.isAdd) {
        
        self.text = @"添加地址";
        self.label.text = @"填写所在区域位置\n门牌号/楼层号等详细地址";


    }else{
    
        self.text = @"修改地址";
        self.label.text = @"";
        self.nameText.text = self.model.name;
        self.phoneField.text = self.model.mobile;
        self.adresstext.text = self.model.address;


    }
    self.saveBtn.layer.cornerRadius = 5;
    self.saveBtn.layer.masksToBounds = YES;
    self.saveBtn.layer.borderWidth = .5;
    self.saveBtn.layer.borderColor = Color(13, 148, 252).CGColor;
    self.adresstext.delegate = self;
}


-(void)textViewDidChange:(UITextView *)textView
{
    
    
    if (textView.text.length == 0) {
        self.label.text = @"填写所在区域位置\n门牌号/楼层号等详细地址";
    }else{
        self.label.text = @"";
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)saveAC:(id)sender {
    
    if (self.nameText.text.length == 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请填写收货人姓名！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    
    if (self.phoneField.text.length == 0) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请填写电话！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        return;
        
    }
    
    if (![InputCheck isPhone:self.phoneField.text]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请填写正确电话！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        return;

    }

    
      if (self.adresstext.text.length == 0) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请填写详细地址！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        return;
        
    }
    
    NSDictionary *params;
    if (self.isAdd) {
        
        params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"name":self.nameText.text,@"mobile":self.phoneField.text,@"address":self.adresstext.text};

    }else{
    
         params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"name":self.nameText.text,@"mobile":self.phoneField.text,@"address":self.adresstext.text,@"address_id":self.model.address_id};

    
    }
    
    
    
    [WXDataService requestAFWithURL:self.isAdd ? Url_Other_addAddress : Url_Other_editAddress params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        NSLog(@"=====result:%@",result);
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                
                [self.navigationController popViewControllerAnimated:YES];
                
            }
            
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
        
        
    }];
    

    
}
@end
