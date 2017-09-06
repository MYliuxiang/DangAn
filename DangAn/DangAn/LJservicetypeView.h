//
//  LJservicetypeView.h
//  DangAn
//
//  Created by 李江 on 16/8/20.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LJservicetypeView;
@protocol LJservicetypeViewDelegate<NSObject>

- (void)clickindex:(int)index;


@end

@interface LJservicetypeView : UIView
{
    UIView *_maskView;
    
}
@property(nonatomic,assign)id<LJservicetypeViewDelegate> delegate;


- (instancetype)initWithDelegate:(id<LJservicetypeViewDelegate>)delgate;
- (void)show;
- (void)dismiss;

@end
