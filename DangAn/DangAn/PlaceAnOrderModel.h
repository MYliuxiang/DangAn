//
//  PlaceAnOrderModel.h
//  DangAn
//
//  Created by 李江 on 16/8/3.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface PlaceAnOrderModel : LXBaseModel

@property (nonatomic,copy) NSString *type_id;//类型的id
@property (nonatomic,copy) NSString *type_name;//类型的名称
@property (nonatomic,copy) NSString *type_num;//类型总数
@property (nonatomic,strong) NSArray *product_list;//商品列表
-(id)initWithDataDic:(NSDictionary*)data;


@end
