//
//  CommentVC.m
//  DangAn
//
//  Created by Viatom on 16/7/27.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "CommentVC.h"

@interface CommentVC ()

@end

@implementation CommentVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.text = @"发表评论";
    self.textView.delegate = self;
    self.commentBtn.layer.cornerRadius = 4;
    self.commentBtn.layer.masksToBounds = YES;
    self.commentBtn.layer.borderColor = [MyColor colorWithHexString:@"#007cff"].CGColor;
    self.commentBtn.layer.borderWidth = 1;
    self.label.userInteractionEnabled = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -------UITextViewDelegate------------
-(void)textViewDidChange:(UITextView *)textView
{
    
    if (textView.text.length == 0) {
        self.label.text = @"输入内容";
    }else{
        self.label.text = @"";
    }
    
}


- (IBAction)sendAC:(UIButton *)sender {
    
    if (self.textView.text.length == 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请输入内容" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    
    NSDictionary *params = @{@"news_id":self.newsID,@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"content":self.textView.text};
    
    [WXDataService requestAFWithURL:Url_postComment params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0) {
            
            [MBProgressHUD showSuccess:@"发送成功" toView:self.view];
            
            [self.navigationController performSelector:@selector(popViewControllerAnimated:) withObject:nil afterDelay:1];
            
        }
        
        
        if ([[result objectForKey:@"status"] integerValue] == 1) {
            
            [MBProgressHUD showError:result[@"msg"] toView:self.view];
            
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
    }];
    
    
}
@end













