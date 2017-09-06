//
//  Notice.h
//  DangAn
//
//  Created by Viatom on 16/8/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface Notice : LXBaseModel

@property (nonatomic,copy) NSString *time;// 时间
@property (nonatomic,copy) NSString *content;// 消息内容

@end
