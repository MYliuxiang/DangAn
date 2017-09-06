//
//  SugressAlert.h
//  DangAn
//
//  Created by 刘翔 on 16/6/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SugressAlert;
@protocol LXSugressViewDelegate<NSObject>

- (void)clickindex:(int)index lxView:(SugressAlert *)alert;
@end

@interface SugressAlert : UIView
{
    UIView *_maskView;
    
}

@property(nonatomic,assign)id<LXSugressViewDelegate> delegate;


@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
- (IBAction)doneAC:(id)sender;
- (IBAction)cancleAC:(id)sender;

- (instancetype)initWithMessage:(NSString *)message
                    title1:(NSString *)title1
                     title2:(NSString *)title2
                     delegate:(id<LXSugressViewDelegate>)delgate;

- (void)show;
- (void)dismiss;

@end



