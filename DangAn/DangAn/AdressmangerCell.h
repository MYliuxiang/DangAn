//
//  AdressmangerCell.h
//  DangAn
//
//  Created by Viatom on 16/8/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AdressModel.h"
#import "AddAdressVCViewController.h"

@interface AdressmangerCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;
@property (weak, nonatomic) IBOutlet UILabel *adressLabel;
@property (weak, nonatomic) IBOutlet UIImageView *stateImage;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *enderbutton;
@property (nonatomic,retain)AdressModel *model;
- (IBAction)bianjiAC:(id)sender;
@end
