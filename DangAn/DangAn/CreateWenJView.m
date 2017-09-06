//
//  CreateWenJView.m
//  DangAn
//
//  Created by macvivi on 16/8/4.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "CreateWenJView.h"

@implementation CreateWenJView

- (IBAction)done:(id)sender {
    
    if (self.textF1.text.length == 0 ) {
        
        return;
    }
    if ([self.delegate respondsToSelector:@selector(clickindex:lxView:whiteText1:withTwxt2:)]) {
        
        [self.delegate clickindex:1 lxView:self whiteText1:self.textF1.text withTwxt2:self.textF2.text];
    }
    [self dismiss];
    
    
}

- (instancetype)initWithTitle:(NSString *)title
                 Placeholdet1:(NSString *)placeholdet1
                 Placeholdet2:(NSString *)placeholdet2
                     delegate:(id<CreateWJViewdelegate>)delgate
{
    self = [super init];
    if (self) {
        self  = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
        
        self.tLabel.text = title;
        self.textF1.placeholder = placeholdet1;
        self.textF2.placeholder = placeholdet2;
        _delegate = delgate;
        self.width = kScreenWidth - 80;
        self.height = self.doneBtn.bottom;
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
    
    self.textF1.leftViewMode = UITextFieldViewModeAlways;
    self.textF1.leftView = view;
    //
    UIView *view1 = [UIView new];
    view1.width = 5;
    
    
    self.textF2.leftViewMode = UITextFieldViewModeAlways;
    self.textF2.leftView = view1;
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    
    
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
    
    //    self.textF1 prese
    //    [self.textF1 becomeFirstResponder];
    
    [self.textF1 performSelector:@selector(becomeFirstResponder) withObject:nil afterDelay:.5f];
    
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
    
    [UIView animateWithDuration:.5 animations:^{
        
        self.alpha = 0.0;
        
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
    
    
}

- (void)cansle:(id)sender{
    [self dismiss];

}


-(UIView*)topView{
    
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    return  window.subviews[0];
    
}

@end
