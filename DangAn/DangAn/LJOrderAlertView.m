//
//  LJOrderAlertView.m
//  DangAn
//
//  Created by lijiang on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LJOrderAlertView.h"

@implementation LJOrderAlertView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithtitleString:(NSString *)titleString
               textFieldPlace:(NSString *)textFieldPlace
                     delegate:(id<LJOrderAlertViewDelegate>)delgate
{

    self = [super init];
    if (self) {
        self  = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
        _lable_title.text = titleString;
        _textField_num.placeholder = textFieldPlace;
     
        _delegate = delgate;
        
    
        //        self.frame = CGRectMake(0, 0, kScreenWidth - 75, 0);
        self.width = kScreenWidth - 80;
        self.height = self.btn_done.bottom;
        self.center = [self topView].center;
    }
    return self;

}

- (void)awakeFromNib
{
    
    self.btn_done.layer.borderColor = Color_bg.CGColor;
    self.btn_done.layer.masksToBounds = YES;
    self.btn_done.layer.borderWidth = 1;
    
    self.btn_cance.layer.borderColor = Color_bg.CGColor;
    self.btn_cance.layer.masksToBounds = YES;
    self.btn_cance.layer.borderWidth = 1;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    [self.textField_num becomeFirstResponder];
    
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

- (IBAction)DoneAction:(id)sender {
    
    if (_textField_num.text.length == 0) {
        [MBProgressHUD showSuccess:@"请输入数量" toView:self];
        return;
    }
    
    [self.delegate clickcontentString:_textField_num.text lxView:self];
    [self dismiss];
}

- (IBAction)CanceAction:(id)sender {
    
    [self dismiss];
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
