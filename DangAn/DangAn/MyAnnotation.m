//
//  MyAnnotation.m
//  DangAn
//
//  Created by 李江 on 16/8/26.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "MyAnnotation.h"

@implementation MyAnnotation

-(id)initWithCoordinates:(CLLocationCoordinate2D)paramCoordinates title:(NSString *)paramTitle
                subTitle:(NSString *)paramSubitle
{
    self = [super init];
    if(self != nil)
    {
        _coordinate = paramCoordinates;
        _title = paramTitle;
        _subtitle = paramSubitle;
        
    }
    return self;
}

@end
