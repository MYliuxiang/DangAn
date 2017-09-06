//
//  AnimationAlert.m
//  DangAn
//
//  Created by 刘翔 on 16/9/25.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "AnimationAlert.h"

@implementation AnimationAlert


- (instancetype)initAlert
{
    self = [super init];
    if (self) {
        self  = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
       
        self.height = kScreenHeight - 140;
        self.width = kScreenWidth - 20;
        self.center = [self topView].center;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
        tap.delegate = self;
        [self.web4 addGestureRecognizer:tap];
        
        
        
//        NSString *filePath = [[NSBundle mainBundle]pathForResource:@"1" ofType:@"js"];
//        NSString *htmlString = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];       
//        
//        [self.web1 loadHTMLString:htmlString baseURL:[NSURL URLWithString:filePath]];
//        
        NSData *gif1 = [NSData dataWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"动画1" ofType:@"gif"]];
        [self.web1 loadData:gif1 MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
        
        NSData *gif2 = [NSData dataWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"动画2" ofType:@"gif"]];
        [self.web2 loadData:gif2 MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
        
        NSData *gif3 = [NSData dataWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"动画3" ofType:@"gif"]];
        [self.web3 loadData:gif3 MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
        
        NSData *gif4 = [NSData dataWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"动画4" ofType:@"gif"]];
        [self.web4 loadData:gif4 MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
        
        
    }
    return self;
    
    
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    
    return YES;
    
}



- (void)tap
{
    
    self.clickBlock();
    [self dismiss];

}

- (void)awakeFromNib
{
    
    self.layer.cornerRadius = 5;
    self.layer.masksToBounds = YES;
    //    self.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
    //    self.layer.borderWidth = 1;
    
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(0, 0);
    self.layer.shadowRadius = 3;
    self.layer.shadowOpacity = 1.0;
    
    
    self.web1.scrollView.scrollEnabled = NO;
    self.web2.scrollView.scrollEnabled = NO;
    self.web3.scrollView.scrollEnabled = NO;
    self.web4.scrollView.scrollEnabled = NO;
    self.web4.userInteractionEnabled = YES;

    self.web1.delegate = self;
    self.web2.delegate = self;
    self.web3.delegate = self;
    self.web4.delegate = self;
    self.scrollView.delegate = self;
    
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    
    
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"1" ofType:@"js"];
    NSString *JSstringAction = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    [webView stringByEvaluatingJavaScriptFromString:JSstringAction];

}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    
        int page = scrollView.contentOffset.x / scrollView.frame.size.width;
    
        _page.currentPage = page;
    
    
    if(page == 0){
        
        NSData *gif1 = [NSData dataWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"动画1" ofType:@"gif"]];
        [self.web1 loadData:gif1 MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
        
    
    }else if(page == 1){
        
    
        
        NSData *gif2 = [NSData dataWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"动画2" ofType:@"gif"]];
        [self.web2 loadData:gif2 MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
      
    
    }else if (page == 2){
        
        
        NSData *gif3 = [NSData dataWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"动画3" ofType:@"gif"]];
        [self.web3 loadData:gif3 MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
      
    
    }else{
        
        
        NSData *gif4 = [NSData dataWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"动画4" ofType:@"gif"]];
        [self.web4 loadData:gif4 MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];

    }

}

- (void)show {
    
    _maskView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight-49)];
    _maskView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:.5];
    [[self topView] addSubview:_maskView];
    
    [[self topView] addSubview:self];
    self.center = [self topView].center;
    [self showAnimation];
}
- (void)dismiss {
    
    [_maskView removeFromSuperview];
    [self removeFromSuperview];
    [self hideAnimation];
    
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    
}

- (void)showAnimation {
    
    CAKeyframeAnimation *popAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    popAnimation.duration             = 1;
    popAnimation.values               = @[[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.01f, 0.01f, 1.0f)],
                                          [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.05f, 1.05f, 1.0)],
                                          [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.95f, 0.95f, 1.0f)],
                                          [NSValue valueWithCATransform3D:CATransform3DIdentity]];
    popAnimation.keyTimes             = @[@0.2f, @0.5f, @0.75f, @1.0f];
    popAnimation.timingFunctions      = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                          [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                          [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [self.layer addAnimation:popAnimation forKey:nil];
}

- (void)hideAnimation{
    [UIView animateWithDuration:0.4 animations:^{
        self.alpha = 0.0;
        
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
    
    
}


-(UIView*)topView{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    return  window.subviews[0];
}




@end



































