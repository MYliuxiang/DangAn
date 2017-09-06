//
//  OneAlert.h
//  DangAn
//
//  Created by 刘翔 on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OneAlert;
@protocol LXOneViewDelegate<NSObject>

- (void)clickindex:(int)index lxView:(OneAlert *)alert whiteText:(NSString *)text;

@end

@interface OneAlert : UIView
{
    UIView *_maskView;
    
}
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *mesageLabel;
@property (weak, nonatomic) IBOutlet UITextField *textFiled;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property(nonatomic,assign)id<LXOneViewDelegate> delegate;

- (IBAction)cancleAC:(id)sender;
- (IBAction)doneAC:(id)sender;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *messageJianGE;

- (instancetype)initWithTitle:(NSString *)title
                     Message:(NSString *)message
                  Placeholdet:(NSString *)placeholdet
                     delegate:(id<LXOneViewDelegate>)delgate;

- (void)show;
- (void)dismiss;

@end
