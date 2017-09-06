//
//  BuyAlert.h
//  DangAn
//
//  Created by 刘翔 on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BuyAlert;
@protocol LXBUYViewDelegate<NSObject>

- (void)clickindex:(int)index lxView:(BuyAlert *)alert whiteText1:(NSString *)text1 whithText2:(NSString *)text2 whithText3:(NSString *)text3;


@end



@interface BuyAlert : UIView
{
    UIView *_maskView;
    
}
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UITextField *textFiled1;
@property (weak, nonatomic) IBOutlet UITextField *textFiled2;
@property (weak, nonatomic) IBOutlet UITextField *textFiled3;
@property(nonatomic,assign)id<LXBUYViewDelegate> delegate;


- (IBAction)cancleAC:(id)sender;

- (IBAction)doneAC:(id)sender;

- (instancetype)initWithDelegate:(id<LXBUYViewDelegate>)delgate;

- (void)show;
- (void)dismiss;

@end
