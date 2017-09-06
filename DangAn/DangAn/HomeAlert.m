//
//  HomeAlert.m
//  DangAn
//
//  Created by 刘翔 on 16/6/5.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "HomeAlert.h"

@implementation HomeAlert

- (IBAction)buttonAC1:(id)sender {
    
    [self.delegate clickindex:1 lxView:self];
    [self dismiss];
    
    
}

- (IBAction)buttonAC:(id)sender {
    
    [self.delegate clickindex:0 lxView:self];
    [self dismiss];

}

- (IBAction)closeAC:(id)sender {
    [self dismiss];
}

//+ (instancetype)viewFromNIB {
//    // 加载xib中的视图，其中xib文件名和本类类名必须一致
//    // 这个xib文件的File's Owner必须为空
//    // 这个xib文件必须只拥有一个视图，并且该视图的class为本类
//    NSArray *views = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil];
//    return views[0];
//}

- (instancetype)initWithImage:(UIImage *)titleImage
                        Title:(NSString *)title
                      Content:(NSString *)content
                     delegate:(id<LXViewDelegate>)delgate
{
    self = [super init];
    if (self) {
        self  = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
        _title = title;
        _Image = titleImage;
        _content = content;
        _delegate = delgate;
        
        self.titleImage.image = _Image;
        self.titleLabel.text = _title;
        self.contentLabel.text = _content;
        
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self.contentLabel.text];
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle setLineSpacing:6];//调整行间距
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [_content length])];
        self.contentLabel.attributedText = attributedString;
        self.contentLabel.textAlignment = NSTextAlignmentCenter;
//        self.frame = CGRectMake(0, 0, kScreenWidth - 75, 0);
        self.width = kScreenWidth - 80;
        self.height = self.button1.bottom + 40;
        [self setupAutoHeightWithBottomView:self.button1 bottomMargin:40];

        self.center = [self topView].center;
        self.layer.cornerRadius = 3;
        self.layer.masksToBounds = YES;
    }
    return self;


}



- (void)awakeFromNib
{
    
    self.button.layer.cornerRadius = 4;
    self.button.layer.masksToBounds = YES;
    self.button.layer.borderColor = [MyColor colorWithHexString:@"#007cff"].CGColor;
    self.button.layer.borderWidth = 1;
    
//    self.frame = CGRectMake(0, 0, kScreenWidth - 80, kScreenHeight / 4 * 3);
    

}

- (void)show {
    _maskView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    _maskView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:.6];
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
