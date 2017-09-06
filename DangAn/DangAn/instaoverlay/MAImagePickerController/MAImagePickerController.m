//
//  MAImagePickerController.m
//  instaoverlay
//
//  Created by Maximilian Mackh on 11/5/12.
//  Copyright (c) 2012 mackh ag. All rights reserved.
//

#import "MAImagePickerController.h"

#import "UIImage+fixOrientation.h"


@interface MAImagePickerController ()

- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo;
@end



@implementation MAImagePickerController
{
    BOOL volumeChangeOK;
}

@synthesize captureManager = _captureManager;
@synthesize cameraToolbar = _cameraToolbar;
@synthesize flashButton = _flashButton;
@synthesize pictureButton = _pictureButton;
@synthesize cameraPictureTakenFlash = _cameraPictureTakenFlash;

@synthesize invokeCamera = _invokeCamera;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor blackColor]];
    self.navbarHiden = YES;
    
    
    if (_sourceType == MAImagePickerControllerSourceTypeCamera && [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(MAImagePickerChosen:) name:@"MAIPCSuccessInternal" object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationWillEnterForegroundNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *notification){
            AudioSessionInitialize(NULL, NULL, NULL, NULL);
            AudioSessionSetActive(YES);
        }];
        
        [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidEnterBackgroundNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *notification)
         {
             AudioSessionSetActive(NO);
         }];
        
        
        AudioSessionInitialize(NULL, NULL, NULL, NULL);
        AudioSessionSetActive(YES);
        
        // Volume View to hide System HUD
        _volumeView = [[MPVolumeView alloc] initWithFrame:CGRectMake(-100, 0, 10, 0)];
        [_volumeView sizeToFit];
        [self.view addSubview:_volumeView];
        
        [self setCaptureManager:[[MACaptureSession alloc] init]];
        [_captureManager addVideoInputFromCamera];
        [_captureManager addStillImageOutput];
        [_captureManager addVideoPreviewLayer];
        
        CGRect layerRect = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
        [[_captureManager previewLayer] setBounds:layerRect];
        [[_captureManager previewLayer] setPosition:CGPointMake(CGRectGetMidX(layerRect),CGRectGetMidY(layerRect))];
        [[[self view] layer] addSublayer:[[self captureManager] previewLayer]];
        
        
        
        _gridView = [[UIView alloc] initWithFrame:CGRectMake(0, 20, kScreenWidth, kScreenHeight - kCameraToolBarHeight - 20)];
        _gridView.backgroundColor = [UIColor clearColor];
        
        //横线
        for (int i = 0; i < 3; i++) {
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0 , _gridView.height / 4.0 + _gridView.height / 4.0 *i, kScreenWidth, 1)];
            view.backgroundColor = [UIColor whiteColor];
            [_gridView addSubview:view];
        }
        
        //竖线
        for (int i = 0; i < 3; i++) {
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(kScreenWidth / 6.0 + i * kScreenWidth / 3.0, 0, 1, _gridView.height)];
            view.backgroundColor = [UIColor whiteColor];
            [_gridView addSubview:view];
        }
        [self.view addSubview:_gridView];

        
     
        UISwipeGestureRecognizer *swipeDown = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(dismissMAImagePickerController)];
        [swipeDown setDirection:UISwipeGestureRecognizerDirectionDown];
        [self.view addGestureRecognizer:swipeDown];
