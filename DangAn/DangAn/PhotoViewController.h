//
//  PhotoViewController.h
//  WXMovie
//
//  Created by wei.chen on 15/8/10.
//  Copyright (c) 2015年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoViewController : UIViewController

@property(nonatomic,strong)NSMutableArray *urls;  //[url1,ur2,url3...]
@property(nonatomic,assign)NSInteger index;
@property(nonatomic,strong)NSMutableArray *listAry;

@end
