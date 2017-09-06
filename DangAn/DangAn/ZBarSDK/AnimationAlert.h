//
//  AnimationAlert.h
//  DangAn
//
//  Created by 刘翔 on 16/9/25.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimationAlert : UIView<UIScrollViewDelegate,UIWebViewDelegate,UIGestureRecognizerDelegate>
{
    UIView *_maskView;
    
}
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UIWebView *web1;

@property (weak, nonatomic) IBOutlet UIWebView *web2;
@property (weak, nonatomic) IBOutlet UIWebView *web3;
@property (weak, nonatomic) IBOutlet UIPageControl *page;

@property (weak, nonatomic) IBOutlet UIWebView *web4;

@property (nonatomic,copy)void(^clickBlock)();

- (instancetype)initAlert;

- (void)show;
- (void)dismiss;



@end
