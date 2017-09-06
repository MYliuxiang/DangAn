//
//  ContactViewController.m
//  PaiMai
//
//  Created by 李立 on 16/5/7.
//  Copyright © 2016年 Viatom. All rights reserved.
//

#import "ContactViewController.h"

@implementation ContactViewController


-(void)viewDidLoad
{
    [super viewDidLoad];
    self.text = @"留言反馈";
    [self _initView];

}

//初始化视图
-(void)_initView
{
    //输入框
    _textView = [[UITextView alloc]initWithFrame:CGRectMake(5, 84, kScreenWidth-10, 180)];
//    _textView.textColor = UIColor6(正文小字);
    _textView.font = [UIFont systemFontOfSize:14];
    _textView.delegate = self;
    _textView.scrollEnabled = YES;//是否可以拖动
    _textView.showsHorizontalScrollIndicator = NO;
    _textView.shouldGroupAccessibilityChildren = NO;
    _textView.returnKeyType = UIReturnKeyDone;
    [self.view addSubview:_textView];
    
    //默认输入Label
    _lael1 = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, 200, 20)];
    _lael1.text = @"输入内容(200字以内)";
    _lael1.textColor = Color_text;
//    _lael1.textColor = UIColor6(正文小字);
    _lael1.font = [UIFont systemFontOfSize:13];
    [_textView addSubview:_lael1];
    
    //线条
//    UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, _textView.bottom, kScreenWidth, .2)];
//    lineView.backgroundColor = [UIColor grayColor];
//    [self.view addSubview:lineView];
    
    //提交按钮
    UIButton *lingquButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    lingquButton.frame = CGRectMake((kScreenWidth-200 * ratioWidth) / 2.0, lineView.bottom+15, 200*ratioWidth, 40 * ratioHeight);
    lingquButton.frame =CGRectMake(80, _textView.bottom+30 , kScreenWidth - 160, 45);
    [lingquButton setTitle:@"确定" forState:UIControlStateNormal];
    [lingquButton setTitleColor:Color_blue forState:UIControlStateNormal];
    lingquButton.layer.cornerRadius = 5;
    lingquButton.layer.borderWidth = 1;
    lingquButton.layer.borderColor = Color_blue.CGColor;
    lingquButton.titleLabel.font = [UIFont boldSystemFontOfSize:15];
    lingquButton.backgroundColor = [UIColor whiteColor];
    lingquButton.tag = 11;
    
    [lingquButton addTarget:self action:@selector(lingquButton:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:lingquButton];
    
    
    
    


}

//提交按钮点击事件
-(void)lingquButton:(UIButton *)button
{
    if (_textView.text.length == 0) {
        [MBProgressHUD showError:@"留言不能为空" toView:[UIApplication sharedApplication].keyWindow];
        return;
    }
    if (_textView.text.length >=  200) {
        [MBProgressHUD showError:@"字数过多" toView:[UIApplication sharedApplication].keyWindow];
        return;
    }
    NSLog(@"提交----%@",_textView.text);
    
        
    [WXDataService requestAFWithURL:Url_Other_leaveMessage params:@{@"member_id":[UserDefaults objectForKey:Member_id],@"description":_textView.text} httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {

        
        [self hiddnkeyAction];
        //请求失败
        if ([[result objectForKey:@"status"] integerValue] == 0) {
            
            
            [MBProgressHUD showSuccess:result[@"msg"] toView:[UIApplication sharedApplication].keyWindow];
            [self.navigationController popViewControllerAnimated:YES];
            
        }
        
        //请求失败
        if ([[result objectForKey:@"status"] integerValue] == 1) {
            
            [MBProgressHUD showError:result[@"msg"] toView:[UIApplication sharedApplication].keyWindow];
            
        }
        
    } errorBlock:^(NSError *error) {
        
    }];
    
}

//隐藏键盘
- (void)hiddnkeyAction
{
    [self keyfile];
    
}

- (void)keyfile
{
    if (![_textView isExclusiveTouch]) {
        [_textView resignFirstResponder];
    }
    
    
}

//开始编辑
-(BOOL)textViewShouldBeginEditing:(UITextView *)textView

{
    _lael1.hidden = YES;
    return YES;
}
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text

{
    
    if ([text isEqualToString:@"\n"]) {
        [self hiddnkeyAction];
        return NO;
    }
    return YES;
}

@end
