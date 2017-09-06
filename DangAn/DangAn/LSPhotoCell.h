//
//  LSPhotoCell.h
//  DangAn
//
//  Created by 未来社区 on 16/6/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kImgClickNotification @"kImgClickNotification"

@interface LSPhotoCell : UICollectionViewCell<UIScrollViewDelegate> {
    
    UIScrollView *_scrollView;
    UIImageView *_imgView;
}

@property(nonatomic,weak)id delegate;


@property(nonatomic,copy)NSString *urlstring;
@property(nonatomic,strong)UIScrollView *scrollView;

@end
