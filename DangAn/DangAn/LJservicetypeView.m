//
//  LJservicetypeView.m
//  DangAn
//
//  Created by 李江 on 16/8/20.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LJservicetypeView.h"

@implementation LJservicetypeView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithDelegate:(id<LJservicetypeViewDelegate>)delgate
{
    
    self = [super init];
    if (self) {
//        self  = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
        
        self.backgroundColor = [UIColor whiteColor];
        //        self.frame = CGRectMake(0, 0, kScreenWidth - 75, 0);
        self.width = kScreenWidth - 80;
        self.height = 330;
        self.center = [self topView].center;
        _delegate = delgate;
        UILabel *title = [[UILabel alloc]initWithFrame:CGRectMake(0, 10, self.width, 20)];
        title.font = [UIFont systemFontOfSize:16];
        title.textColor = Color_blue;
        title.text = @"服务类型";
        title.textAlignment = NSTextAlignmentCenter;
        [self addSubview:title];
        
        NSArray *array = @[@"常规服务",@"加急服务",@"紧急服务",@"非工作日服务",@"取消"];
        for (int i = 0; i < array.count;i ++ ) {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(40,title.bottom + 15 + 55 * i  , self.width - 80 , 45);
            [button setTitleColor:Color_text forState:UIControlStateNormal];
            [button setTitle:array[i] forState:UIControlStateNormal];
            button.titleLabel.font =[UIFont systemFontOfSize:14];
            button.layer.cornerRadius = 5;
            button.layer.borderWidth = 1;
            button.layer.borderColor = Color_blue.CGColor;
            button.tag = 200 + i;
            button.titleLabel.textAlignment = NSTextAlignmentRight;
            [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:button];
            
        }
        
    }
    return self;
    
}

- (void)buttonAction:(UIButton *)btn
{
    

    if (btn.tag == 204) {
        [self dismiss];
    } else {
    
        [_delegate clickindex:btn.tag - 199];
         [self dismiss];
    }

}

- (void)awakeFromNib
{
    
    self.layer.cornerRadius = 5;
    self.layer.masksToBounds = YES;
    self.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
    self.layer.borderWidth = 1;
    
    
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


@end
