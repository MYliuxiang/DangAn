//
//  AddAlert.h
//  DangAn
//
//  Created by Viatom on 16/9/27.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddAlert : UIView
{
    UIView *_maskView;
    
}
- (IBAction)doneAC:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *button1;
- (instancetype)initAddAlert;
- (void)show;
- (void)dismiss;

@end
