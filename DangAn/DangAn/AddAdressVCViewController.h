//
//  AddAdressVCViewController.h
//  DangAn
//
//  Created by Viatom on 16/8/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "AdressModel.h"

@interface AddAdressVCViewController : BaseViewController<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (weak, nonatomic) IBOutlet UITextField *phoneField;
@property (weak, nonatomic) IBOutlet UITextView *adresstext;
@property (weak, nonatomic) IBOutlet UIButton *saveBtn;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic,retain) AdressModel *model;
@property (nonatomic,assign) BOOL *isAdd;

- (IBAction)saveAC:(id)sender;
@property (nonatomic,retain)NSArray *names;
@end
