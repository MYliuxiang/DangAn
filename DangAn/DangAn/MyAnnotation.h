//
//  MyAnnotation.h
//  DangAn
//
//  Created by 李江 on 16/8/26.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyAnnotation : NSObject<MKAnnotation>

//显示标注的经纬度
@property (nonatomic,readonly) CLLocationCoordinate2D coordinate;
//标注的标题
@property (nonatomic,copy) NSString *title;
//标注的子标题
@property (nonatomic,copy) NSString *subtitle;



-(id)initWithCoordinates:(CLLocationCoordinate2D)paramCoordinates title:(NSString *)paramTitle
                subTitle:(NSString *)paramTitle;

@end
