//
//  OrderSureListModel.h
//  DangAn
//
//  Created by 李江 on 16/8/20.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface OrderSureListModel : LXBaseModel


@property (nonatomic,copy) NSString *product_name;//商品名称
@property (nonatomic,copy) NSString *product_thumb;//商品的图片
@property (nonatomic,copy) NSString *product_number;//商品的数量
@property (nonatomic,copy) NSString *product_id;//商品的id
@property (nonatomic,copy) NSString *start_number;//开始的编号
@property (nonatomic,copy) NSString *price;//价格
@property (nonatomic,copy) NSString *price_vip;//vip价格

-(id)initWithDataDic:(NSDictionary*)data;

@end