//        [[self view] addSubview:gridCameraView];
        
        
        _toolView = [[UIView alloc] initWithFrame:CGRectMake(0, kScreenHeight - kCameraToolBarHeight, kScreenWidth, kCameraToolBarHeight)];
        _toolView.backgroundColor = [UIColor blackColor];
        _toolView.alpha = .7;
        [self.view addSubview:_toolView];
        
        
        UIButton *photoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        photoBtn.frame = CGRectMake((kScreenWidth - 75) / 2.0, 15, 75, 75);
        [photoBtn setImage:[UIImage imageNamed:@"相机拍摄按钮"] forState:UIControlStateNormal];
        [photoBtn addTarget:self action:@selector(pictureMAIMagePickerController) forControlEvents:UIControlEventTouchUpInside];
        [_toolView addSubview:photoBtn];
        
        
        //打开相册
        UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, photoBtn.left, kCameraToolBarHeight)];
        [_toolView addSubview:leftView];
        
        UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        leftBtn.frame = CGRectMake((photoBtn.left - 27) / 2.0, 30, 27, 27);
        [leftBtn setImage:[UIImage imageNamed:@"相册"] forState:UIControlStateNormal];
        [leftBtn addTarget:self action:@selector(photoLibray) forControlEvents:UIControlEventTouchUpInside];
        [leftView addSubview:leftBtn];
        
        UILabel *leftLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, leftBtn.bottom + 10, leftView.width, 20)];
        leftLabel.text = @"从相册添加";
        leftLabel.textColor = [UIColor whiteColor];
        leftLabel.font = [UIFont systemFontOfSize:14];
        leftLabel.textAlignment = NSTextAlignmentCenter;
        [leftView addSubview:leftLabel];
        
        
        //取消
        UIView *rightView = [[UIView alloc] initWithFrame:CGRectMake(photoBtn.right, 0, photoBtn.left, kCameraToolBarHeight)];
        [_toolView addSubview:rightView];
        
        
        UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        rightBtn.frame = CGRectMake((photoBtn.left - 27) / 2.0, 30, 27, 27);
        [rightBtn setImage:[UIImage imageNamed:@"相机取消"] forState:UIControlStateNormal];
        [rightBtn addTarget:self action:@selector(dismissMAImagePickerController) forControlEvents:UIControlEventTouchUpInside];
        [rightView addSubview:rightBtn];
        

        UILabel *rightLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, leftBtn.bottom + 10, leftView.width, 20)];
        rightLabel.text = @"取消";
        rightLabel.textColor = [UIColor whiteColor];
        rightLabel.font = [UIFont systemFontOfSize:14];
        rightLabel.textAlignment = NSTextAlignmentCenter;
        [rightView addSubview:rightLabel];
        
    
        
        UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(kScreenWidth - 190, 27, 80, 30)];
        [button2 setImage:[UIImage imageNamed:@"闪光灯"] forState:UIControlStateNormal];
        [button2 setTitle:@"打开" forState:UIControlStateNormal];
        [button2 setTitle:@"关闭" forState:UIControlStateSelected];
        [button2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        button2.titleLabel.font =[UIFont systemFontOfSize:14];
        button2.titleEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
        button2.imageEdgeInsets = UIEdgeInsetsMake(0, -5, 0, 0);

        [button2 addTarget:self action:@selector(toggleFlash:) forControlEvents:UIControlEventTouchUpInside];
        button2.layer.cornerRadius = 8;
        button2.layer.masksToBounds = YES;
        button2.backgroundColor = [UIColor blackColor];
        button2.alpha = .8;
        [self.view addSubview:button2];
        
        
        if ([[NSUserDefaults standardUserDefaults] objectForKey:kCameraFlashDefaultsKey] == nil)
        {
            [self storeFlashSettingWithBool:YES];
        }
        
        if ([[NSUserDefaults standardUserDefaults] boolForKey:kCameraFlashDefaultsKey])
        {
            button2.selected = YES;
            [_captureManager setFlashOn:YES];
        }else{
            
            button2.selected = NO;
            [_captureManager setFlashOn:NO];
            
        }

        
        //网格按钮
        
        UIButton *button3 = [[UIButton alloc] initWithFrame:CGRectMake(button2.right + 10, 27, 80, 30)];
        [button3 setTitle:@"网格关闭" forState:UIControlStateNormal];
        [button3 setTitle:@"网格开启" forState:UIControlStateSelected];
        [button3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        button3.titleLabel.font =[UIFont systemFontOfSize:14];
        [button3 addTarget:self action:@selector(oppen:) forControlEvents:UIControlEventTouchUpInside];
        [button3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        button3.layer.cornerRadius = 8;
        button3.layer.masksToBounds = YES;
        button3.backgroundColor = [MyColor colorWithHexString:@"#007cff"];
        [self.view addSubview:button3];
        
        
//        //网格线
//        UIImage *gridImage;
//        
//        if ([[UIScreen mainScreen] bounds].size.height == 568.000000)
//        {
//            gridImage = [UIImage imageNamed:@"camera-grid-1136@2x.png"];
//        }
//        else
//        {
//            gridImage = [UIImage imageNamed:@"camera-grid"];
//        }
//        
//        UIImageView *gridCameraView = [[UIImageView alloc] initWithImage:gridImage];
//        [gridCameraView setFrame:CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height - kCameraToolBarHeight - 20)];
        
        
        

        if ([[NSUserDefaults standardUserDefaults] objectForKey:kIsOppenGrid] == nil)
        {
            //有
            button3.selected = NO;
            _gridView.hidden = NO;
        }
        
        if ([[NSUserDefaults standardUserDefaults] boolForKey:kIsOppenGrid])
        {
            
            button3.selected = NO;
            _gridView.hidden = NO;
            
        }else{
            
            button3.selected = YES;
            _gridView.hidden = YES;
        }

      
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(transitionToMAImagePickerControllerAdjustViewController) name:kImageCapturedSuccessfully object:nil];
        
//        _cameraPictureTakenFlash = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height -kCameraToolBarHeight)];
//        [_cameraPictureTakenFlash setBackgroundColor:[UIColor colorWithRed:0.99f green:0.99f blue:1.00f alpha:1.00f]];
//        [_cameraPictureTakenFlash setUserInteractionEnabled:NO];
//        [_cameraPictureTakenFlash setAlpha:0.0f];
//        [self.view addSubview:_cameraPictureTakenFlash];
    
    }
    else
    {
        self.view.layer.cornerRadius = 8;
        self.view.layer.masksToBounds = YES;
        
        _invokeCamera = [[UIImagePickerController alloc] init];
        _invokeCamera.delegate = self;
        _invokeCamera.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        _invokeCamera.allowsEditing = NO;
        [self.view addSubview:_invokeCamera.view];
    }
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(15, 24, 60, 40)];
    [button setImage:[UIImage imageNamed:@"白色返回箭头"] forState:UIControlStateNormal];
    [button setTitle:@"返回" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.titleLabel.font =[UIFont systemFontOfSize:16];
    button.titleEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    [button addTarget:self action:@selector(backAC) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    
}

- (UIImage *)imageByScalingToSize:(CGSize)targetSize whithSourceImage:(UIImage *)sourceImage
{
    UIImage *newImage = nil;
    CGSize imageSize = sourceImage.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    CGFloat targetWidth = targetSize.width;
    CGFloat targetHeight = targetSize.height;
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    CGPoint thumbnailPoint = CGPointMake(0.0,0.0);
    if (CGSizeEqualToSize(imageSize, targetSize) == NO) {
        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;
        if (widthFactor < heightFactor)
            scaleFactor = widthFactor;
        else
            scaleFactor = heightFactor;
        scaledWidth  = width * scaleFactor;
        scaledHeight = height * scaleFactor;
        // center the image
        if (widthFactor < heightFactor) {
            
            thumbnailPoint.y = (targetHeight - scaledHeight) * 0.5;
        } else if (widthFactor > heightFactor) {
            thumbnailPoint.x = (targetWidth - scaledWidth) * 0.5;
        }
    }
    // this is actually the interesting part:
    UIGraphicsBeginImageContext(targetSize);
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width  = scaledWidth;
    thumbnailRect.size.height = scaledHeight;
    [sourceImage drawInRect:thumbnailRect];
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if(newImage == nil)
        NSLog(@"could not scale image");
    return newImage ;
}

- (void)photoLibray
{
    
    self.view.layer.cornerRadius = 8;
    self.view.layer.masksToBounds = YES;
    
    _invokeCamera = [[UIImagePickerController alloc] init];
    _invokeCamera.delegate = self;
    _invokeCamera.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    _invokeCamera.allowsEditing = NO;
    [self.view addSubview:_invokeCamera.view];

}

- (void)oppen:(UIButton *)sender
{
    sender.selected = !sender.selected;
    if (sender.selected) {
        
        //网格开启
        _gridView.hidden = YES;
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:kIsOppenGrid];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
    }else{
        _gridView.hidden = NO;
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:kIsOppenGrid];
        [[NSUserDefaults standardUserDefaults] synchronize];
    
    }


}

