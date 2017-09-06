//
//  ThumbModel.h
//  DangAn
//
//  Created by 刘翔 on 16/7/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface ThumbModel : LXBaseModel

@property (nonatomic,copy) NSString *path;//图片路径(用于提交给服务器)
@property (nonatomic,copy) NSString *thumb_show;//图片路径(用于显示查看)
@property (nonatomic,copy) NSString *p_img_id;

@end
