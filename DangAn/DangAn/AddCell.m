//
//  AddCell.m
//  DangAn
//
//  Created by Viatom on 16/7/18.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "AddCell.h"

@interface AddCell()

@property (nonatomic, strong) NSMutableArray *imageViewsArray;

@end
@implementation AddCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code

    addPhotoView = [AddPhotos new];
    [self.contentView sd_addSubviews:@[addPhotoView]];
    

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setIsseleted:(BOOL)isseleted
{
    _isseleted = isseleted;
    self.AddCellBtn.selected = isseleted;

}

- (IBAction)addCellAC:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    
    int row = 0;
    AddCell *cell;
    UITableView *tableView;
    cell = (AddCell *)[[[sender superview] superview] superview];
    tableView = (UITableView *)[[self superview] superview] ;
    NSIndexPath *path = [tableView indexPathForCell:self];
    row = path.row;
    self.clinkBlock(row);
    
}

- (void)setModel:(ScanModel *)model
{
    _model = model;
    
    if ([model.level integerValue] == 1) {
        
        addPhotoView.sd_layout
        .leftSpaceToView(self.contentView,0)
        .rightSpaceToView(self.contentView,20)
        .topSpaceToView(self.noteLabel,15)
        .autoHeightRatio(0);
        self.placeLabel.hidden = YES;

    }else{
    
        addPhotoView.sd_layout
        .leftSpaceToView(self.contentView,0)
        .rightSpaceToView(self.contentView,20)
        .topSpaceToView(self.placeLabel, 15)
        .autoHeightRatio(0);
        self.placeLabel.hidden = NO;

    }
   
    if ([_model.level intValue] == 1) {
        //货架
        self.typeImageView.image = [UIImage imageNamed:@"货架详情"];
        
    }else if ([_model.level intValue] == 2){
        //箱
        self.typeImageView.image = [UIImage imageNamed:@"档案箱详情"];
        
    }else{
        //册
        self.typeImageView.image = [UIImage imageNamed:@"档案册详情"];
        
        
    }
    
    if (_model.relationid_numbe.length == 0 || [_model.relationid_numbe isEqualToString:@"(null)"] ||_model.relationid_numbe == nil) {
        //不存在
        
        self.placeLabel.text = [NSString stringWithFormat:@"未添加到任何位置"];
        self.placeLabel.textColor = Color(252, 13, 27);
        
        
        
    }else{
        //存在
        self.placeLabel.text = [NSString stringWithFormat:@"位置：%@",_model.relationid_numbe];
        self.placeLabel.textColor = [UIColor blackColor];
                
    }

    self.noteLabel.text = [NSString stringWithFormat:@"备注：%@",_model.ddescription];
    self.titileLabel.text = _model.number;
    addPhotoView.model = model;
    [self setupAutoHeightWithBottomView:addPhotoView bottomMargin:15];

}


@end













