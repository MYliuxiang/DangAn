//
//  ShimiView.h
//  DangAn
//
//  Created by 未来社区 on 16/6/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ShimiView ;

@protocol ShimiViewDelegate<NSObject>

- (void)clickcontentString:(NSString *)contentString lxView:(ShimiView *)alert index:(int)index;
@end

@interface ShimiView : UIView<ZLPhotoPickerBrowserViewControllerDelegate>{
    UIView *_maskView;
}

@property(nonatomic,assign)id<ShimiViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UILabel *lable_title;
@property (weak, nonatomic) IBOutlet UILabel *lable_content;
@property (weak, nonatomic) IBOutlet UIButton *btn_done;
@property (weak, nonatomic) IBOutlet UIButton *btn_cance;
@property (weak, nonatomic) IBOutlet UIButton *fengmian;


@property (nonatomic , strong) NSMutableArray *assets;
@property (weak,nonatomic) UIScrollView *scrollView;

- (IBAction)DoneAction:(id)sender;
- (IBAction)CanceAction:(id)sender;
- (IBAction)fengmianAction:(id)sender;



- (instancetype)initWithtitleString:(NSString *)titleString
                     textFieldPlace:(NSString *)textFieldPlace
                          imagename:(NSString*)imagename
                           delegate:(id<ShimiViewDelegate>)delgate;

- (void)show;
- (void)dismiss;

@end
