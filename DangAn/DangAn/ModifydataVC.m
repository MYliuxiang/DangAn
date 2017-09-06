//
//  ModifydataVC.m
//  DangAn
//
//  Created by Viatom on 16/8/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "ModifydataVC.h"

@interface ModifydataVC ()
{
    
    NSString * _headimgurl;
    UIImage *_headerimg;
    NSDate *_date;
    BOOL _isbool;
    
}

@end

@implementation ModifydataVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.text = @"修改资料";
    
    [self _initView];
    
    [self addrighttitleString:@"完成"];
    
    _isbool = NO;
    
    [self lodaData];
    
    

}

- (void)lodaData
{

    [WXDataService requestAFWithURL:Url_Other_memberInfo params:@{@"member_id":[UserDefaults objectForKey:Member_id]} httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        if ([result[@"status"]integerValue]==0) {
            NSDictionary *dic = result[@"result"][@"info"];
            [UserDefaults setObject:dic[@"name"] forKey:Name];
            [UserDefaults setObject:dic[@"company"] forKey:Company];
            [UserDefaults setObject:dic[@"mobile"] forKey:Mobile];
            [UserDefaults setObject:dic[@"adress"] forKey:Adress];
            [UserDefaults setObject:dic[@"img_show"] forKey:Headimgurl];
            [UserDefaults synchronize];
            
             _headimgurl = dic[@"headimgurl"];
            if (!_isbool) {
                [_tableView reloadData];
            } else {
                [MBProgressHUD showSuccess:@"保存成功" toView:self.view];
                [self.navigationController popViewControllerAnimated:YES];
            
            }
            
            
           
        }else{
            [MBProgressHUD showError:result[@"msg"] toView:self.view];
        }
        
    } errorBlock:^(NSError *error) {
        
    }];



}


//初始化视图
-(void)_initView
{
   
    

    _tiletes = @[@"修改头像",@"姓名",@"手机号",@"企业名称"];
        

    //创建表视图
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0,64, kScreenWidth  , kScreenHeight-64) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.showsHorizontalScrollIndicator = NO;
    _tableView.showsVerticalScrollIndicator = NO;
    //    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.bounces = NO;
    
    //头视图
    _tableView.tableHeaderView = ({
        UIView *bjview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 0)];
        
        bjview;
        
    });
    
    //尾视图
    _tableView.tableFooterView = [[UIView alloc]init];
    [self.view addSubview:_tableView];
}

- (void)rightAction
{
 
    if (_nameTextField.text.length == 0) {
        [MBProgressHUD showError:@"昵称不能为空" toView:self.view];
        return;
    }
    
    if (![InputCheck isPhone:_phoneTextFiel.text]) {
        [MBProgressHUD showError:@"请输入正确手机号" toView:self.view];
        return;
    }
    
    
   

    
    [self xiugaiziliao];
    
    
}


-(void)xiugaiziliao{
    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],
                   @"mobile":_phoneTextFiel.text,
                   @"name":_nameTextField.text,
                   @"company":_IDTextFiel.text,
                   @"headimgurl":_headimgurl,
                   };
    
    [WXDataService requestAFWithURL:Url_Other_saveMemberInfo params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        if ([result[@"status"]integerValue]==0) {

            _isbool = YES;
            [self lodaData];

        }else{
            [MBProgressHUD showError:result[@"msg"] toView:self.view];
        }
        
        
    } errorBlock:^(NSError *error) {
        
    }];
    
    
}



- (void)xiugai
{
    NSLog(@"修改头像");
    UIActionSheet *myActionSheet = [[UIActionSheet alloc]initWithTitle:nil
                                                              delegate:self
                                                     cancelButtonTitle:@"取消"
                                                destructiveButtonTitle:nil
                                                     otherButtonTitles:@"相机",@"相册",nil];
    [myActionSheet showInView:[UIApplication sharedApplication].keyWindow];
}



#pragma mark - ActionSheet Delegate
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex)
    {
        case 0:  //打开本地相册
            [self CreameAction:1];
            break;
        case 1:
            [self CreameAction:2];
            break;
    }
}


////拍照的点击事
- (void)CreameAction:(NSInteger )index{
    
    UIView *vvv = [[UIApplication sharedApplication].keyWindow viewWithTag:7000];
    [UIView animateWithDuration:.35 animations:^{
        [vvv setTop:kScreenHeight];
    }];;
    
    static NSUInteger sourceType;
    
    if (index ==1) {
        sourceType = UIImagePickerControllerSourceTypeCamera;
    }else if(index ==2){
        sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    }
    
    //判断是否支持相机
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
        // 跳转到相机或相册页面
        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
        imagePickerController.delegate = self;
        imagePickerController.allowsEditing = YES;
        imagePickerController.sourceType = sourceType;
        [self presentViewController:imagePickerController animated:YES completion:^{
        }];
    }
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [picker dismissViewControllerAnimated:YES completion:^{
        
        UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
        _touxiangImageView.image = image;
        
        
        _headerimg = _touxiangImageView.image;
        
        NSData *imageData = UIImageJPEGRepresentation(_headerimg, .3);
        [WXDataService postImage:Url_ploadHeadImage params:nil fileData:imageData finishBlock:^(id result) {
            
            //成功
            if ([[result objectForKey:@"status"] integerValue] == 0){
                NSDictionary *dic = result[@"result"];
                _headimgurl = dic[@"headimgurl"];
                
            }else{
                
                [MBProgressHUD showError:result[@"msg"] toView:[UIApplication sharedApplication].keyWindow];
            }
            
            
        } errorBlock:^(NSError *error) {
            
        }];
    }];
    
    
    
}


