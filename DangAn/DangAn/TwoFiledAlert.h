//
//  TwoFiledAlert.h
//  DangAn
//
//  Created by Viatom on 16/6/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TwoFiledAlert;
@protocol LXTwoViewDelegate<NSObject>

- (void)clickindex:(int)index lxView:(TwoFiledAlert *)alert whiteText1:(NSString *)text1 withTwxt2:(NSString *)text2;

@end

@interface TwoFiledAlert : UIView
{
    UIView *_maskView;
    
}

@property(nonatomic,assign)id<LXTwoViewDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *textF1;

@property (weak, nonatomic) IBOutlet UILabel *tLabel;

@property (weak, nonatomic) IBOutlet UITextField *textF2;
@property (weak, nonatomic) IBOutlet UIButton *doneBtn;
- (IBAction)cansle:(id)sender;
- (IBAction)done:(id)sender;

- (instancetype)initWithTitle:(NSString *)title
                 Placeholdet1:(NSString *)placeholdet1
                 Placeholdet2:(NSString *)placeholdet2
                     delegate:(id<LXTwoViewDelegate>)delgate;

- (void)show;
- (void)dismiss;
@end
