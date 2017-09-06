//
//  WarehouseCell.h
//  DangAn
//
//  Created by 刘翔 on 16/6/12.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FModel.h"

@interface WarehouseCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
@property (weak, nonatomic) IBOutlet UILabel *stateLabel;
@property (weak, nonatomic) IBOutlet UIImageView *stateImageView;
@property (nonatomic,assign) BOOL isOnline;
@property (nonatomic,retain) DAModel *model;
@property (nonatomic,retain)FModel *fmodel;

@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@end