//返回单元格的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        return 80;
    }
    if (indexPath.row == 6) {
        return 100;
    }
    return 60;
    
}

//每一组返回多少个cell
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    return _tiletes.count;
    
}

//尾视图高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
}

//创建cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellIdentifier = @"Cell1";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        [cell setAccessoryType:UITableViewCellAccessoryNone];
        
        UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, 60-0.5, kScreenWidth, .5)];
        lineview.tag = 200;
        lineview.backgroundColor = UIColorFromRGB(0xcccccc);
        [cell.contentView addSubview:lineview];
    }
    
    
    UIView *liView = [cell.contentView viewWithTag:200];
    if (indexPath.row == 0) {
        liView.frame = CGRectMake(0, 80-0.5, kScreenWidth, .5);
    }
    if (indexPath.row == 6) {
        liView.frame = CGRectMake(0, 100-0.5, kScreenWidth, .5);
    }
    
    cell.textLabel.font = [UIFont systemFontOfSize:14];
    cell.textLabel.text = _tiletes[indexPath.row];
    
    if (indexPath.row == 0) {
        _touxiangImageView = [[UIImageView alloc]initWithFrame:CGRectMake(kScreenWidth-70, 10, 60, 60)];
        _touxiangImageView.backgroundColor = [UIColor clearColor];
        _touxiangImageView.layer.masksToBounds = YES;
        //描边
        _touxiangImageView.layer.cornerRadius = 60/2; //圆角（圆形）
        [cell.contentView addSubview:_touxiangImageView];
        _touxiangImageView.clipsToBounds = YES;
        _touxiangImageView.userInteractionEnabled = YES;
//        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(xiugai)];
//        [_touxiangImageView addGestureRecognizer:tap];
        _touxiangImageView.contentMode = UIViewContentModeScaleAspectFill;
        NSString *gg =[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Headimgurl]] ;
        [_touxiangImageView sd_setImageWithURL:[NSURL URLWithString:gg] placeholderImage:nil];
        
        
    }
    if (indexPath.row ==1) {
        _nameTextField = [[UITextField alloc]initWithFrame:CGRectMake(kScreenWidth - 260, 20, 250, 20)];
        _nameTextField.delegate = self;
        _nameTextField.placeholder = @"未填写";
        _nameTextField.textAlignment = NSTextAlignmentRight;
        _nameTextField.textColor = [UIColor grayColor];
        _nameTextField.font = [UIFont systemFontOfSize:12];
        _nameTextField.text = [UserDefaults objectForKey:Name];
        [cell.contentView addSubview:_nameTextField];
    }
    if (indexPath.row ==2) {
        _phoneTextFiel = [[UITextField alloc]initWithFrame:CGRectMake(kScreenWidth - 260, 20, 250, 20)];
        _phoneTextFiel.placeholder = @"未填写";
        _phoneTextFiel.textColor = [UIColor grayColor];
        _phoneTextFiel.textAlignment = NSTextAlignmentRight;
        _phoneTextFiel.delegate = self;
        _phoneTextFiel.font = [UIFont systemFontOfSize:12];
        _phoneTextFiel.text = [UserDefaults objectForKey:Mobile];
        [cell.contentView addSubview:_phoneTextFiel];
    }

    if (indexPath.row == 3) {
        _IDTextFiel = [[UITextField alloc]initWithFrame:CGRectMake(kScreenWidth - 260, 20, 250, 20)];
        _IDTextFiel.placeholder = @"未填写";
        _IDTextFiel.textColor = [UIColor grayColor];
        _IDTextFiel.textAlignment = NSTextAlignmentRight;
        _IDTextFiel.font = [UIFont systemFontOfSize:12];
        _IDTextFiel.delegate = self;
        _IDTextFiel.text = [UserDefaults objectForKey:Company];
        [cell.contentView addSubview:_IDTextFiel];
        
    }
    if (indexPath.row == 4) {
        _addressTextFiel = [[UITextField alloc]initWithFrame:CGRectMake(kScreenWidth - 260, 0, 250, 60)];
        _addressTextFiel.placeholder = @"未填写";
        _addressTextFiel.textColor = [UIColor grayColor];
        _addressTextFiel.textAlignment = NSTextAlignmentRight;
        _addressTextFiel.font = [UIFont systemFontOfSize:12];
        _addressTextFiel.delegate = self;
        _addressTextFiel.text = [UserDefaults objectForKey:Adress];
        [cell.contentView addSubview:_addressTextFiel];
        
    }
    

    return cell;
    
}




//单元格点击事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    [tableView deselectRowAtIndexPath:indexPath animated:YES];// 取消选中
    
    if(indexPath.row == 0)
    {
    
        [self xiugai];
    
    }
    
    
}


//开始编辑
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    
    
}







//隐藏键盘
- (void)hiddnkeyActionWith:(UITextField *)textView
{
    [self keyfileActionWith:textView];
    //    [UIView animateWithDuration:.35 animations:^{
    //        CGPoint Y = CGPointMake(0, 0);
    //        _tableView.contentOffset = Y;
    //    }];
    
    
    
}

- (void)keyfileActionWith:(UITextField *)textView
{
    if (![textView isExclusiveTouch]) {
        [textView resignFirstResponder];
    }
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];    //主要是[receiver resignFirstResponder]在哪调用就能把receiver对应的键盘往下收
    [self hiddnkeyActionWith:textField];
    
    return YES;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
