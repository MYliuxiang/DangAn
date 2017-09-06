//
//  WenjiandeModel.h
//  DangAn
//
//  Created by 未来社区 on 16/8/11.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface WenjiandeModel : LXBaseModel

@property (nonatomic, copy) NSString *title; //文件的名称
@property (nonatomic, copy) NSString *cloud_img_id;// 文件的id
@property (nonatomic, copy) NSString *img_show ;//图片的
@property (nonatomic, copy) NSString *addtime ;//时间
@property (nonatomic, copy) NSString *time;

@end
