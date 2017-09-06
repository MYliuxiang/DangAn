//
//  PhotoViewController.m
//  WXMovie
//
//  Created by wei.chen on 15/8/10.
//  Copyright (c) 2015年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

#import "PhotoViewController.h"
#import "PhotoCollectionView.h"
#import "PhotoCell.h"
#import "yemaView.h"
#import "WenjiandeModel.h"


@interface PhotoViewController ()<LXOneViewDelegate,UIAlertViewDelegate,YeMaViewDelegate,MMCropDelegate>
@property(nonatomic,copy)NSString *img_id;


@end



@implementation PhotoViewController{

    UIView *_blueView;
    UILabel *sele_label ;
    PhotoCollectionView *photoCollectionView;
    UILabel *yeshu;
    NSInteger yema;
    CropViewController *crop;
    WenjiandeModel *model;
    
}



- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:kImgClickNotification object:nil];
    
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(cellImgClick) name:kImgClickNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(yeshuAction:) name:@"yeshu" object:nil];
        
    }
    
    return self;
}

- (void)yeshuAction:(NSNotification *)nsnot{

    NSDictionary *yeshidic = nsnot.userInfo;
    
     yeshu.text =[NSString stringWithFormat:@"%@/%d",yeshidic[@"row"],_urls.count];
    yema = [yeshidic[@"row"] integerValue];
    model = _listAry[yema-1];
}


- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.view.backgroundColor = [UIColor blackColor];
    
    //automaticallyAdjustsScrollViewInsets  是否让控制设置第一个子视图的scrollView自动向下偏移64
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    
    //2.创建列表视图
    //之前：在当前控制器中创建UICollectionView,并且在当前这个类实现协议方法
    photoCollectionView = [[PhotoCollectionView alloc] initWithFrame:self.view.bounds];
    
    photoCollectionView.urls = self.urls;
    [self.view addSubview:photoCollectionView];
    
    
    //3.滚动到指定的单元格
    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:self.index inSection:0];
    [photoCollectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:NO];
    

    yeshu = [[UILabel alloc]initWithFrame:CGRectMake(0,kScreenHeight-80, kScreenWidth, 30)];
    yeshu.textColor = [UIColor whiteColor];
    yeshu.text =@"2/5";
    yeshu.textAlignment = NSTextAlignmentCenter;
    yeshu.font = [UIFont systemFontOfSize:14];
    yeshu.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.7];
    [self.view addSubview:yeshu];
    
    
    _blueView = [[UIView alloc]initWithFrame:CGRectMake(0, yeshu.bottom,kScreenHeight, 50)];
    _blueView.backgroundColor = Color_blue;
    [self.view addSubview:_blueView];
//    _blueView.hidden = YES;
    
    
    for (int i =0; i<3; i++) {
        CGFloat ww= (kScreenWidth-30)/3.0;
        //删除按钮
        UIButton *deleButton = [[UIButton alloc]initWithFrame:CGRectMake(20+ww*i, 0,ww, _blueView.height)];
        [_blueView addSubview:deleButton];
        [deleButton setImage:[UIImage imageNamed:@"删除图标"] forState:UIControlStateNormal];
        deleButton.tag  =1000+i;
        
        if (i==0) {
            [deleButton setImage:[UIImage imageNamed:@"编辑"] forState:UIControlStateNormal];
             [deleButton addTarget:self action:@selector(bianjiButton) forControlEvents:UIControlEventTouchUpInside];
        }

        if (i==1) {
            [deleButton setImage:[UIImage imageNamed:@"删除图标"] forState:UIControlStateNormal];
            [deleButton addTarget:self action:@selector(deleButton) forControlEvents:UIControlEventTouchUpInside];
        }
        
        if (i==2) {
            [deleButton setImage:[UIImage imageNamed:@"下载图标"] forState:UIControlStateNormal];
            [deleButton addTarget:self action:@selector(xiazaiButton) forControlEvents:UIControlEventTouchUpInside];
        }
        
        
        
    }
 
//    
//    _imgurlAry = [NSMutableArray new];
//    [_imgurlAry addObjectsFromArray:_urls];
    
    
    
//    //选中数量
//    sele_label = [[UILabel alloc]initWithFrame:CGRectMake(deleButton.right, 0, kScreenWidth-100*ratioWidth, _blueView.height)];
//    sele_label.font = [UIFont systemFontOfSize:14];
//    sele_label.textColor = [UIColor whiteColor];
//    sele_label.textAlignment = NSTextAlignmentCenter;
//    sele_label.text =@"";
//    [_blueView addSubview:sele_label];
    
//    //下载按钮
//    UIButton *xiazaiButton = [[UIButton alloc]initWithFrame:CGRectMake(sele_label.right, 0, 50*ratioWidth, _blueView.height)];
//    [_blueView addSubview:xiazaiButton];
//    [xiazaiButton setImage:[UIImage imageNamed:@"下载图标"] forState:UIControlStateNormal];
//    [xiazaiButton addTarget:self action:@selector(xiazaiButton) forControlEvents:UIControlEventTouchUpInside];
    
}


