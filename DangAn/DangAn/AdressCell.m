//
//  AdressCell.m
//  DangAn
//
//  Created by Viatom on 16/6/14.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "AdressCell.h"

@implementation AdressCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setNoteText:(NSString *)noteText
{
    _noteText = noteText;
    self.noteLabel.text = [NSString stringWithFormat:@"备注：%@",_noteText];

}

- (void)setAdressText:(NSString *)adressText
{
    _adressText = adressText;
    self.adressLabel.text = _adressText;

}

- (IBAction)seeAC:(UIButton *)sender {
}
@end
