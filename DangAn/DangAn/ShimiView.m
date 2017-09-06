//
//  ShimiView.m
//  DangAn
//
//  Created by 未来社区 on 16/6/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "ShimiView.h"

@implementation ShimiView


- (instancetype)initWithtitleString:(NSString *)titleString
                     textFieldPlace:(NSString *)textFieldPlace
                          imagename:(NSString *)imagename
                           delegate:(id<ShimiViewDelegate>)delgate

{
    
    self = [super init];
    if (self) {
        self  = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
        _lable_title.text = titleString;
        _lable_content.text = textFieldPlace;
        _delegate = delgate;

        [_fengmian setImage:[UIImage imageNamed:imagename] forState:UIControlStateNormal];
        
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
    
    
}

- (IBAction)DoneAction:(id)sender {
    
//    if (_textField_num.text.length == 0) {
//        [MBProgressHUD showSuccess:@"请输入档案名称" toView:self];
//        return;
//    }
//    
    [self.delegate clickcontentString:@"" lxView:self index:1];
    [self dismiss];
}

- (IBAction)CanceAction:(id)sender {
    
    [self dismiss];
}


#pragma mark - 选择图片
- (IBAction)fengmianAction:(id)sender {
    
    ZLPhotoPickerViewController *pickerVc = [[ZLPhotoPickerViewController alloc] init];
    // MaxCount, Default = 9
    pickerVc.maxCount = 1 - self.assets.count;
    // Jump AssetsVc
    pickerVc.status = PickerViewShowStatusCameraRoll;
    // Recoder Select Assets
    pickerVc.selectPickers = self.assets;
    // Filter: PickerPhotoStatusAllVideoAndPhotos, PickerPhotoStatusVideos, PickerPhotoStatusPhotos.
    pickerVc.photoStatus = PickerPhotoStatusPhotos;
    // Desc Show Photos, And Suppor Camera
    pickerVc.topShowPhotoPicker = YES;
    // CallBack
    pickerVc.callBack = ^(NSArray<ZLPhotoAssets *> *status){
        
        NSMutableArray *photos = [NSMutableArray arrayWithCapacity:status.count];
        for (ZLPhotoAssets *assets in status) {
            ZLPhotoPickerBrowserPhoto *photo = [ZLPhotoPickerBrowserPhoto photoAnyImageObjWith:assets];
            photo.asset = assets;
            [photos addObject:photo];
        }
        
        self.assets = photos.mutableCopy;
        ZLPhotoPickerBrowserPhoto *photo = [self.assets objectAtIndex:0];
        [_fengmian setImage:[photo.asset thumbImage] forState:UIControlStateNormal];
        
    };
    [pickerVc showPickerVc:[self ViewController]];
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

- (void)clickcontentString:(NSString *)contentString lxView:(ShimiView *)alert{
    
    
    
}

@end
