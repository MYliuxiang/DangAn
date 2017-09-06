//
//  OneAlert.m
//  DangAn
//
//  Created by 刘翔 on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "OneAlert.h"

@implementation OneAlert

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithTitle:(NSString *)title
                      Message:(NSString *)message
                  Placeholdet:(NSString *)placeholdet
                     delegate:(id<LXOneViewDelegate>)delgate
{
    self = [super init];
    if (self) {
        self  = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
        
        
        //        self.frame = CGRectMake(0, 0, kScreenWidth - 75, 0);
       
        self.titleLabel.text = title;
        if (message == nil) {
        
            self.messageJianGE.constant = 0;
            self.height = self.button1.bottom;

            
        }else{
            
            self.messageJianGE.constant = 10;
            self.height = self.button1.bottom - 10;

        }
        self.mesageLabel.text = message;
        self.textFiled.placeholder = placeholdet;
        _delegate = delgate;
        self.width = kScreenWidth - 80;
//        self.height = self.button1.bottom;
//        [self setupAutoHeightWithBottomView:self.button1 bottomMargin:40];

        self.center = [self topView].center;
        
    }
    return self;


}

- (void)awakeFromNib
{
    
    self.layer.cornerRadius = 5;
    self.layer.masksToBounds = YES;
//    self.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
//    self.layer.borderWidth = 1;
    
    UIView *view = [UIView new];
    view.width = 5;
    
    self.textFiled.leftViewMode = UITextFieldViewModeAlways;
    self.textFiled.leftView = view;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    [self.textFiled becomeFirstResponder];
    
    
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
    
    if (_textFiled.text.length == 0 ) {
        [MBProgressHUD showError:[NSString stringWithFormat:@"请输入信息"] toView:self];
        return;
    }
    if([_textFiled.placeholder isEqualToString:@"请输入邮箱"])
    {
        if (![InputCheck isEmail:_textFiled.text]) {
            [MBProgressHUD showError:@"请输入正确的邮箱" toView:[UIApplication sharedApplication].keyWindow];
            return;
        }
        
    }
    if ([self.delegate respondsToSelector:@selector(clickindex:lxView:whiteText:)]) {
        
        [self.delegate clickindex:1 lxView:self whiteText:_textFiled.text];

    }
    
    [self dismiss];

}
@end
