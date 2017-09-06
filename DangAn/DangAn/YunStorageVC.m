//
//  YunStorageVC.m
//  DangAn
//
//  Created by lijiang on 16/5/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "YunStorageVC.h"
#import "YunsCell.h"
#import "CollectionHeaderView.h"
#import "BJtableView.h"
#import "DangAnVC.h"
#import "OneAlert.h"
#import "ShimiView.h"
#import "YuyingyanzhengVC.h"
#import "YunStorageVC.h"
#import "YunStoraModel.h"
#import "CreateWenJView.h"
#import "YunlockVC.h"
#import "WenjianVC.h"




#define SHCollectionReusableViewFooter   @"CollectionFooter"

@interface YunStorageVC ()<UISearchBarDelegate,LXOneViewDelegate,BJtableViewDelegate,ShimiViewDelegate,CreateWJViewdelegate,UIAlertViewDelegate>
@property(nonatomic,assign)BOOL type;
@property(nonatomic,strong)NSMutableArray *listAry;
@property(nonatomic,strong)NSString *used;
@property(nonatomic,assign)NSInteger index;
@property (nonatomic ,copy)NSString *gesture_password;
@property (nonatomic ,copy)NSString *gesture_status;
@property (nonatomic ,copy)NSString *storage_show;


@end

@implementation YunStorageVC{
    NSString *_cellIdentifier;
    NSString *_HeaderIdentifier;
    BJtableView *_bjTB;
    ShimiView *shimi;
    OneAlert *one;
    UIImageView *_showimage;
    UIView *_scrollbgView;
}


- (void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navbarHiden = NO;
    self.navigationController.navigationBarHidden = YES;
    //    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
    
    if (![UserDefaults boolForKey:ISLogin]) {
        
        //        [MyLogin gotoLoginViewWithTarget:self];
        _showimage.hidden = NO;
        _scrollbgView.hidden = NO;
        [self.rightbutton setTitle:@"" forState:UIControlStateNormal];
        
    } else {
        _showimage.hidden = YES;
        _scrollbgView.hidden = YES;
        [_CollectionView.mj_header beginRefreshing];
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(shezhisuccess:) name:@"success" object:nil];
        [self.rightbutton setTitle:@"编辑" forState:UIControlStateNormal];
    }
    
    _type = YES;
    
}

- (void)showImagView
{
    
    _scrollbgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight - 49)];
    _scrollbgView.backgroundColor = [UIColor blackColor];
    _scrollbgView.hidden = YES;
    _scrollbgView.alpha = .5;
    [self.view addSubview:_scrollbgView];
    
    _showimage = [[UIImageView alloc]initWithFrame:CGRectMake(20, 80, kScreenWidth - 40, kScreenHeight - 160)];
    _showimage.image = [UIImage imageNamed:@"3云1"];
    _showimage.contentMode = UIViewContentModeScaleAspectFit;
    _showimage.hidden = YES;
    _showimage.userInteractionEnabled = YES;
    [self.view addSubview:_showimage];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(ShowImageAction)];
    [_showimage addGestureRecognizer:tap];
    
}

- (void)ShowImageAction
{
    [MyLogin gotoLoginViewWithTarget:self];
}

- (void)shezhisuccess:(NSNotificationCenter *)not{
    
    
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.text = @"云存储";
    [self _Initview];
    [self addrighttitleString:@"编辑"];
    _type = YES;
    
    _bjTB= [[BJtableView alloc]initWithFrame:CGRectMake(0, kScreenHeight, kScreenWidth, kScreenHeight)];
    _bjTB.delegate = self;
    [self.view addSubview:_bjTB];
    _bjTB.dataAry = @[@"设置为私密档案",@"打包下载",@"修改名称",@"删除"];
    //    [self _loaddata:@""];
    
    
    _CollectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(downLoad)];
    
    
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(shuaxinAction) name:@"shuanxinDA" object:nil];
    
    //    [self setGesturePassword:@""];
    
    [self showImagView];
    
    
}



//设置手势密码
- (void)setGesturePassword:(NSString *)GesturePassword{
    
    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"gestrue_password":GesturePassword};
    [WXDataService requestAFWithURL:Url_Other_setGesturePassword params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
            [MBProgressHUD showSuccess:result[@"msg"] toView:self.view];
            [self.navigationController popViewControllerAnimated:YES];
            [[NSNotificationCenter defaultCenter]postNotificationName:@"shuanxinDA" object:nil];
        }else{
            
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
            
        }
        
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
}



