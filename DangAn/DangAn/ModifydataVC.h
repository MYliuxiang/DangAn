//
//  ModifydataVC.h
//  DangAn
//
//  Created by Viatom on 16/8/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface ModifydataVC : BaseViewController<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate,UINavigationControllerDelegate, UIImagePickerControllerDelegate,UIActionSheetDelegate>
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)NSArray *tiletes;
@property(nonatomic,strong)UIImageView *touxiangImageView;
@property(nonatomic,strong)UITextField *nameTextField;
@property(nonatomic,strong)UITextField *phoneTextFiel;
@property(nonatomic,strong)UIButton *birthdayTextFiel;
@property(nonatomic,strong)UITextField *IDTextFiel;
@property(nonatomic,strong)UITextField *addressTextFiel;
@property(nonatomic,strong)UITextView *jiaajieTextFiel;

@property(nonatomic,strong)UIDatePicker *datePicker;//时间选择器
@property(nonatomic,copy)NSString *time;


@end
