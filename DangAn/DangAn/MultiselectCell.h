//
//  MultiselectCell.h
//  DangAn
//
//  Created by 刘翔 on 16/7/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScanModel.h"

@interface MultiselectCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
@property (weak, nonatomic) IBOutlet UILabel *placeLabel;
@property (weak, nonatomic) IBOutlet UIButton *seletedBtn;
@property (nonatomic,retain)ScanModel *model;
@property (nonatomic,assign) BOOL Isseleted;

@end
