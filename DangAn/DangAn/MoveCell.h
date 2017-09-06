//
//  MoveCell.h
//  DangAn
//
//  Created by Viatom on 16/8/1.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoveCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *stateImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;

@property (nonatomic,retain) ScanModel *model;

@end
