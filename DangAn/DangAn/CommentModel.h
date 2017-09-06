//
//  CommentModel.h
//  DangAn
//
//  Created by Viatom on 16/7/27.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface CommentModel : LXBaseModel

@property(nonatomic,copy)NSString *username;// 用户名
@property(nonatomic,copy)NSString *headimgurl;// 用户头像
@property(nonatomic,copy)NSString *time;// 发表时间
@property(nonatomic,copy)NSString *content;// 评论的内容

@end
