//
//  AddScanVC.m
//  DangAn
//
//  Created by Viatom on 16/7/12.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "AddScanVC.h"

@interface AddScanVC ()<AVCaptureMetadataOutputObjectsDelegate>//用于处理采集信息的代理
{
    AVCaptureSession *session;//输入输出的中间桥梁
    AVCaptureDevice *device;
}


@end

@implementation AddScanVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navbarHiden = YES;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.dataList = [NSMutableArray array];
    self.doneBtn.layer.cornerRadius = 4;
    self.doneBtn.layer.masksToBounds = YES;
    self.doneBtn.layer.borderColor = [MyColor colorWithHexString:@"#007cff"].CGColor;
    self.doneBtn.layer.borderWidth = 1;

    
    
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
    layer.videoGravity = AVLayerVideoGravityResizeAspectFill;
    layer.frame=CGRectMake(0, 20, kScreenWidth,kScreenWidth / 320 * 175);
    [self.view.layer insertSublayer:layer above:0];
    //开始捕获
    [session startRunning];
    
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 20, kScreenWidth, kScreenWidth / 320 * 175 /2.0 - 37.5)];
    view1.backgroundColor = [UIColor blackColor];
    view1.alpha = .7;
    [self.view addSubview:view1];
    
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(0, view1.bottom + 75, kScreenWidth, kScreenWidth / 320 * 175 /2.0 - 37.5)];
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
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0,view2.top + 20, kScreenWidth, 20)];
    label.backgroundColor = [UIColor clearColor];
    label.text = @"连续扫描，一键添加";
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
    
    
    
    UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake( button1.left - 80, 24, 80, 40)];
    [button2 setImage:[UIImage imageNamed:@"闪光灯"] forState:UIControlStateNormal];
    [button2 setTitle:@"打开" forState:UIControlStateNormal];
    [button2 setTitle:@"关闭" forState:UIControlStateSelected];
    [button2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button2.titleLabel.font =[UIFont systemFontOfSize:14];
    button2.titleEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    [button2 addTarget:self action:@selector(shanAC:) forControlEvents:UIControlEventTouchUpInside];
    button2.layer.cornerRadius = 8;
    button2.layer.masksToBounds = YES;
    button2.backgroundColor = [UIColor clearColor];
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
    ZBarSymbol *symbol = nil;
    for(symbol in [read scanImage:cgImageRef]){
        NSLog(@"Result =  %@",symbol.data);
        
        [self distinguish:symbol.data];
        
    }
    
    [_imgPicker dismissViewControllerAnimated:YES completion:NULL];
    
}

#pragma mark -------UITableView Delegate ------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataList.count;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifire = @"cellID";
    QRAddCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"QRAddCell" owner:nil options:nil]lastObject];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell.deletedBtn addTarget:self action:@selector(deletedAC:) forControlEvents:UIControlEventTouchUpInside];
    }
    cell.model = self.dataList[indexPath.row];
    
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return .1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return .1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 75;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}


- (void)deletedAC:(UIButton *)sender
{
    QRAddCell *cell = (QRAddCell *)[[sender superview] superview];
    NSIndexPath *path = [self.tableView indexPathForCell:cell];
    
    
    [self.dataList removeObjectAtIndex:path.row];
    [self.tableView beginUpdates];
  
    [self.tableView deleteRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationTop];
    [self.tableView endUpdates];



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


//扫码识别
-(void)captureOutput:(AVCaptureOutput *)captureOutput didOutputMetadataObjects:(NSArray *)metadataObjects fromConnection:(AVCaptureConnection *)connection{
    if (metadataObjects.count>0) {
        //[session stopRunning];
        AVMetadataMachineReadableCodeObject * metadataObject = [metadataObjects objectAtIndex : 0 ];
        //输出扫描字符串
        NSLog(@"%@",metadataObject.stringValue);
        [self distinguish:metadataObject.stringValue];
        [session stopRunning];
    }
}

- (void)distinguish:(NSString *)QRcodeStr
{
    
    NSDictionary *params;
    
    params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"number":QRcodeStr};
    
    [WXDataService requestAFWithURL:Url_Archive_qrCodeAdd params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            double delayInSeconds = 1.0;
            dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
            dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
                [session startRunning];
            });

            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                if([[result objectForKey:@"is_have"] integerValue] == 0 ){
                
                    ScanModel *model = [[ScanModel alloc] initWithDataDic:dic];
                    model.ddescription = dic[@"description"];
                    
                    
                    if ([model.level integerValue] != self.index + 1) {
                        
                        if(self.index == 0){
                            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"该编码不属于货架！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                            [alert show];
                            
                        }else if(self.index == 1){
                            
                            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"该编码不属于档案箱！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                            [alert show];
                            
                        }else{
                            
                            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"该编码不属于档案册！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                            [alert show];
                            
                            
                        }
                    }else{
                        
                        NSArray *array = dic[@"thumb_list"];
                        NSMutableArray *marry = [NSMutableArray array];
                        for (NSDictionary *sudic in array) {
                            
                            ThumbModel *thumbModel = [[ThumbModel alloc] initWithDataDic:sudic];
                            [marry addObject:thumbModel];
                            
                        }
                        
                        model.thumbArray = marry;
                        
                        BOOL isold = NO;
                        for (ScanModel *m in self.oldArray){
                            
                            if ([model.number isEqualToString:m.number]) {
                                
                                isold = YES;
                                
                            }
                        }
                        
                        if (isold) {
                            
                            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"您已经添加过！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                            [alert show];
                            
                        }else{
                            
                            if(self.dataList.count == 0){
                                
                                [self.dataList addObject:model];
                                [self.tableView beginUpdates];
                                NSIndexPath *path = [NSIndexPath indexPathForRow:0  inSection:0];
                                [self.tableView insertRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationTop];
                                [self.tableView endUpdates];
                                
                                
                            }else{
                                
                                BOOL isADD = NO;
                                for (ScanModel *m in self.dataList) {
                                    if ([model.number isEqualToString:m.number]) {
                                        
                                        isADD = YES;
                                        
                                        
                                    }
                                }
                                
                                if (isADD) {
                                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"您已经添加过！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                                    [alert show];
                                }else{
                                    [self.dataList addObject:model];
                                    [self.tableView beginUpdates];
                                    NSIndexPath *path = [NSIndexPath indexPathForRow:self.dataList.count - 1  inSection:0];
                                    [self.tableView insertRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationTop];
                                    [self.tableView endUpdates];
                                }
                            }
                        }
                        
                        double delayInSeconds = 1.0;
                        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
                        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
                            [session startRunning];
                        });
                    }

                    
                }else{
                
                    ScanModel *model = [[ScanModel alloc] initWithDataDic:dic];
                    model.ddescription = dic[@"description"];
                    
                    if ([model.level integerValue] != self.index + 1) {

                    if(self.index == 0){
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"该货架已存在！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                        [alert show];
                        
                    }else if(self.index == 1){
                        
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"该档案箱已存在！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                        [alert show];
                        
                    }else{
                        
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"该档案册已存在！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                        [alert show];
                        
                        
                    }
                    }
                    
                }
                
            }
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                
                [session startRunning];
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        [session startRunning];
        
    }];
    
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)doneAC:(id)sender {
    
    self.doneBlock(self.dataList);
    [self.navigationController popViewControllerAnimated:YES];
}
@end
