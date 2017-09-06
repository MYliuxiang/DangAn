//
//  AddToolCell.m
//  DangAn
//
//  Created by Viatom on 16/7/18.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "AddToolCell.h"

@implementation AddToolCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.yidongBtn.layer.cornerRadius = 5;
    self.yidongBtn.layer.masksToBounds = YES;
    self.yidongBtn.layer.borderWidth = .5;
    self.yidongBtn.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)yidongAC:(UIButton *)sender {
    
    int row = 0;
    UITableView *tableView;
    tableView = (UITableView *)[[self superview] superview] ;
    NSIndexPath *path = [tableView indexPathForCell:self];
    row = path.row;
    self.clinkBlock(row,0);
}

- (IBAction)photoAC:(UIButton *)sender {
    
    int row = 0;
    UITableView *tableView;
    tableView = (UITableView *)[[self superview] superview] ;
    NSIndexPath *path = [tableView indexPathForCell:self];
    row = path.row;
    self.clinkBlock(row,1);

}

- (IBAction)xiugaiAC:(UIButton *)sender {
    
    int row = 0;
    UITableView *tableView;
    tableView = (UITableView *)[[self superview] superview] ;
    NSIndexPath *path = [tableView indexPathForCell:self];
    row = path.row;
    self.clinkBlock(row,2);
    
}

- (IBAction)deletedAC:(UIButton *)sender {
    
    int row = 0;
    UITableView *tableView;
    tableView = (UITableView *)[[self superview] superview] ;
    NSIndexPath *path = [tableView indexPathForCell:self];
    row = path.row;
    self.clinkBlock(row,3);
    
    
    
}
@end