- (void)backAC
{
    
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];


}

- (void)viewDidAppear:(BOOL)animated
{
    if (_sourceType == MAImagePickerControllerSourceTypeCamera && [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(pictureMAIMagePickerController)
                                                     name:@"AVSystemController_SystemVolumeDidChangeNotification"
                                                   object:nil];
        
        [_pictureButton setEnabled:YES];
        [[_captureManager captureSession] startRunning];
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    if (_sourceType == MAImagePickerControllerSourceTypeCamera && [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [[NSNotificationCenter defaultCenter] removeObserver:self name:@"AVSystemController_SystemVolumeDidChangeNotification" object:nil];
        
        [[_captureManager captureSession] stopRunning];
    }
}

- (void)pictureMAIMagePickerController
{
    if (![[_captureManager captureSession] isRunning]) {
        return;
    }
    
    [_pictureButton setEnabled:NO];
    [_captureManager captureStillImage];
}

- (void)toggleFlash:(UIButton *)sender
{
    sender.selected = !sender.selected;
    if (sender.selected)
    {
        [_captureManager setFlashOn:YES];
        [self storeFlashSettingWithBool:YES];
    }
    else
    {
        [_captureManager setFlashOn:NO];
        [self storeFlashSettingWithBool:NO];
    }
}

- (void)storeFlashSettingWithBool:(BOOL)flashSetting
{
    [[NSUserDefaults standardUserDefaults] setBool:flashSetting forKey:kCameraFlashDefaultsKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)transitionToMAImagePickerControllerAdjustViewController
{
    [[_captureManager captureSession] stopRunning];
    
//    MAImagePickerControllerAdjustViewController *adjustViewController = [[MAImagePickerControllerAdjustViewController alloc] init];
//    adjustViewController.sourceImage = [[self captureManager] stillImage];
    
    
      CropViewController *crop= [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"CropViewController"];
//    CropViewController *crop= [[CropViewController alloc] init];;
    crop.cropdelegate=self;
//    crop.transitioningDelegate=ripple;
//    ripple.touchPoint=self.cameraBut.frame;
    crop.adjustedImage=[[self captureManager] stillImage];;
    
//    [self presentViewController:crop animated:YES completion:nil];

    
    [UIView animateWithDuration:0.05 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^
     {
         _cameraPictureTakenFlash.alpha = 0.5f;
     }
                     completion:^(BOOL finished)
     {
         [UIView animateWithDuration:0.1 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^
          {
              _cameraPictureTakenFlash.alpha = 0.0f;
          }
                          completion:^(BOOL finished)
          {
              CATransition* transition = [CATransition animation];
              transition.duration = 0.4;
              transition.type = kCATransitionFade;
              transition.subtype = kCATransitionFromBottom;
              [self.navigationController.view.layer addAnimation:transition forKey:kCATransition];
              [self.navigationController pushViewController:crop animated:NO];
          }];
     }];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissMAImagePickerController];
}


#pragma mark -------相片选择代理方法------------------------------
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [_invokeCamera removeFromParentViewController];
    imagePickerDismissed = YES;
    [self.navigationController popViewControllerAnimated:NO];
//    [self dismissMAImagePickerController];

//    MAImagePickerControllerAdjustViewController *adjustViewController = [[MAImagePickerControllerAdjustViewController alloc] init];
//    adjustViewController.sourceImage = [info objectForKey:UIImagePickerControllerOriginalImage];
  
//    CATransition* transition = [CATransition animation];
//    transition.duration = 0.4;
//    transition.type = kCATransitionFade;
//    transition.subtype = kCATransitionFromBottom;
//    [self.navigationController.view.layer addAnimation:transition forKey:kCATransition];
//    [self.navigationController pushViewController:adjustViewController animated:NO];
    
    CropViewController *crop= [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"CropViewController"];
    //    CropViewController *crop= [[CropViewController alloc] init];;
    crop.cropdelegate=self;
    //    crop.transitioningDelegate=ripple;
    //    ripple.touchPoint=self.cameraBut.frame;
    crop.adjustedImage=[info objectForKey:UIImagePickerControllerOriginalImage];
    
    //    [self presentViewController:crop animated:YES completion:nil];
    
    
    [UIView animateWithDuration:0.05 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^
     {
         _cameraPictureTakenFlash.alpha = 0.5f;
     }
                     completion:^(BOOL finished)
     {
         [UIView animateWithDuration:0.1 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^
          {
              _cameraPictureTakenFlash.alpha = 0.0f;
          }
                          completion:^(BOOL finished)
          {
              CATransition* transition = [CATransition animation];
              transition.duration = 0.4;
              transition.type = kCATransitionFade;
              transition.subtype = kCATransitionFromBottom;
              [self.navigationController.view.layer addAnimation:transition forKey:kCATransition];
              [self.navigationController pushViewController:crop animated:NO];
          }];
     }];

    
}

#pragma mark --------MMCropDelegate--------
- (void)didFinishCropping:(UIImage *)finalCropImage from:(CropViewController *)cropObj
{
    
    [self.delegate imagePickerDidChooseImageWithImageData:finalCropImage];

}

#pragma mark -------保存图片失败---------------------
- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    if (error != NULL) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error!" message:@"Image couldn't be saved" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alert show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)dealloc
{
    _captureManager = nil;
}

- (void)dismissMAImagePickerController
{
    
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];

//    [self removeNotificationObservers];
//    if (_sourceType == MAImagePickerControllerSourceTypeCamera && [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
//    {
//        [[_captureManager captureSession] stopRunning];
//        AudioSessionSetActive(NO);
//    }
//    else
//    {
//        [_invokeCamera removeFromParentViewController];
//    }
//    
//    [_delegate imagePickerDidCancel];
}

- (void) MAImagePickerChosen:(NSNotification *)notification
{
    
    AudioSessionSetActive(NO);
    [self removeNotificationObservers];
//    [_delegate imagePickerDidChooseImageWithImageData:[notification object]];
}

- (void)removeNotificationObservers
{
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (BOOL)shouldAutorotate
{
    return NO;
}

@end