- (void)shuaxinAction{
    
    [_CollectionView.mj_header beginRefreshing];
    
}



//获取是否存在手势
-(void)cunzaimiam{
    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id]};
    
    [WXDataService requestAFWithURL:Url_Other_getGesturePassword params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
            NSDictionary *dic = result[@"result"];
            NSDictionary *info  = dic[@"info"];
            _gesture_status = [NSString stringWithFormat:@"%@",info[@"gesture_status"]];
            _gesture_password = [NSString stringWithFormat:@"%@",info[@"gesture_password"]];
            
            if (_gesture_password.length !=0) {
                [UserDefaults setObject:_gesture_password forKey:Yun_password];
            }
            
            
            NSLog(@"手势密码%@",_gesture_password);
            
        }else{
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
        }
        
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
    
    
}



-(void)_Initview{
    
    
    CGFloat Collectionwidth = kScreenWidth/3.0;
    _layout.sectionInset =UIEdgeInsetsMake(0,0,0,0);
    _layout.itemSize = CGSizeMake(Collectionwidth, Collectionwidth);
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    _cellIdentifier=@"YunsCell";
    UINib *nib=[UINib nibWithNibName:@"YunsCell" bundle: [NSBundle mainBundle]];
    [_CollectionView registerNib:nib forCellWithReuseIdentifier:_cellIdentifier];
    
    _layout.footerReferenceSize=CGSizeMake(self.view.frame.size.width, 150);//尾视图大小
    
    //注册头视图
    [self.CollectionView registerNib:[UINib nibWithNibName:@"CollectionHeaderView" bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"CollectionHeaderView"];
    
    //使用原有重用视图
    [_CollectionView registerClass:[UICollectionReusableView class]  forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:SHCollectionReusableViewFooter ];
    
    
}


-  (void)downLoad{
    
    [self _loaddata:@""];
    [self cunzaimiam];
    
}


- (void)_loaddata:(NSString *)query{
    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"query":query};
    
    [WXDataService requestAFWithURL:Url_Cloud_listArchives params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        _listAry = [NSMutableArray new];
        NSDictionary *dic = result[@"result"];
        if ([[result objectForKey:@"status"] integerValue] == 0){
            NSArray *listAry = dic[@"list"];
            [listAry enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                YunStoraModel *model = [[YunStoraModel alloc]initWithDataDic:obj];
                model.Yunid = obj[@"id"];
                [_listAry addObject:model];
            }];
            
        }
        _used = dic[@"used"];
        _storage_show = dic[@"storage"];
        
        [_CollectionView.mj_header endRefreshing];
        
        [_CollectionView reloadData];
        
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
    
    
}




#pragma mark -------------------所有点击事件--------------------------

- (void)rightAction{
    _type =!_type;
    if (!_type) {
        [self.rightbutton setTitle:@"取消" forState:UIControlStateNormal];
    }else{
        [self.rightbutton setTitle:@"编辑" forState:UIControlStateNormal];
    }
    [_CollectionView reloadData];
    
    
}

//单元格设置按钮点击事件
- (void)shezhiAction:(UIButton *)button{
    [UIView animateWithDuration:0.3 animations:^{
        [_bjTB setTop:0];
        
    } completion:^(BOOL finished) {
        
    }];
    
    NSIndexPath *index = [NSIndexPath indexPathForRow:button.tag-1000 inSection:0];
    YunsCell *cell = (YunsCell*)[_CollectionView cellForItemAtIndexPath: index];
    cell.backgroundColor = Color_bg;
    
}


