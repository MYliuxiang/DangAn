//
//  NewsDetailModel.h
//  DangAn
//
//  Created by Viatom on 16/7/27.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface NewsDetailModel : LXBaseModel

@property(nonatomic,copy)NSString *title;// 新闻标题
@property(nonatomic,copy)NSString *content;// 新闻内容
@property(nonatomic,copy)NSString *time;// 时间

@end
