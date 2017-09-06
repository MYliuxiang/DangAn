//
//  DanganCell.h
//  DangAn
//
//  Created by 未来社区 on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DanganCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgview;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *riqi;
@property (weak, nonatomic) IBOutlet UIButton *count;

@end