#pragma mark -------------------所有点击事件--------------------------


- (void)bianjiButton{
    
    NSString *url = _urls[yema-1];
    UIImageView *view = [[UIImageView alloc]init];
    [view sd_setImageWithURL:[NSURL URLWithString:url]];
    
    crop= [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"CropViewController"];
    //    CropViewController *crop= [[CropViewController alloc] init];;
    crop.cropdelegate=self;
    //    crop.transitioningDelegate=ripple;
    //    ripple.touchPoint=self.cameraBut.frame;
    crop.adjustedImage=view.image;
    [self presentViewController:crop animated:YES completion:nil];
    
    


}

- (void)yemaButton{

    yemaView *yema11 = [[yemaView alloc]initWithtitleString:@"页码排序" textFieldPlace:@"输入" delegate:self];
    [yema11 show];
}


//下载点击事件
-(void)xiazaiButton{
 
    OneAlert* one = [[OneAlert alloc]initWithTitle:@"输入邮箱" Message:nil Placeholdet:@"输入邮箱" delegate:self];
    [one show];
    
    NSLog(@"下载");
    
}

//删除点击事件
- (void)deleButton{
    NSLog(@"删除");
    
    UIAlertView *alerview = [[UIAlertView alloc]initWithTitle:nil message:@"是否删除此文件" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alerview show];
    

    
}



//下载接口
- (void)xiazaiData:(NSArray *)idAry email:(NSString *)email{
    
    //    *member_id 用户的id
    //    *cloud_folder_id 档案的主键id(数组形式)
    
    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"cloud_img_id":idAry,@"email":email};
    
    [WXDataService requestAFWithURL:Url_Cloud_downloadFile params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
            [MBProgressHUD showSuccess:result[@"msg"]  toView:self.view];
        }else{
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}


//删除接口
- (void)delegateData:(NSArray *)idAry{
    
    //    *member_id 用户的id
    //    *cloud_folder_id 档案的主键id(数组形式)
    
    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"cloud_img_id":idAry};
    
    [WXDataService requestAFWithURL:Url_Cloud_deleteFile params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0){
            [MBProgressHUD showSuccess:result[@"msg"]  toView:self.view];
            [_urls removeObjectAtIndex:yema-1];
             [[NSNotificationCenter defaultCenter]postNotificationName:@"wenjianshanchu1" object:nil];
            if (_urls.count==0) {
                [self cellImgClick];

            }
            

        }else{
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
        }
        [photoCollectionView reloadData];
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}



#pragma mark-------------------弹出试图的代理方法------------------
- (void)clickindex:(int)index lxView:(OneAlert *)alert whiteText:(NSString *)text{
    NSLog(@"%d",index);
    
    if (index==1) {
        
        NSString *imgid = model.cloud_img_id;
        
        [self xiazaiData:@[imgid] email:text];
    }
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{

    if (buttonIndex==1) {
        NSString *imgid = model.cloud_img_id;
        [self delegateData:@[imgid]];

    }
    
}


//页码的弹出视图
- (void)clickcontentString:(NSString *)contentString lxView:(yemaView *)alert{

    
    


}


-(void)didFinishCropping:(UIImage *)finalCropImage from:(CropViewController *)cropObj{
    
    
    [WXDataService postImage:Url_thumbUpload params:nil fileData:UIImageJPEGRepresentation(finalCropImage, .3) finishBlock:^(id result) {
        
        
        if ([[result objectForKey:@"status"] integerValue] == 0) {
            
            NSString *path = result[@"result"][@"path"];
             NSString *path1 = result[@"result"][@"thumb_show"];
            
            [self editImage:path imgpath:path1];
        }
        
        //没有数据了
        if ([[result objectForKey:@"status"] integerValue] == 1) {
            
            [MBProgressHUD showError:result[@"msg"] toView:self.view];
            
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
    }];


}

//编辑文件上传的接口
- (void)editImage:(NSString *)imgid imgpath:(NSString *)imgpath{

//    _urls[yema-1];
//    
//    *cloud_img_id文件的id
//    *member_id 用户的id
//    *path 文件路径(上传文件返回的路径)
    NSString *cloud_img_id = model.cloud_img_id;

    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"cloud_img_id":cloud_img_id,@"path":imgid};
    
    [WXDataService requestAFWithURL:Url_Cloud_touchFileEdit params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
            [MBProgressHUD showSuccess:result[@"msg"]  toView:self.view];
            [crop dismissViewControllerAnimated:YES completion:nil];
            
            [_urls replaceObjectAtIndex:yema-1 withObject:imgpath];
             [[NSNotificationCenter defaultCenter]postNotificationName:@"wenjianshanchu" object:nil];
            
        }else{
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
        }
        [photoCollectionView reloadData];
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    

}



//单元格中图片点击的通知方法
- (void)cellImgClick {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


@end
