//
//  HomeCell.h
//  DangAn
//
//  Created by Viatom on 16/6/2.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsModel.h"


@interface HomeCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *thumbImage;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (nonatomic,retain)NewsModel *model;
@end
