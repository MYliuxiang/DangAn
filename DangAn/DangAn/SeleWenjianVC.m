//
//  SeleWenjianVC.m
//  DangAn
//
//  Created by macvivi on 16/8/10.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "SeleWenjianVC.h"
#import "YunStoraModel.h"
#import "YunsCell.h"

@interface SeleWenjianVC ()

@property(nonatomic,strong) NSMutableArray *listAry;
@property(nonatomic,copy) NSString *zhujianid;


@end

@implementation SeleWenjianVC{

    NSString *_cellIdentifier;
    NSIndexPath *cellindexPath;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self _Initview];
    [self _loaddata:@""];
    
    self.text  = @"选择目标文件夹";
    [self addrighttitleString:@"完成"];
}



-(void)_Initview{
    
    
    self.enter.layer.borderColor = Color_blue.CGColor;
    self.enter.layer.borderWidth = 0.5;
    
    self.enter.layer.masksToBounds = YES;
    self.enter.layer.cornerRadius = 5;
    
    CGFloat Collectionwidth = kScreenWidth/3.0;
    _layout.sectionInset =UIEdgeInsetsMake(0,0,0,0);
    _layout.itemSize = CGSizeMake(Collectionwidth, Collectionwidth);
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    _cellIdentifier=@"YunsCell";
    UINib *nib=[UINib nibWithNibName:@"YunsCell" bundle: [NSBundle mainBundle]];
    [_CollectionView registerNib:nib forCellWithReuseIdentifier:_cellIdentifier];
    
    //注册头视图
    [self.CollectionView registerNib:[UINib nibWithNibName:@"CollectionHeaderView" bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"CollectionHeaderView"];
    
    
 
}



- (void)rightAction{

    if (_zhujianid.length ==0) {
        [MBProgressHUD showError:@"必须选择一个文件夹" toView:self.view];
        return;
    }
    
    [self yidongData:_idAry];

}

- (void)_loaddata:(NSString *)query{
    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"query":query};
    
    [WXDataService requestAFWithURL:Url_Cloud_listArchives params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        _listAry = [NSMutableArray new];
        if ([[result objectForKey:@"status"] integerValue] == 0){
            NSDictionary *dic = result[@"result"];
            NSArray *listAry = dic[@"list"];
            [listAry enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                YunStoraModel *model = [[YunStoraModel alloc]initWithDataDic:obj];
                model.Yunid = obj[@"id"];
                [_listAry addObject:model];
            }];
        }
        
        [_CollectionView reloadData];
        
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
    
    
}



#pragma mark -------------------表视图代理方法-------------------------
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    
    return _listAry.count;
}



- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    YunsCell *cell = (YunsCell *)[collectionView dequeueReusableCellWithReuseIdentifier:_cellIdentifier forIndexPath:indexPath];
    

        
        YunStoraModel *model = _listAry [indexPath.row];
        
        cell.backgroundColor = [UIColor whiteColor];
        cell.layer.borderWidth = 0.3;
        cell.layer.borderColor = UIColorFromRGB(0xf0f0f0).CGColor;
        cell.wenjianjia.image = [UIImage imageNamed:@"普通文件夹"];
        cell.title.text = model.title ;
        
        [cell.shezhi setImage:imageNamed(@"") forState:UIControlStateNormal];
        cell.shuliang.hidden = NO;
        
        
        cell.shuliang.text = model.count;
        
        if ([model.is_private integerValue]==1) {
            cell.wenjianjia.image = [UIImage imageNamed:@"私密文件夹"];
            cell.title.text = model.title ;

        }

    return cell;
    
}



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



- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(kScreenWidth, 75);
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
  
    
    YunsCell *cell = (YunsCell*)[_CollectionView cellForItemAtIndexPath:cellindexPath];
    cell.shezhi.hidden = YES;
    [cell.shezhi setImage:imageNamed(@"") forState:UIControlStateNormal];
    
    
    
    
    YunsCell *cell1 = (YunsCell*)[_CollectionView cellForItemAtIndexPath:indexPath];
    cell1.shezhi.hidden = NO;
    [cell1.shezhi setImage:imageNamed(@"选择") forState:UIControlStateNormal];
    
    YunStoraModel *model = _listAry[indexPath.row];
    self.zhujianid = model.Yunid;
    
    

    cellindexPath = indexPath;
    
    
}

- (IBAction)enterAction:(id)sender {
    
    if (_zhujianid.length ==0) {
        [MBProgressHUD showError:@"必须选择一个文件夹" toView:self.view];
        return;
    }
    
    [self yidongData:_idAry];
    
    
}

//移动接口
- (void)yidongData:(NSArray *)idAry{
    
    //    *member_id 用户的id
    //    *cloud_folder_id 档案的主键id(数组形式)
    
    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"cloud_folder_id":self.idAry,@"relationid":self.zhujianid};
    [WXDataService requestAFWithURL:Url_Cloud_moveFolder params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0){
            [MBProgressHUD showSuccess:result[@"msg"]  toView:[UIApplication sharedApplication].keyWindow];
            [self.delegate shuaxin];
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
