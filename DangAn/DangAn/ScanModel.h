//
//  ScanModel.h
//  DangAn
//
//  Created by 刘翔 on 16/7/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"


@interface ScanModel : LXBaseModel

@property (nonatomic,copy) NSString *is_have;//是否已存在数据库 1-已存在 0-不存在
@property (nonatomic,copy) NSString *p_file_id;//已存在条形码的ID
@property (nonatomic,copy) NSString *number;//条形码编号
@property (nonatomic,copy) NSString *ddescription;//备注
@property (nonatomic,copy) NSString *relationid_numbe;//r所处位置编号
@property (nonatomic,retain) NSMutableArray *thumbArray;//图片列表(只有已存在的才有)
@property (nonatomic,copy) NSString *path;//图片路径(用于提交给服务器)
@property (nonatomic,copy) NSString *thumb_show;//图片路径(用于显示查看)
@property (nonatomic,copy) NSString *level;//级别 1-货架 2-箱 3-册
@property (nonatomic,copy) NSString *cell;
@property (nonatomic,assign) BOOL isAttached;

-(id)initWithDataDic:(NSDictionary*)data;


@end
