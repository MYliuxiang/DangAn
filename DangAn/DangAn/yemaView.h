//
//  yemaView.h
//  DangAn
//
//  Created by macvivi on 16/8/20.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class yemaView;


@protocol YeMaViewDelegate<NSObject>


- (void)clickcontentString:(NSString *)contentString lxView:(yemaView *)alert ;
@end

@interface yemaView : UIView{
    UIView *_maskView;
}

@property(nonatomic,assign)id<YeMaViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UILabel *lable_title;
@property (weak, nonatomic) IBOutlet UITextField *textField_num;
@property (weak, nonatomic) IBOutlet UIButton *btn_done;
@property (nonatomic , strong) NSMutableArray *assets;
@property (weak,nonatomic) UIScrollView *scrollView;

- (IBAction)DoneAction:(id)sender;




- (instancetype)initWithtitleString:(NSString *)titleString
                     textFieldPlace:(NSString *)textFieldPlace
                           delegate:(id<YeMaViewDelegate>)delgate;

- (void)show;
- (void)dismiss;


@end
