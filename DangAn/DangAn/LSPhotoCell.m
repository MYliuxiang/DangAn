//
//  LSPhotoCell.m
//  DangAn
//
//  Created by 未来社区 on 16/6/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LSPhotoCell.h"

#import "UIImageView+WebCache.h"

@implementation LSPhotoCell

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        //1.创建滑动视图
        _scrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
        //设置缩放的最大、最小倍数
        _scrollView.maximumZoomScale = 3.0;
        _scrollView.minimumZoomScale = 1.0;
        
        //隐藏滚动条
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.delegate = self;
        [self.contentView addSubview:_scrollView];
        
        
        //2.创建图片视图
        _imgView = [[UIImageView alloc] initWithFrame:_scrollView.bounds];
        _imgView.contentMode = UIViewContentModeScaleAspectFit;
        [_scrollView addSubview:_imgView];
        
        
        //3.创建点击手势对象，缩放图片视图
        UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap2)];
        //设置这个手势点击的数量
        tap2.numberOfTapsRequired = 2;
        
        [_scrollView addGestureRecognizer:tap2];
        
        
        //4.创建单击手势,用于隐藏导航栏
        UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap1)];
        tap1.numberOfTapsRequired = 1;
        [_scrollView addGestureRecognizer:tap1];
        
        //5.解决双击、单击手势的冲突
        //如果双击手势产生了，取消单击手势的响应
        
        //当tap2手势触发之后，取消tap1手势的响应
        [tap1 requireGestureRecognizerToFail:tap2];
        
    }
    
    return self;
}

- (void)setUrlstring:(NSString *)urlstring {
    _urlstring = urlstring;
    //    NSString *url = [NSString stringWithFormat:@"%@%@",PictureURL,_urlstring];
    
    [_imgView sd_setImageWithURL:[NSURL URLWithString:_urlstring] placeholderImage:imageNamed(@"图片加载默认图-1")];
}

//双击手势响应方法
- (void)tap2 {
    
    //    _scrollView.zoomScale   //_scrollView 对子视图放大的倍数
    if (_scrollView.zoomScale > 1) {  //大于1，说明已经被放大了
        
        //缩小
        [_scrollView setZoomScale:1 animated:YES];
        
    } else {
        //放大
        [_scrollView setZoomScale:3 animated:YES];
        
    }
    
}

- (void)tap1 {
    
    //    NSLog(@"单击");
    
    //完成隐藏导航栏的功能
    //self.superview.superview; ---> self.view  ---> 控制器  ---> 导航控制器
    
    
    //要将图片点击事件 ----> 发送(通知) ---> 控制器
    /**
     解决事件通讯，iOS中提供了三种方案：代理、block、通知
     这三种方案解决了事件通讯，并且通讯的两个对象是解耦合
     */
    
    //[代理 协议方法]
    
    //发送一个通知
    [[NSNotificationCenter defaultCenter] postNotificationName:kImgClickNotification object:nil];
}


- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return _imgView;
}

@end
