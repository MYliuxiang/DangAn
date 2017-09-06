//
//  LJOrderAlertView.h
//  DangAn
//
//  Created by lijiang on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LJOrderAlertView;


@protocol LJOrderAlertViewDelegate<NSObject>

- (void)clickcontentString:(NSString *)contentString lxView:(LJOrderAlertView *)alert;

@end

@interface LJOrderAlertView : UIView
{
    UIView *_maskView;
    
    
}

@property(nonatomic,assign)id<LJOrderAlertViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UILabel *lable_title;
@property (weak, nonatomic) IBOutlet UITextField *textField_num;
@property (weak, nonatomic) IBOutlet UIButton *btn_done;
@property (weak, nonatomic) IBOutlet UIButton *btn_cance;

- (IBAction)DoneAction:(id)sender;
- (IBAction)CanceAction:(id)sender;

- (instancetype)initWithtitleString:(NSString *)titleString
                     textFieldPlace:(NSString *)textFieldPlace
                           delegate:(id<LJOrderAlertViewDelegate>)delgate;

- (void)show;
- (void)dismiss;

@end
