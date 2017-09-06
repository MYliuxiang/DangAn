//
//  AddCell.h
//  DangAn
//
//  Created by Viatom on 16/7/18.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddPhotos.h"
#import "ScanModel.h"

@interface AddCell : UITableViewCell
{
    
    AddPhotos *addPhotoView;

}

@property (nonatomic,assign)BOOL isseleted;
@property (nonatomic,retain)ScanModel *model;
@property (nonatomic, strong) NSArray *picPathStringsArray;
@property (nonatomic,copy)void(^clinkBlock)(int row);
@property (weak, nonatomic) IBOutlet UIImageView *typeImageView;
@property (weak, nonatomic) IBOutlet UILabel *titileLabel;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
@property (weak, nonatomic) IBOutlet UILabel *placeLabel;
@property (weak, nonatomic) IBOutlet UIButton *AddCellBtn;
- (IBAction)addCellAC:(UIButton *)sender;
@end
