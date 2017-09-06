//
//  PickAlert.h
//  DangAn
//
//  Created by 刘翔 on 16/6/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PickAlert;
@protocol LXPickViewDelegate<NSObject>

- (void)clickindex:(int)index lxView:(PickAlert *)alert whithAIndex:(NSInteger)aindex;

@end


@interface PickAlert : UIView<UIPickerViewDelegate,UIPickerViewDataSource>
{
    UIView *_maskView;
    
}

@property(nonatomic,assign)id<LXPickViewDelegate> delegate;
@property(nonatomic,retain) NSArray *pickArray;
@property (nonatomic,retain)NSIndexPath *index;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UIButton *button1;

@property (weak, nonatomic) IBOutlet UIButton *wenBtn;

@property (weak, nonatomic) IBOutlet UIButton *button2;
- (IBAction)cancle:(id)sender;
- (IBAction)newAC:(id)sender;
- (IBAction)doneAC:(id)sender;

- (instancetype)initWithTitle:(NSString *)title
                 pickArray:(NSArray *)pickArray
                     newTitle:(NSString *)newTitle
                     delegate:(id<LXPickViewDelegate>)delgate;

- (void)show;
- (void)dismiss;

@end




















