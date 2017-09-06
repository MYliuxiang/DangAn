//
//  PhotoCell.h
//  DangAn
//
//  Created by Viatom on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PhotoCellDelegate <NSObject>

-(void) deleteCellAtIndexpath:(NSIndexPath *)path;
-(void) showAllDeleteBtn;
-(void) hideAllDeleteBtn:(NSIndexPath *)path;

@end

@interface PhotoCell : UICollectionViewCell

@property (nonatomic,weak) id<PhotoCellDelegate>delegate;

@property(nonatomic,strong)UIButton *btn;
@property(nonatomic,strong)NSIndexPath *path;
@property (nonatomic,assign) BOOL islast;

@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;

@end
