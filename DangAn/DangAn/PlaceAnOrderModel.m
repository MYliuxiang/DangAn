//
//  PlaceAnOrderModel.m
//  DangAn
//
//  Created by 李江 on 16/8/3.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "PlaceAnOrderModel.h"
#import "PlaceAnOrderListModel.h"
@implementation PlaceAnOrderModel


- (id)initWithDataDic:(NSDictionary *)dic
{
    self = [super initWithDataDic:dic];
    if (self) {
        NSArray *array = dic[@"product_list"];
        NSMutableArray *new = [NSMutableArray new];
        for (NSDictionary *arrDic in array) {
            PlaceAnOrderListModel *model = [[PlaceAnOrderListModel alloc]initWithDataDic:arrDic];
            model.product_state = @"0";
            model.product_num = @"0";
            [new addObject:model];
            
        }
        self.product_list = new;
    }
    return self;
}

@end
