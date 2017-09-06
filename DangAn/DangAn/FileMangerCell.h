//
//  FileMangerCell.h
//  DangAn
//
//  Created by 刘翔 on 16/6/13.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LModel.h"
#import "CModel.h"
#import "FModel.h"
@interface FileMangerCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageImg;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (nonatomic,retain)LModel *model;
@property (nonatomic,retain)CModel *cmodel;
@property (nonatomic,retain)FModel *fmodel;
@property (nonatomic,retain)DAModel *dmodel;

@end
