//
//  PickAlert.m
//  DangAn
//
//  Created by 刘翔 on 16/6/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "PickAlert.h"

@implementation PickAlert

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)cancle:(id)sender {
    
    [self dismiss];
}

- (IBAction)newAC:(id)sender {
    
    if ([self.delegate respondsToSelector:@selector(clickindex:lxView:whithAIndex:)]) {
        
        [self.delegate clickindex:0 lxView:self whithAIndex:nil];
    }
    [self dismiss];
}

- (IBAction)doneAC:(id)sender {
    
    if ([self.delegate respondsToSelector:@selector(clickindex:lxView:whithAIndex:)]) {
        
        [self.delegate clickindex:1 lxView:self whithAIndex:[self.picker selectedRowInComponent:0]];
    }
    [self dismiss];
}


- (instancetype)initWithTitle:(NSString *)title
                    pickArray:(NSArray *)pickArray
                     newTitle:(NSString *)newTitle
                     delegate:(id<LXPickViewDelegate>)delgate
{

    self = [super init];
    if (self) {
        self  = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
        
        self.titleLabel.text = title;
        _delegate = delgate;
        self.pickArray = pickArray;
        self.picker.delegate = self;
        self.picker.dataSource = self;
        [self.wenBtn setTitle:newTitle forState:UIControlStateNormal];
        self.width = kScreenWidth - 80;
//        self.height = self.button1.bottom;
        self.center = [self topView].center;
        [self.picker reloadAllComponents];
        [self.picker selectRow:_pickArray.count / 2 inComponent:0 animated:YES];
        self.index = [NSIndexPath indexPathForRow:_pickArray.count / 2 inSection:0];
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

#pragma mark- 设置数据
 //一共多少列
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
         return 1;
}

//每列对应多少行
 -(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
        return self.pickArray.count;
}

 //每列每行对应显示的数据是什么
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
     
     return self.pickArray[row];
}


- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    UILabel* pickerLabel = (UILabel*)view;
    
    if (self.index.section == component && self.index.row == row) {
        
        return [self viewForRow:self.index.row forComponent:self.index.section];
        
    }
    if (!pickerLabel){
        pickerLabel = [[UILabel alloc] init];
        // Setup label properties - frame, font, colors etc
        //adjustsFontSizeToFitWidth property to YES
        
        pickerLabel.adjustsFontSizeToFitWidth = YES;
        [pickerLabel setTextAlignment:NSTextAlignmentCenter];
        [pickerLabel setBackgroundColor:[UIColor clearColor]];
        [pickerLabel setFont:[UIFont systemFontOfSize:16]];
       
    }
    // Fill the label text here
    pickerLabel.text=[self pickerView:pickerView titleForRow:row forComponent:component];
    return pickerLabel;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component;
{
    [self viewForRow:row forComponent:component];
    self.index = [NSIndexPath indexPathForRow:row inSection:component];

    [pickerView reloadAllComponents];
    
}

- (UIView *)viewForRow:(NSInteger)row forComponent:(NSInteger)component;
{
    
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(00, 0,100, 50)];
        NSString *st = self.pickArray[row];
        lab.text = st;
        lab.font = [UIFont systemFontOfSize:18];
        lab.textAlignment = NSTextAlignmentCenter;
        return lab;
        
    
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


@end





















