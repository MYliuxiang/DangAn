//
//  FailAlert.m
//  DangAn
//
//  Created by 刘翔 on 16/6/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "FailAlert.h"

@implementation FailAlert

- (instancetype)initWithTitle:(NSString *)title
                     messsage:(NSString *)message
                     delegate:(id<LXFailViewDelegate>)delgate
{
    
    self = [super init];
    if (self) {
        self  = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
        
        self.titleLabel.text = title;
        _delegate = delgate;
        self.messageLabel.text = message;
        self.width = kScreenWidth - 100;
        //        self.height = self.button1.bottom;
        self.center = [self topView].center;
        [self setupAutoHeightWithBottomView:self.button1 bottomMargin:0];
        
        
    }
    return self;



}

- (void)awakeFromNib
{
    
    self.layer.cornerRadius = 5;
    self.layer.masksToBounds = YES;
    //    self.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
    //    self.layer.borderWidth = 1;
    
}

- (void)show {
    _maskView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    _maskView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:.8];
    [[self topView] addSubview:_maskView];
    
    [[self topView] addSubview:self];
    self.center = [self topView].center;
    [self showAnimation];
    
    
    
}
- (void)dismiss {
    
    [_maskView removeFromSuperview];
    [self removeFromSuperview];
    [self hideAnimation];
    
    
    
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
    
    [UIView animateWithDuration:.5 animations:^{
        
        self.alpha = 0.0;
        
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
    
    
}


-(UIView*)topView{
    
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    return  window.subviews[0];
    
}


- (IBAction)doneAC:(id)sender {
    
    if ([self.delegate respondsToSelector:@selector(clickindex)]) {
        
        [self.delegate clickindex];
    }
    [self dismiss];

}
@end

























