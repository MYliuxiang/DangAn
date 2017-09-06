//
//  ScanVC.m
//  DangAn
//
//  Created by 刘翔 on 16/6/11.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "ScanVC.h"

@interface ScanVC ()<AVCaptureMetadataOutputObjectsDelegate>//用于处理采集信息的代理
{
    AVCaptureSession * session;//输入输出的中间桥梁
    AVCaptureDevice *device;
}
@end

@implementation ScanVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navbarHiden = YES;
    
    
    //获取摄像设备
    device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    //创建输入流
    AVCaptureDeviceInput * input = [AVCaptureDeviceInput deviceInputWithDevice:device error:nil];
    //创建输出流
    AVCaptureMetadataOutput * output = [[AVCaptureMetadataOutput alloc]init];
    //设置代理 在主线程里刷新
    [output setMetadataObjectsDelegate:self queue:dispatch_get_main_queue()];
    
    //初始化链接对象
    session = [[AVCaptureSession alloc]init];
    //高质量采集率
    [session setSessionPreset:AVCaptureSessionPresetHigh];
    
    [session addInput:input];
    [session addOutput:output];
    //设置扫码支持的编码格式(如下设置条形码和二维码兼容)
    output.metadataObjectTypes=@[AVMetadataObjectTypeQRCode,AVMetadataObjectTypeEAN13Code, AVMetadataObjectTypeEAN8Code, AVMetadataObjectTypeCode128Code];
    
    AVCaptureVideoPreviewLayer *layer = [AVCaptureVideoPreviewLayer layerWithSession:session];
    layer.videoGravity=AVLayerVideoGravityResizeAspectFill;
    layer.frame=CGRectMake(0, 20, kScreenWidth, kScreenHeight - 20);
    [self.view.layer insertSublayer:layer above:0];
    //开始捕获
    [session startRunning];
    
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 20, kScreenWidth, (kScreenHeight - 20 - 35.5)/2.0 - 40)];
    view1.backgroundColor = [UIColor blackColor];
    view1.alpha = .7;
    [self.view addSubview:view1];
    
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(0, view1.bottom + 75, kScreenWidth, (kScreenHeight - 20 - 35.5) / 2.0 + 40)];
    view2.backgroundColor = [UIColor blackColor];
    view2.alpha = .7;
    [self.view addSubview:view2];

    
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(0, view1.bottom, (kScreenWidth - 200) / 2.0, 75)];
    view3.backgroundColor = [UIColor blackColor];
    view3.alpha = .7;
    [self.view addSubview:view3];

    
    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(kScreenWidth - (kScreenWidth - 200) / 2.0, view1.bottom, (kScreenWidth - 200) / 2.0,75)];
    view4.backgroundColor = [UIColor blackColor];
    view4.alpha = .7;
    [self.view addSubview:view4];

    
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake((kScreenWidth - 215) / 2.0, view1.bottom - 7.5, 215, 90)];
    imageView1.image = [UIImage imageNamed:@"条码扫描框"];
    [self.view addSubview:imageView1];
    
    
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(15, 24, 60, 40)];
    [button setImage:[UIImage imageNamed:@"白色返回箭头"] forState:UIControlStateNormal];
    [button setTitle:@"返回" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.titleLabel.font =[UIFont systemFontOfSize:16];
    button.titleEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    [button addTarget:self action:@selector(backAC) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0,view1.bottom - 40 - 20, kScreenWidth, 20)];
    label.backgroundColor = [UIColor clearColor];
    label.text = @"对准条形码";
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:label];
    
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(kScreenWidth - 15 - 60, 24, 60, 40)];
    [button1 setImage:[UIImage imageNamed:@"相册"] forState:UIControlStateNormal];
    [button1 setTitle:@"相册" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button1.titleLabel.font =[UIFont systemFontOfSize:14];
    button1.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    [button1 addTarget:self action:@selector(rightAC) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button1];

    
    
    UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake((kScreenWidth - 80)/ 2, view2.top + 40, 80, 30)];
    [button2 setImage:[UIImage imageNamed:@"闪光灯"] forState:UIControlStateNormal];
    [button2 setTitle:@"打开" forState:UIControlStateNormal];
    [button2 setTitle:@"关闭" forState:UIControlStateSelected];
    [button2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button2.titleLabel.font =[UIFont systemFontOfSize:14];
    button2.titleEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    [button2 addTarget:self action:@selector(shanAC:) forControlEvents:UIControlEventTouchUpInside];
    button2.layer.cornerRadius = 8;
    button2.layer.masksToBounds = YES;
    button2.backgroundColor = [UIColor blackColor];
    button2.alpha = .9;
    
    [self.view addSubview:button2];
    
    
    
    
}



