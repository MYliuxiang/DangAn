//
//  FModel.h
//  DangAn
//
//  Created by Viatom on 16/8/3.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface FModel : LXBaseModel

@property (nonatomic,copy) NSString *p_file_id;//档案ID
@property (nonatomic,copy) NSString *number;//编号
@property (nonatomic,copy) NSString *ddescription;//备注
@property (nonatomic,copy) NSString *file_status;//状态 1-在库 2-离库
@property (nonatomic,copy) NSString *file_status_text;//状态文字
@property (nonatomic,copy) NSString *level;//级别 1-货架 2-箱 3-册
@property (nonatomic,copy) NSString *thumb_count;

@end
