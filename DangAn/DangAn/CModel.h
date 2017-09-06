//
//  CModel.h
//  DangAn
//
//  Created by Viatom on 16/8/3.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface CModel : LXBaseModel
@property (nonatomic,copy) NSString *p_box_id;//货架ID
@property (nonatomic,copy) NSString *number;//编号
@property (nonatomic,copy) NSString *ddescription;//备注
@property (nonatomic,copy) NSString *level;//级别 1-货架 2-箱 3-册
@property (nonatomic,copy) NSString *file_count;

@end
