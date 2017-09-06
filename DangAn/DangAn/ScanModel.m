//
//  ScanModel.m
//  DangAn
//
//  Created by 刘翔 on 16/7/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "ScanModel.h"

@implementation ScanModel

-(id)initWithDataDic:(NSDictionary*)data{
    if (self = [super init]) {
        [self setAttributes:data];
        self.thumbArray = [NSMutableArray array];
        self.isAttached = NO;
        self.cell = @"AddCell";
    }
    return self;
}

@end
