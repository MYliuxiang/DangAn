//
//  ManagementVC.m
//  DangAn
//
//  Created by lijiang on 16/5/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "ManagementVC.h"
#import "MSeachVC.h"
#import "BaseNavigationController.h"
#import "WarehouseVC.h"
#import "MAImagePickerController.h"
#import "FileMangerVC.h"
#import "BuyAlert.h"
#import "OneAlert.h"
#import "TwoFiledAlert.h"
#import "PickAlert.h"
#import "SugressAlert.h"
#import "FailAlert.h"
#import "AddNewVC.h"
#import "PlaceAnOrder.h"
#import "AnimationAlert.h"

@interface ManagementVC ()<MAImagePickerControllerDelegate,LXBUYViewDelegate,LXOneViewDelegate,LXTwoViewDelegate,LXPickViewDelegate,LXFailViewDelegate,LXSugressViewDelegate,SDCycleScrollViewDelegate>


@end

@implementation ManagementVC

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if (![UserDefaults boolForKey:ISLogin]) {
        
//        [MyLogin gotoLoginViewWithTarget:self];
        anialert = [[AnimationAlert alloc] initAlert];
        anialert.clickBlock = ^(){
        
        [MyLogin gotoLoginViewWithTarget:self];

        };
        [anialert show];
        
    } else {
        
        [self _loadData];
        
    }
    
}


- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [anialert dismiss];

}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navbarHiden = YES;
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.addNewBtn.layer.cornerRadius = 4;
    self.addNewBtn.layer.masksToBounds= YES;
    self.cycleList = [NSMutableArray array];
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap1)];
    [self.onelineView addGestureRecognizer:tap1];
    
    
    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap2)];
    [self.offlineView addGestureRecognizer:tap2];
    
    UITapGestureRecognizer *tap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap3)];
    [self.checkView addGestureRecognizer:tap3];
    
    self.addNewBtn.layer.cornerRadius = 5;
    self.addNewBtn.layer.masksToBounds = YES;
    self.addNewBtn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.addNewBtn.layer.borderWidth = .5;
    
    self.btn1.layer.cornerRadius = 5;
    self.btn1.layer.masksToBounds = YES;
    self.btn1.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.btn1.layer.borderWidth = .5;
    
    self.btn2.layer.cornerRadius = 5;
    self.btn2.layer.masksToBounds = YES;
    self.btn2.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.btn2.layer.borderWidth = .5;
    
    self.btn3.layer.cornerRadius = 5;
    self.btn3.layer.masksToBounds = YES;
    self.btn3.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.btn3.layer.borderWidth = .5;

    self.btn4.layer.cornerRadius = 5;
    self.btn4.layer.masksToBounds = YES;
    self.btn4.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.btn4.layer.borderWidth = .5;


    
    
    
    
    //轮播图
    _cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, kScreenWidth, (kScreenWidth / 320) * 80) delegate:self placeholderImage:[UIImage imageNamed:@""]];
    [_cycleScrollView setPageControlAliment:SDCycleScrollViewPageContolAlimentCenter];
    [_cycleScrollView setPageControlStyle:SDCycleScrollViewPageContolStyleAnimated];
    [_cycleScrollView setPageControlDotSize:CGSizeMake(6, 6)];
    _cycleScrollView.autoScrollTimeInterval = 5;
    [self.bannerView addSubview:_cycleScrollView];
    
    //拍照通知
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getImage:) name:LXCamScan object:nil];
    
    
}

/** 点击图片回调banner */
- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    CycleModel *model = self.cycleList[index];
    if ([model.adv_type integerValue] == 1) {
        //新闻
        NewsVC *vc = [[NewsVC alloc] init];
        vc.newsId = model.news_id;
        [self.navigationController pushViewController:vc animated:YES];
        
    }else if ([model.adv_type integerValue] == 2){
        //下单
        PlaceAnOrder *placeAnOrder = [[PlaceAnOrder alloc]init];
        [self.navigationController pushViewController:placeAnOrder animated:YES];
        
    }else{
        //静态图片
        
    }
    
    
}


