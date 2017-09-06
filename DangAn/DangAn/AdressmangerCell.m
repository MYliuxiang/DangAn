//
//  AdressmangerCell.m
//  DangAn
//
//  Created by Viatom on 16/8/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "AdressmangerCell.h"

@implementation AdressmangerCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(AdressModel *)model
{
    _model = model;
    self.titleLabel.text = model.name;
    self.phoneLabel.text = model.mobile;
    self.adressLabel.text = model.address;
    if ([model.is_default integerValue] == 1) {
        self.stateImage.hidden = NO;
    }else{
    
        self.stateImage.hidden = YES;
    }
    

}

- (IBAction)bianjiAC:(id)sender {
    
    AddAdressVCViewController *vc = [[AddAdressVCViewController alloc] init];
    vc.isAdd = NO;
    vc.model = self.model;
    [[self ViewController].navigationController pushViewController:vc animated:YES];

}
@end
