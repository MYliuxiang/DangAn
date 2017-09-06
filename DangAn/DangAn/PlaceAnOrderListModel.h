//
//  PlaceAnOrderListModel.h
//  DangAn
//
//  Created by 李江 on 16/8/3.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface PlaceAnOrderListModel : LXBaseModel



@property (nonatomic,copy) NSString *product_id;//商品的id
@property (nonatomic,copy) NSString *product_thumb;//商品的图片
@property (nonatomic,copy) NSString *product_name;//商品的名称
@property (nonatomic,copy) NSString *product_state;//是否是选择的 0不是 1 是
@property (nonatomic,copy) NSString *product_num;//商品的购买数量

@end