- (void)_loadData
{
    
    NSDictionary *params;
    
    params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]]};
    
    [WXDataService requestAFWithURL:Url_Archive_manage params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
             
                
                NSMutableArray *marray1 = [NSMutableArray array];
                NSMutableArray *imarray = [NSMutableArray array];
                
                NSArray *array1 = dic[@"adv_list"];
                
                for (NSDictionary *subDic in array1) {
                    CycleModel *model = [[CycleModel alloc] initWithDataDic:subDic];
                    [marray1 addObject:model];
                    [imarray addObject:model.thumb];
                }
                _cycleList = marray1;
                _cycleScrollView.imageURLStringsGroup = imarray;
                self.ZcountLabel.text = [NSString stringWithFormat:@"%d",[dic[@"z_count"] integerValue]];
                self.lcountLabel.text = [NSString stringWithFormat:@"%d",[dic[@"l_count"] integerValue]];
                if ([dic[@"total_count"] integerValue] != 0) {
                      [self.hederBtn setTitle:[NSString stringWithFormat:@"%d",[dic[@"total_count"] integerValue]] forState:UIControlStateNormal];
                }else{
                
                      [self.hederBtn setTitle:@"0" forState:UIControlStateNormal];
                }
                              
            }
            
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
    }];




}


#pragma mark - Notification
- (void)getImage:(NSNotification *)notification
{
    id image = notification.object;
  
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:LXCamScan object:nil];

}

#pragma mark -----------在库----------
- (void)tap1
{
    NSLog(@"在库");
    
    WarehouseVC *vc = [[WarehouseVC alloc] init];
    vc.isOnline = YES;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark -----------离库----------
- (void)tap2
{
    
    NSLog(@"离库");
    
    WarehouseVC *vc = [[WarehouseVC alloc] init];
    vc.isOnline = NO;
    [self.navigationController pushViewController:vc animated:YES];

}

#pragma mark -----------查一查----------
- (void)tap3
{
    NSLog(@"查一查");
    MSeachVC *vc = [[MSeachVC alloc] init];
    BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:vc];
    
    [self presentViewController:nav animated:YES completion:nil];
        
}


#pragma mark -----------添加新档案----------
- (IBAction)addNewAC:(UIButton *)sender {
    
//    NSLog(@"添加新档案");
//    
    AddNewVC *vc = [[AddNewVC alloc] init];
    vc.clink = ^(){
    
            SugressAlert *alert = [[SugressAlert alloc] initWithMessage:@"添加成功" title1:@"完成" title2:@"继续添加" delegate:self];
            [alert show];
        
    };
    [self.navigationController pushViewController:vc animated:YES];
    
//    MAImagePickerController *imagePicker = [[MAImagePickerController alloc] init];
//    [imagePicker setDelegate:self];
//    [imagePicker setSourceType:MAImagePickerControllerSourceTypeCamera];
//
//    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:imagePicker];
//    
//    [self presentViewController:navigationController animated:YES completion:nil];
    
//    BuyAlert *alert = [[BuyAlert alloc] initWithDelegate:self];
//    [alert show];
    
//    OneAlert *alert = [[OneAlert alloc] initWithTitle:@"备注信息" Message:nil Placeholdet:@"备注" delegate:self];
//    [alert show];
    
    
//    TwoFiledAlert *alert = [[TwoFiledAlert alloc] initWithTitle:@"手动添加" Placeholdet1:@"输入名称或编号" Placeholdet2:@"备注" delegate:self];
//    
//    [alert show];
//    TwoFiledAlert *alert = [[TwoFiledAlert alloc] initWithTitle:@"手动添加" Placeholdet1:@"输入名称或编号" Placeholdet2:@"备注" delegate:self];
//    
//    [alert show];
    
//    PickAlert *alert = [[PickAlert alloc] initWithTitle:@"照片自动保存至云空间\n请选择文件夹" pickArray:@[@"文件夹一",@"文件夹二",@"文件夹三",@"文件夹四",@"文件夹五"] newTitle:@"新建文件夹" delegate:self];
//    
//    [alert show];
    
//    
//    FailAlert *alert = [[FailAlert alloc] initWithTitle:@"提交失败" messsage:@"未添加货架地址" delegate:self];
//    [alert show];
    

    

}

