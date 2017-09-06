//
//  AddPhotos.m
//  DangAn
//
//  Created by Viatom on 16/7/18.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "AddPhotos.h"
#import "ThumbModel.h"
#import "MSSBrowseDefine.h"


@interface AddPhotos()

@property (nonatomic, strong) NSMutableArray *imageViewsArray;

@end

@implementation AddPhotos
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];
        
    }
    return self;
}

- (void)setup{

    _imageViewsArray = [NSMutableArray new];
    for (int i = 0; i < 3; i++) {
        UIImageView *imageView = [UIImageView new];
        imageView.userInteractionEnabled = YES;
        imageView.tag = i;

        //        imageView.sd_cornerRadius = @4;
        [self addSubview:imageView];
        [_imageViewsArray addObject:imageView];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapImageView:)];
        [imageView addGestureRecognizer:tap];

    }
    
}

- (void)setPicPathStringsArray:(NSArray *)picPathStringsArray
{
    _picPathStringsArray = picPathStringsArray;
    
    for (long i = _picPathStringsArray.count; i < self.imageViewsArray.count; i++) {
        UIImageView *imageView = [self.imageViewsArray objectAtIndex:i];
        imageView.hidden = YES;
    }
    
    long originalLabelsCount = picPathStringsArray.count;
    long needsToAddCount = originalLabelsCount > _imageViewsArray.count ? (picPathStringsArray.count - _imageViewsArray.count) : 0;
    for (int i = 0; i < needsToAddCount; i++) {
        UIImageView *imageView = [UIImageView new];
        imageView.userInteractionEnabled = YES;
        imageView.tag = _imageViewsArray.count - 1;
        [self addSubview:imageView];
        [self.imageViewsArray addObject:imageView];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapImageView:)];
        [imageView addGestureRecognizer:tap];

    }

    
    
   
    
    
    CGFloat itemW = (kScreenWidth - 90) / 6;
    CGFloat itemH = 0;
   
    itemH = itemW;
    long perRowItemCount = 6;
    CGFloat margin = 10;
    UIView *lastView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 1)];
    
        for (int idx = 0; idx < _picPathStringsArray.count; idx++) {
            ThumbModel *model = _picPathStringsArray[idx];
            long columnIndex = idx % perRowItemCount;
            long rowIndex = idx / perRowItemCount;
            UIImageView *imageView = [_imageViewsArray objectAtIndex:idx];
           [imageView sd_setImageWithURL:[NSURL URLWithString:model.thumb_show] placeholderImage:[UIImage imageNamed:@"5"]];
            imageView.hidden = NO;
            imageView.frame = CGRectMake(columnIndex * (itemW + margin), rowIndex * (itemH + margin), itemW, itemH);
            lastView.frame = imageView.frame;
        }
    if (_picPathStringsArray.count == 0) {
        
        self.height = 0;
        self.fixedHeight = @(0);
        [self setupAutoHeightWithBottomView:lastView bottomMargin:0];
        
        return;
    }
    
    CGFloat w = perRowItemCount * itemW + (perRowItemCount - 1) * margin;
    int columnCount = ceilf(_picPathStringsArray.count * 1.0 / perRowItemCount);
    CGFloat h = columnCount * itemH + (columnCount - 1) * margin;
    if (_picPathStringsArray.count == 0) {
        h = 0;
    }
    self.width = w;
    self.height = h;
   
    self.fixedHeight = @(h);
    self.fixedWidth = @(w);
   
    lastView.backgroundColor = [UIColor redColor];
    [self setupAutoHeightWithBottomView:lastView bottomMargin:0];

}

- (void)tapImageView:(UITapGestureRecognizer *)tap
{
    UIView *imageView = tap.view;
    
    NSMutableArray *browseItemArray = [[NSMutableArray alloc]init];
    int i = 0;
    for(i = 0;i < _picPathStringsArray.count ;i++)
    {
        UIImageView *imageView = [self viewWithTag:i + 100];
        ThumbModel *model = _picPathStringsArray[i];

        MSSBrowseModel *browseItem = [[MSSBrowseModel alloc]init];
        browseItem.bigImageUrl = model.thumb_show;// 加载网络图片大图地址
        browseItem.smallImageView = imageView;// 小图
        [browseItemArray addObject:browseItem];
    }

    
    MSSBrowseNetworkViewController *bvc = [[MSSBrowseNetworkViewController alloc]initWithBrowseItemArray:browseItemArray currentIndex:imageView.tag];
    //    bvc.isEqualRatio = NO;// 大图小图不等比时需要设置这个属性（建议等比）
    [bvc showBrowseViewController];
  
}


- (void)setModel:(ScanModel *)model
{
    _model = model;
    self.picPathStringsArray = model.thumbArray;
    
}

- (NSInteger)perRowItemCountForPicPathArray:(NSArray *)array
{
    return array.count / 6 + 1;
    
}


@end
