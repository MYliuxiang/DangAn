//
//  OrderSureProductCell.m
//  DangAn
//
//  Created by 李江 on 16/8/21.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "OrderSureProductCell.h"

@implementation OrderSureProductCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    _shoptitile.textColor = Color_text;
    _PTnumLable.textColor = Color_text;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    if ([_model.product_id integerValue] == 1 || [_model.product_id integerValue] == 8 || [_model.product_id integerValue] == 9 || [_model.product_id integerValue] == 12) {
        self.addView.hidden = YES;
        _PTnumLable.hidden = NO;
        _PTnumLable.text = _model.product_number;
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    } else {
         _PTnumLable.hidden = YES;
        self.addView.hidden = NO;
        self.numLabel.text = _model.product_number;
        self.accessoryType = UITableViewCellAccessoryNone;
    
    }
    
    self.shoptitile.text = _model.product_name;
    [self.shopimage sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",_model.product_thumb]] placeholderImage:nil];
    


}


- (IBAction)addAction:(id)sender {
    _model.product_number = [NSString stringWithFormat:@"%d",[_model.product_number integerValue] + 1];
    
     self.numLabel.text = _model.product_number;
    
    [[NSNotificationCenter defaultCenter]postNotificationName:Noti_refre object:_model.product_id];
}
- (IBAction)jianAction:(id)sender {
    
    if ([_model.product_number integerValue] == 0) {
        [MBProgressHUD showError:@"商品数量为0" toView:self];
        return;
    }
     _model.product_number = [NSString stringWithFormat:@"%d",[_model.product_number integerValue] - 1];
    
     self.numLabel.text = _model.product_number;
    
     [[NSNotificationCenter defaultCenter]postNotificationName:Noti_refre object:_model.product_id];
    
}
@end
