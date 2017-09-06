//
//  HomeAlert.h
//  DangAn
//
//  Created by 刘翔 on 16/6/5.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HomeAlert;
@protocol LXViewDelegate<NSObject>

- (void)clickindex:(int)index lxView:(HomeAlert *)alert;

@end


@interface HomeAlert : UIView
{
    UIView *_maskView;


}
@property(nonatomic,retain)UIImage *Image;
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *content;
@property(nonatomic,assign)id<LXViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIImageView *titleImage;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)buttonAC1:(id)sender;

- (IBAction)buttonAC:(id)sender;

- (IBAction)closeAC:(id)sender;
+ (instancetype)viewFromNIB;
- (instancetype)initWithImage:(UIImage *)titleImage
                 Title:(NSString *)title
                 Content:(NSString *)content
                delegate:(id<LXViewDelegate>)delgate;


- (void)show;
- (void)dismiss;
@end
