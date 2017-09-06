//
//  TouristCollectionViewCell.h
//  Palm
//
//  Created by 李黎明 on 14/12/2.
//  Copyright (c) 2014年 com.liliming. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImageView+WebCache.h"
@interface TouristCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *ShowImage;
@property(nonatomic,copy)NSString *imgName;
@end
