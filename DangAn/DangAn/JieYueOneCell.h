//
//  JieYueOneCell.h
//  DangAn
//
//  Created by Viatom on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LModel.h"
#import "CModel.h"

@interface JieYueOneCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel1;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel1;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel2;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel2;
- (IBAction)seeOneAC:(UIButton *)sender;
- (IBAction)seeTwoAC:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UIButton *btn1;

@property (nonatomic,retain)LModel *lmodel;
@property (nonatomic,retain)CModel *cmodel;
@property (weak, nonatomic) IBOutlet UIImageView *twoImageView;
@end
