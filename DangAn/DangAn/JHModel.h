//
//  JHModel.h
//  DangAn
//
//  Created by Viatom on 16/8/3.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface JHModel : LXBaseModel

@property (nonatomic,copy) NSString *name;//借阅人姓名
@property (nonatomic,copy) NSString *start_time;//借阅时间
@property (nonatomic,copy) NSString *end_time;//归还时间(未归还为空)

@end
