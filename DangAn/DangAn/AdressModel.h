//
//  AdressModel.h
//  DangAn
//
//  Created by 李江 on 16/8/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface AdressModel : LXBaseModel


@property (nonatomic,copy)NSString *address_id;// 收货地址id
@property (nonatomic,copy)NSString *name;// 收货人姓名
@property (nonatomic,copy)NSString *mobile;// 收货人电话
@property (nonatomic,copy)NSString *address;// 收货人姓名
@property (nonatomic,copy)NSString *is_default;
@end
