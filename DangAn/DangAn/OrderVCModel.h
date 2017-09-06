//
//  OrderVCModel.h
//  DangAn
//
//  Created by 李江 on 16/8/2.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface OrderVCModel : LXBaseModel

@property (nonatomic,copy) NSString *order_id;//订单id
@property (nonatomic,copy) NSString *sn;//订单编号
@property (nonatomic,copy) NSString *order_status;//订单状态
@property (nonatomic,copy) NSString *time ;//时间
@property (nonatomic,copy) NSString *order_status_text;//订单名称


@end
