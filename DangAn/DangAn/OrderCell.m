//
//  OrderCell.m
//  DangAn
//
//  Created by 李江 on 16/6/10.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "OrderCell.h"

@implementation OrderCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.OrderNum.textColor = UIColorFromRGB(0xfe3a4b);
    self.Ordertime.textColor = Color_text;
    self.OrderState.textColor = Color_text;
}

- (void)layoutSubviews
{
    
    [super layoutSubviews];

//    if ([_model.order_status integerValue] == 1) {
//        self.OrderState.text = @"待支付";
//    }
//    if ([_model.order_status integerValue] == 2) {
//        self.OrderState.text = @"待处理";
//    }
//    if ([_model.order_status integerValue] == 3) {
//        self.OrderState.text = @"已出库";
//    }
//    if ([_model.order_status integerValue] == 4) {
//        self.OrderState.text = @"已发货";
//    }
//    if ([_model.order_status integerValue] == 5) {
//        self.OrderState.text = @"已签收";
//    }
//    if ([_model.order_status integerValue] == 99) {
//        self.OrderState.text = @"已取消";
//    }
//    if ([_model.order_status integerValue] == 10) {
//        self.OrderState.text = @"已完成";
//    }
    
    self.OrderState.text = _model.order_status_text;
    self.OrderNum.text = [NSString stringWithFormat:@"订单号：%@",_model.sn];
    self.Ordertime.text = [NSString stringWithFormat:@"下单时间：%@",_model.time];


}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
