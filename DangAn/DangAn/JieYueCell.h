//
//  JieYueCell.h
//  DangAn
//
//  Created by 刘翔 on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JHModel.h"

@interface JieYueCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLanel;
@property (weak, nonatomic) IBOutlet UILabel *timeOneLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeTwoLabel;
@property (nonatomic,retain)JHModel *model;

@end
