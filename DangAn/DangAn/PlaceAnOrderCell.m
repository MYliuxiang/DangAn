//
//  PlaceAnOrderCell.m
//  DangAn
//
//  Created by 李江 on 16/6/11.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "PlaceAnOrderCell.h"

@implementation PlaceAnOrderCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.label_title.textColor = Color_text;
    self.btn_add.userInteractionEnabled = NO;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)AddCard:(id)sender {
    
    LJOrderAlertView *ljOrderAlertView = [[LJOrderAlertView alloc]initWithtitleString:@"填写数量" textFieldPlace:@"档案数量" delegate:self];
    [ljOrderAlertView show];
}

- (void)clickcontentString:(NSString *)contentString lxView:(LJOrderAlertView *)alert
{

    NSLog(@"===%@",contentString);

}

@end
