//
//  ScanVC.h
//  DangAn
//
//  Created by 刘翔 on 16/6/11.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "ZBarSDK.h"

@protocol ScanVCDelegate <NSObject>
- (void)scanStr:(NSString *)scanStr;
@end
@interface ScanVC : BaseViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (nonatomic,retain)UIImagePickerController *imgPicker;
@property (nonatomic,assign)id<ScanVCDelegate> delegate;
@end
