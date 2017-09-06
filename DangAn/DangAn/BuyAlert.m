//
//  BuyAlert.m
//  DangAn
//
//  Created by 刘翔 on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BuyAlert.h"

@implementation BuyAlert

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithDelegate:(id<LXBUYViewDelegate>)delgate
{

    self = [super init];
    if (self) {
        self  = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
        
        
        //        self.frame = CGRectMake(0, 0, kScreenWidth - 75, 0);
        self.width = kScreenWidth - 80;
        self.height = self.button1.bottom;
        self.center = [self topView].center;
        _delegate = delgate;

    }
    return self;

}

- (void)awakeFromNib
{
    
    self.layer.cornerRadius = 5;
    self.layer.masksToBounds = YES;
    self.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
    self.layer.borderWidth = 1;
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardWillHide:) name:UIKeyboardWillHideNotification object:nil];

    [self.textFiled1 becomeFirstResponder];

    
    
    
}

#pragma mark - 键盘处理
#pragma mark 键盘即将显示
- (void)keyBoardWillShow:(NSNotification *)note{
    
    NSDictionary *userInfo = note.userInfo;
    CGFloat keyHeight = [userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue].size.height;
    
    [UIView animateWithDuration:[note.userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue] animations:^{
        self.bottom = kScreenHeight - keyHeight - 50;
        
    }];
    
}

#pragma mark 键盘即将退出
- (void)keyBoardWillHide:(NSNotification *)note{
    
    NSDictionary *userInfo = note.userInfo;
    [UIView animateWithDuration:[note.userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue] animations:^{
        self.center = [self topView].center;
        
    }];
    
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


- (IBAction)cancleAC:(id)sender {
    
    [self dismiss];

}

- (IBAction)doneAC:(id)sender {
    
    
    if ( _textFiled2.text.length == 0 || _textFiled3.text.length == 0) {
        return;
    }
    
    [self.delegate clickindex:1 lxView:self whiteText1:_textFiled1.text whithText2:_textFiled2.text whithText3:_textFiled3.text];
    [self dismiss];
    
}
@end
















