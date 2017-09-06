//
//  AdressCell.h
//  DangAn
//
//  Created by Viatom on 16/6/14.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdressCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *adressLabel;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
@property (nonatomic,copy) NSString *adressText;
@property (nonatomic,copy) NSString *noteText;
- (IBAction)seeAC:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *btn;


@end
