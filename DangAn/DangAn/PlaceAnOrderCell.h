//
//  PlaceAnOrderCell.h
//  DangAn
//
//  Created by 李江 on 16/6/11.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LJOrderAlertView.h"
@interface PlaceAnOrderCell : UITableViewCell<LJOrderAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView_shop;
@property (weak, nonatomic) IBOutlet UILabel *label_title;

@property (weak, nonatomic) IBOutlet UIButton *btn_add;

- (IBAction)AddCard:(id)sender;


@end
