//
//  SearchAndSearchModel.h
//  DangAn
//
//  Created by 李江 on 16/10/5.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface SearchAndSearchModel : LXBaseModel

@property (nonatomic,copy) NSString *order_id;//订单id
@property (nonatomic,copy) NSString *sn;//订单编号
@property (nonatomic,copy) NSString *order_status;//订单状态
@property (nonatomic,copy) NSString *time ;//时间
@property (nonatomic,copy) NSString *type;// 1 订单标识 2 档案标识
@property (nonatomic,copy) NSString *order_status_text;//订单状态名称

@property (nonatomic,copy) NSString *p_file_id;//档案ID
@property (nonatomic,copy) NSString *number;//编号
@property (nonatomic,copy) NSString *ddescription;//备注
@property (nonatomic,copy) NSString *file_status;//状态 1-在库 2-离库
@property (nonatomic,copy) NSString *file_status_text;//状态文字
@property (nonatomic,copy) NSString *level;//级别 1-货架 2-箱 3-册

-(id)initWithDataDic:(NSDictionary*)data;

@end
