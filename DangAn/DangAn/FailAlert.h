//
//  FailAlert.h
//  DangAn
//
//  Created by 刘翔 on 16/6/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FailAlert;
@protocol LXFailViewDelegate<NSObject>

- (void)clickindex;

@end

@interface FailAlert : UIView
{
    UIView *_maskView;
    
}

@property(nonatomic,assign)id<LXFailViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
- (IBAction)doneAC:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button1;


- (instancetype)initWithTitle:(NSString *)title
                    messsage:(NSString *)message
                     delegate:(id<LXFailViewDelegate>)delgate;

- (void)show;
- (void)dismiss;
@end




