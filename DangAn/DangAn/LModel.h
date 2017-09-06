//
//  LModel.h
//  DangAn
//
//  Created by 刘翔 on 16/8/2.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface LModel : LXBaseModel

@property (nonatomic,copy) NSString *p_address_id;//档案ID
@property (nonatomic,copy) NSString *number;//编号
@property (nonatomic,copy) NSString *ddescription;//备注
@property (nonatomic,copy) NSString *level;//级别 1-货架 2-箱 3-册
@property (nonatomic,copy) NSString *box_count;
@property (nonatomic,copy) NSString *file_count;


@end