- (void)section:(int)section row:(int)alert{
    [_bjTB setTop:kScreenHeight];
    if (section==0) {
        if (alert==0) {
            
            YunStoraModel *model = _listAry[_index];
            if ([model.is_private integerValue]==1) {
                
                shimi = [[ShimiView alloc]initWithtitleString:@"设置为公开档案" textFieldPlace:@"是否将此文件设置为公开" imagename:@"普通文件夹" delegate:self];
                
                
                [shimi show];
                
            }else{
                shimi = [[ShimiView alloc]initWithtitleString:@"设置为私密档案" textFieldPlace:@"设置为私密档案后，只有通过图形解锁才能查看内容" imagename:@"私密文件夹" delegate:self];
                
                if ([_gesture_status integerValue]==1) {
                    [shimi.btn_done setTitle:@"设置" forState:UIControlStateNormal];
                    
                }else{
                    [shimi.btn_done setTitle:@"去设置" forState:UIControlStateNormal];
                    
                }
                
                [shimi show];
                
            }
            
        }
        if (alert==1) {
            
            one = [[OneAlert alloc]initWithTitle:@"输入邮箱" Message:nil Placeholdet:@"输入邮箱" delegate:self];
            [one show];
        }
        
        
        //修改文件名字
        if (alert==2) {
            
            
            CreateWenJView *wenjView = [[CreateWenJView alloc]initWithTitle:@"档案夹名称" Placeholdet1:@"输入档案夹名称" Placeholdet2:nil delegate:self];
            wenjView.tag = 240;
            
            [wenjView show];
        }
        
        
        if (alert==3) {
            
            YunStoraModel *model = _listAry[_index];
            NSString *zhuid = model.Yunid;
            [self deletewenjian:zhuid];
        }
        
    }
    
    
    if (section==1) {
        if (alert==0) {
            [UIView animateWithDuration:0.3 animations:^{
                [_bjTB setTop:kScreenHeight];
                
            } completion:^(BOOL finished) {
                
            }];
        }
    }
    
    
    if (section==10000) {
        
    }
    
    
    [_CollectionView reloadData];
}



#pragma mark-------------------弹出试图的代理方法------------------
- (void)clickindex:(int)index lxView:(OneAlert *)alert whiteText:(NSString *)text{
    NSLog(@"%d",index);
    
    if (index==1) {
        YunStoraModel *model = _listAry[_index];
        NSString *zhuid = model.Yunid;
        [self emailxiazai:zhuid email:text];
    }
    
}


//打包下载
- (void)emailxiazai:(NSString *)zhuid email:(NSString *)email{
    
    NSDictionary *params = @{@"cloud_archives_id":zhuid,@"member_id":[UserDefaults objectForKey:Member_id],@"email":email};
    
    [WXDataService requestAFWithURL:Url_Cloud_downloadArchives params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
            [MBProgressHUD showSuccess:result[@"msg"] toView:self.view];
        }else{
            
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
            
        }
        
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
}


//修改名字
- (void)changeName:(NSString *)zhuid WJName:(NSString *)WJName{
    
    NSDictionary *params = @{@"cloud_archives_id":zhuid,@"member_id":[UserDefaults objectForKey:Member_id],@"title":WJName};
    
    [WXDataService requestAFWithURL:Url_Cloud_renameArchives params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
            [MBProgressHUD showSuccess:result[@"msg"] toView:self.view];
        }else{
            
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
            
        }
        [_CollectionView.mj_header beginRefreshing];
        
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
    
    
}


//删除
- (void)deletewenjian:(NSString *)zjid{
    
    NSDictionary *params = @{@"cloud_archives_id":zjid,@"member_id":[UserDefaults objectForKey:Member_id]};
    
    [WXDataService requestAFWithURL:Url_Cloud_deleteArchives params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
            [MBProgressHUD showSuccess:result[@"msg"] toView:self.view];
        }else{
            
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
            
        }
        [_CollectionView.mj_header beginRefreshing];
        
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
    
    
    
}

//设置为私密档案的弹出视图

- (void)clickcontentString:(NSString *)contentString lxView:(ShimiView *)alert index:(int)index{
    NSLog(@"%d",index);
    
    if (index==1) {
        
        
        
        if ([_gesture_status integerValue]==1) {
            
            YunStoraModel *model = _listAry[_index];
            
            YunlockVC *vc = [[YunlockVC alloc] init];
            vc.model = model;
            vc.gesture_status = _gesture_status;
            vc.gesture_password = _gesture_password;
            [self.navigationController pushViewController:vc animated:YES];
            
            
            if ([model.is_private integerValue]==1) {
                vc.index=4;
            }else{
                
                vc.index=3;
            }
            
        }else{  //未设置手势
            
            [[NSNotificationCenter defaultCenter]postNotificationName:NotiCenter_TabbarSeleced object:@"4"];
            
            
            
        }
        
    }
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (alertView.tag == 333) {
        if (buttonIndex==1) {
            
            [[NSNotificationCenter defaultCenter]postNotificationName:NotiCenter_TabbarSeleced object:@"4"];
            
        }
        
    }
    
}




#pragma mark -------------------表视图代理方法-------------------------
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    
    return _listAry.count+1;
}



- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    YunsCell *cell = (YunsCell *)[collectionView dequeueReusableCellWithReuseIdentifier:_cellIdentifier forIndexPath:indexPath];
    
    
    if (!_type) {
        
        cell.shezhi.hidden = NO;
        
    }else{
        
        cell.shezhi.hidden = YES;
    }
    
    
    
    if (indexPath.row==_listAry.count) {
        cell.wenjianjia.image = [UIImage imageNamed:@"新建文件夹"];
        cell.shuliang.hidden = YES;
        cell.title.text = @"新建档案夹";
        cell.shezhi.hidden = YES;
    }else{
        
        YunStoraModel *model = _listAry [indexPath.row];
        
        cell.backgroundColor = [UIColor whiteColor];
        cell.layer.borderWidth = 0.3;
        cell.layer.borderColor = UIColorFromRGB(0xf0f0f0).CGColor;
        cell.wenjianjia.image = [UIImage imageNamed:@"普通文件夹"];
        cell.title.text = model.title ;
        
        //        cell.shezhi.hidden = YES;
        cell.shuliang.hidden = NO;
        
        
        cell.shuliang.text = model.count;
        
        if ([model.is_private integerValue]==1) {
            cell.wenjianjia.image = [UIImage imageNamed:@"私密文件夹"];
            cell.shuliang.hidden  =YES;
            cell.title.text = model.title ;
            
        }
        
        
    }
    
    cell.shezhi.tag = 1000+indexPath.row;
    [cell.shezhi addTarget:self action:@selector(shezhiAction:) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
    
}


//


- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 0.0f;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 0.0f;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    
    UICollectionReusableView *reusableview = nil;
    
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        CollectionHeaderView *CollHeaderView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"CollectionHeaderView" forIndexPath:indexPath];
        CollHeaderView.backgroundColor = [UIColor clearColor];
        
        CollHeaderView.Sousu.delegate = self;
        CollHeaderView.Sousu.placeholder = @"搜一搜";
        CollHeaderView.Sousu.showsCancelButton = NO;
        CollHeaderView.Sousu.backgroundColor = [UIColor clearColor];
        
        
        for (UIView *sub in [[CollHeaderView.Sousu.subviews objectAtIndex:0] subviews]) {
            if ([sub isKindOfClass:NSClassFromString(@"UISearchBarBackground")])
            {
                [sub removeFromSuperview];
                break;
            }
        }
        
        
        [CollHeaderView.Sousu setBackgroundColor:[UIColor whiteColor]];
        CollHeaderView.Sousu.layer.masksToBounds = YES;
        CollHeaderView.Sousu.layer.cornerRadius = 5;
        
        
        NSInteger size = [_storage_show floatValue]/1024;
        
        if ([_used floatValue] < 1024  ) {
            CollHeaderView.rongliang.text = [NSString stringWithFormat:@"%.2fKB/%ldMB",[_used floatValue],size];
            
        }else if (1024<=[_used floatValue] && [_used floatValue] < 1024*1024  ) {
            CGFloat shiji = [_used floatValue]/1024;
            
            CollHeaderView.rongliang.text = [NSString stringWithFormat:@"%.2fMB/%ldMB",shiji,size];
        }else{
            CGFloat shiji = [_used floatValue]/1024;
            CollHeaderView.rongliang.text = [NSString stringWithFormat:@"%.2fMB/%ldMB",shiji,size];
        }
        
        
        if ([_storage_show integerValue]==0) {
            _storage_show = @"1";
        }
        
        CollHeaderView.width_hederview.constant = ([_used floatValue]/[_storage_show floatValue])*(kScreenWidth-107);
        
        reusableview = CollHeaderView;
        
        
    }
    
    
    if (kind == UICollectionElementKindSectionFooter) {
        
        UICollectionReusableView *footerview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:SHCollectionReusableViewFooter forIndexPath:indexPath];
        /**
         *   如果头尾视图没什么很多内容,直接创建对应控件进行添加即可,无需自定义.
         */
        
        
        for (UIView *sub in footerview.subviews) {
            
            [sub removeFromSuperview];
            
        }
        
        
        UILabel *zongji;
        zongji = [[UILabel alloc]initWithFrame:CGRectMake(0,30,kScreenWidth, 20)];
        zongji.font = [UIFont systemFontOfSize:13];
        zongji.textColor = Color_text;
        zongji.textAlignment = NSTextAlignmentCenter;
        [footerview addSubview:zongji];
        zongji.text = [NSString stringWithFormat:@"共包含%d页内容",_listAry.count];
        
        
        reusableview = footerview;
    }
    
    
    
    
    return reusableview;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(kScreenWidth, 75);
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    
    if (_type) {
        
        if (indexPath.row==_listAry.count) {
            
            CreateWenJView *wenjView = [[CreateWenJView alloc]initWithTitle:@"档案夹名称" Placeholdet1:@"输入档案夹名称" Placeholdet2:nil delegate:self];
            
            [wenjView show];
            
        }else{
            
            YunStoraModel *model = _listAry [indexPath.row];
            
            
            if ([_gesture_status integerValue]==1) {
                
                if ([model.is_private integerValue]==1) {
                    
                    YunlockVC *vc = [[YunlockVC alloc] init];
                    vc.model = model;
                    vc.gesture_status = _gesture_status;
                    vc.gesture_password = _gesture_password;
                    [self.navigationController pushViewController:vc animated:YES];
                    
                    
                }else{
                    
                    
                    WenjianVC *vc  = [[WenjianVC alloc]init];
                    vc.zhujianid = model.Yunid;;
                    vc.title = model.title;
                    UIBarButtonItem *bar = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:0 target:nil action:nil];
                    [self.navigationItem setBackBarButtonItem:bar];
                    [self.navigationController pushViewController:vc animated:YES];
                    
                }
                
                
                
            }else{
                
                
                
                if ([model.is_private integerValue]==1) {
                    
                    UIAlertView *alerview = [[UIAlertView alloc]initWithTitle:nil message:@"去个人中心设置手势锁" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
                    
                    alerview.tag = 333;
                    [alerview show];
                    
                    
                }else{
                    
                    
                    
                    WenjianVC *vc  = [[WenjianVC alloc]init];
                    vc.zhujianid = model.Yunid;;
                    vc.title = model.title;
                    UIBarButtonItem *bar = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:0 target:nil action:nil];
                    [self.navigationItem setBackBarButtonItem:bar];
                    [self.navigationController pushViewController:vc animated:YES];
                    
                    
                    //                    DangAnVC *vc = [[DangAnVC alloc]init];
                    //                    vc.DAtitle = model.title;
                    //                    vc.DAid = model.Yunid;
                    //                    UIBarButtonItem *bar = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:0 target:nil action:nil];
                    //                    [self.navigationItem setBackBarButtonItem:bar];
                    //                    [self.navigationController pushViewController:vc animated:YES];
                    
                }
                
            }
            _index=indexPath.row;
            
        }
        
        
    }else{
        
        [UIView animateWithDuration:0.3 animations:^{
            [_bjTB setTop:0];
            
        } completion:^(BOOL finished) {
            
        }];
        
        YunsCell *cell = (YunsCell*)[_CollectionView cellForItemAtIndexPath: indexPath];
        cell.backgroundColor = Color_bg;
        _index = indexPath.row;
        
        YunStoraModel *model = _listAry [indexPath.row];
        
        if ([model.is_private integerValue]==1) {
            _bjTB.dataAry = @[@"取消私密",@"打包下载",@"修改名称",@"删除"];
            
        }else{
            
            _bjTB.dataAry = @[@"设置为私密档案",@"打包下载",@"修改名称",@"删除"];
        }
        
        
    }
    
    
}







//
#pragma mark - UISearchDelegate
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
    
    
    if (searchText.length==0) {
        [self _loaddata:searchText];
    }
    
    
}


- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    [self _loaddata:searchBar.text];
}



- (void)clickindex:(int)index lxView:(CreateWenJView *)alert whiteText1:(NSString *)text1 withTwxt2:(NSString *)text2{
    
    
    
    if (alert.tag == 240) {
        
        if (index==1) {
            
            YunStoraModel *model = _listAry[_index];
            NSString *zhuid = model.Yunid;
            [self changeName:zhuid WJName:text1];
        }
        
    }else{
        if (index==1) {
            
            [self createWenjianjia:text1];
        }
        
    }
    
}


//创建新的文件夹
- (void)createWenjianjia:(NSString *)title{
    
    //    *title 档案的名称
    //    *member_id 用户的id
    
    NSDictionary *params = @{@"title":title,@"member_id":[UserDefaults objectForKey:Member_id]};
    
    [WXDataService requestAFWithURL:Url_Cloud_makeArchives params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
            [MBProgressHUD showSuccess:result[@"msg"] toView:self.view];
        }else{
            
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
            
        }
        
        [_CollectionView.mj_header beginRefreshing];
        
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
    }];
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
