//
//  NewDAView.h
//  DangAn
//
//  Created by 未来社区 on 16/6/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NewDAView;

@protocol NewDAViewDelegate<NSObject>

- (void)clickcontentString:(NSString *)contentString lxView:(NewDAView *)alert image:(UIImage *)image;
@end

@interface NewDAView : UIView<ZLPhotoPickerBrowserViewControllerDelegate>{
    UIView *_maskView;
}

@property(nonatomic,assign)id<NewDAViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UILabel *lable_title;
@property (weak, nonatomic) IBOutlet UITextField *textField_num;
@property (weak, nonatomic) IBOutlet UIButton *btn_done;
@property (weak, nonatomic) IBOutlet UIButton *btn_cance;
@property (weak, nonatomic) IBOutlet UIButton *fengmian;
@property (nonatomic , strong) NSMutableArray *assets;
@property (weak,nonatomic) UIScrollView *scrollView;
@property(nonatomic,strong)UIImage *image;

- (IBAction)DoneAction:(id)sender;
- (IBAction)CanceAction:(id)sender;
- (IBAction)fengmianAction:(id)sender;



- (instancetype)initWithtitleString:(NSString *)titleString
                     textFieldPlace:(NSString *)textFieldPlace
                           delegate:(id<NewDAViewDelegate>)delgate;

- (void)show;
- (void)dismiss;


@end
