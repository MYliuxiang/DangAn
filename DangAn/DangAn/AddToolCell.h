//
//  AddToolCell.h
//  DangAn
//
//  Created by Viatom on 16/7/18.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddToolCell : UITableViewCell

@property (nonatomic,copy)void(^clinkBlock)(int row,int index);


@property (weak, nonatomic) IBOutlet UIButton *yidongBtn;

- (IBAction)yidongAC:(UIButton *)sender;
- (IBAction)photoAC:(UIButton *)sender;
- (IBAction)xiugaiAC:(UIButton *)sender;
- (IBAction)deletedAC:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *photoBtn;


@end