#pragma mark -------------alert Delegate-----------------

- (void)clickindex
{


}

#pragma mark --------添加成功---------------
- (void)clickindex:(int)index lxView:(SugressAlert *)alert
{
    
    if(index == 1){
    
        AddNewVC *vc = [[AddNewVC alloc] init];
        vc.clink = ^(){
            
            SugressAlert *alert = [[SugressAlert alloc] initWithMessage:@"添加成功" title1:@"完成" title2:@"继续添加" delegate:self];
            [alert show];
            
        };
        [self.navigationController pushViewController:vc animated:YES];

        
    }

}

- (void)clickindex:(int)index lxView:(PickAlert *)alert whithAIndex:(NSInteger)aindex
{
    NSLog(@"%d",aindex);

}

- (void)clickindex:(int)index lxView:(TwoFiledAlert *)alert whiteText1:(NSString *)text1 withTwxt2:(NSString *)text2
{
    NSLog(@"%@…………%@",text1,text2);

}



- (void)clickindex:(int)index lxView:(BuyAlert *)alert whiteText1:(NSString *)text1 whithText2:(NSString *)text2 whithText3:(NSString *)text3
{
    NSLog(@"%@%@%@",text1,text2,text3);


}




- (void)imagePickerDidCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerDidChooseImageWithImageData:(NSData *)imageData;
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
    
//    if ([[NSFileManager defaultManager] fileExistsAtPath:path])
//    {
//        NSLog(@"File Found at %@", path);
//    }
//    else
//    {
//        NSLog(@"No File Found at %@", path);
//    }
//    
//    [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
}

#pragma mark -----------借阅----------
- (IBAction)borrowAC:(UIButton *)sender {
    
    NSLog(@"借阅");
    MSeachVC *vc = [[MSeachVC alloc] init];
    BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:vc];
    
    [self presentViewController:nav animated:YES completion:nil];
    

   
}

#pragma mark -----------归还----------
- (IBAction)guihaiAC:(UIButton *)sender {
    
    NSLog(@"归还");
    NSLog(@"查一查");
    MSeachVC *vc = [[MSeachVC alloc] init];
    BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:vc];
    
    [self presentViewController:nav animated:YES completion:nil];
    


}

#pragma mark -----------管理----------
- (IBAction)managerAC:(id)sender {
    
    NSLog(@"管理");
    FileMangerVC *vc = [[FileMangerVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];


}

#pragma mark -----------报告----------
- (IBAction)baogaoAC:(UIButton *)sender {
    
    NSLog(@"报告");
    
    OneAlert *alert = [[OneAlert alloc] initWithTitle:@"输入邮箱" Message:nil Placeholdet:@"请输入邮箱" delegate:self];
    [alert.button1 setTitle:@"取消" forState:UIControlStateNormal];
    [alert.button2 setTitle:@"下载" forState:UIControlStateNormal];
    [alert show];

}

- (void)clickindex:(int)index lxView:(OneAlert *)alert whiteText:(NSString *)text
{

    if (index == 1) {
        
        NSDictionary *params;
        params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"email":text};
        
        [WXDataService requestAFWithURL:Url_Archive_email params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
            
            if(result){
                
                if ([[result objectForKey:@"status"] integerValue] == 0) {
                    [MBProgressHUD showSuccess:result[@"msg"] toView:self.view];
                    
                }
                
                if ([[result objectForKey:@"status"] integerValue] == 1) {
                    
                    [MBProgressHUD showError:result[@"msg"] toView:self.view];
                    
                }
            }
        } errorBlock:^(NSError *error) {
            NSLog(@"%@",error);
            
            [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
            
            
        }];
        
        

        
        
        
        
    }
    
    
}

@end