#pragma mark - UIImagePickerControllerDelegate
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    UIImage *originalImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    
    
     
//        if(originalImage){
//            //1. 初始化扫描仪，设置设别类型和识别质量
//            CIDetector*detector = [CIDetector detectorOfType:CIDetectorTypeQRCode context:nil options:@{ CIDetectorAccuracy : CIDetectorAccuracyHigh }];
//            //2. 扫描获取的特征组
//            NSArray *features = [detector featuresInImage:[CIImage imageWithCGImage:originalImage.CGImage]];
//            //3. 获取扫描结果
//            CIQRCodeFeature *feature = [features firstObject];
//            NSString *scannedResult = feature.messageString;
//            UIAlertView * alertView = [[UIAlertView alloc]initWithTitle:@"扫描结果" message:scannedResult delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//            [alertView show];
//        }else {
//    
//            UIAlertView * alertView = [[UIAlertView alloc]initWithTitle:@"扫描结果" message:@"您还没有生成二维码" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//            [alertView show];
//        }

    NSString *restult;
    ZBarReaderController *read = [ZBarReaderController new];
    CGImageRef cgImageRef = originalImage.CGImage;
    ZBarSymbol* symbol = nil;
    for(symbol in [read scanImage:cgImageRef]){
        NSLog(@"Result =  %@",symbol.data);
        restult = symbol.data;
        [self.delegate scanStr:restult];
        [self.navigationController popViewControllerAnimated:YES];
        
    }
    
    [_imgPicker dismissViewControllerAnimated:YES completion:NULL];
    
}


#pragma mark ---------------闪光灯---------
- (void)shanAC:(UIButton *)sender{

    sender.selected = !sender.selected;
    
    if(sender.selected)
    {
        //打开闪光灯
        if([device hasTorch] && [device hasFlash])
        {
            if(device.torchMode == AVCaptureTorchModeOff)
            {
                [session beginConfiguration];
                [device lockForConfiguration:nil];
                [device setTorchMode:AVCaptureTorchModeOn];
                [device setFlashMode:AVCaptureFlashModeOn];
                [device unlockForConfiguration];
                [session commitConfiguration];
            }
        }
        
        [session startRunning];
        
    }
    else
    {
        //关闭闪光灯
        NSLog(@"Off");
       
        [session beginConfiguration];
        [device lockForConfiguration:nil];
        if(device.torchMode == AVCaptureTorchModeOn)
        {
            [device setTorchMode:AVCaptureTorchModeOff];
            [device setFlashMode:AVCaptureFlashModeOff];
        }
        [device unlockForConfiguration];
        [session commitConfiguration];
        [session startRunning];
        
    }
    
    
}

- (void)backAC
{
    [self.navigationController popViewControllerAnimated:YES];


}

- (void)rightAC
{
    _imgPicker = [[UIImagePickerController alloc] init];
    _imgPicker.delegate = self;
    _imgPicker.sourceType =  UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:self.imgPicker animated:NO
                     completion:nil];


}

-(void)captureOutput:(AVCaptureOutput *)captureOutput didOutputMetadataObjects:(NSArray *)metadataObjects fromConnection:(AVCaptureConnection *)connection{
    if (metadataObjects.count>0) {
        //[session stopRunning];
        AVMetadataMachineReadableCodeObject * metadataObject = [metadataObjects objectAtIndex : 0 ];
        //输出扫描字符串
//        NSLog(@"%@",metadataObject.stringValue);
        [self.delegate scanStr:metadataObject.stringValue];
        [self.navigationController popViewControllerAnimated:YES];

    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end









