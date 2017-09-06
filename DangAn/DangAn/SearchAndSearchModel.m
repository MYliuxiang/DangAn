//
//  SearchAndSearchModel.m
//  DangAn
//
//  Created by 李江 on 16/10/5.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "SearchAndSearchModel.h"

@implementation SearchAndSearchModel

- (id)initWithDataDic:(NSDictionary *)dic
{
    self = [super initWithDataDic:dic];
    if (self) {
        self.type = [NSString stringWithFormat:@"%@",dic[@"type"]];
        self.time = dic[@"addtime"];
        self.order_id = dic[@"id"];
    }
    return self;
}

@end
