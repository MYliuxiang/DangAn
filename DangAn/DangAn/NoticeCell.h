//
//  NoticeCell.h
//  DangAn
//
//  Created by Viatom on 16/8/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Notice.h"

@interface NoticeCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *neilabel;
@property (nonatomic,retain) Notice *model;

@end
