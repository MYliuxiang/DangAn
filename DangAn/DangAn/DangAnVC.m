//
//  DangAnVC.m
//  DangAn
//
//  Created by 未来社区 on 16/6/14.
//  Copyright © 2016年 lijiang. All rights reserved.
//


#import "DangAnVC.h"
#import "CityModel.h"
#import "CityTableViewCell.h"
#import "BJtableView.h"
#import "NewDAView.h"
#import "WenjianVC.h"
#import "ShimiView.h"
#import "wenjianModel.h"
#import "DanganCell.h"
#import "OneAlert.h"
#import "SeleWenjianVC.h"




#define kDocumentPath [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]

@interface DangAnVC ()<NewDAViewDelegate,BJtableViewDelegate,LXOneViewDelegate,SeleWenjianVCdelegate,LXOneViewDelegate>

/** 标记是否全选 */
@property (nonatomic ,assign)BOOL isAllSelected;
@property(nonatomic,strong)UIButton *deleteButton;
@property(nonatomic,strong)NSMutableArray *dataAry;
@property(nonatomic,strong)NSMutableArray *PYAry;
@property(nonatomic,strong)NSMutableDictionary *dataDic;
@property(nonatomic,strong)NSMutableArray *deleteArrarys;
@property(nonatomic,assign)NSInteger PXtype; //排序type
@property (nonatomic,copy)NSString *listid;






@end

@implementation DangAnVC{
    
    UIButton *rmht;
    UIButton *wqht;
    
    NSMutableArray *totalArr;
    UITableView *mTableView;
    NSMutableDictionary *cityDict;//
    NSMutableArray *searchArr;//搜索到的内容
    NSMutableArray *citys;
    NSMutableArray *saveArr;//要保存的数据
    BJtableView *_bjTB;
    UIImageView *imgview1;
    UILabel *label;
    UIImageView *imgview2;
    UILabel *label2;
    UIView *blueview;
}

- (void)dealloc{
    
    
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navbarHiden = YES;
    self.navigationController.navigationBarHidden = NO;
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.text = self.DAtitle;
    //    [self addrighttitleString:@"选择"];
    self.title =self.DAtitle;
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self _InitView];
    
//    totalArr = [[NSMutableArray alloc] initWithCapacity:10];
   
//    citys = [[NSMutableArray alloc] init];
//    searchArr = [[NSMutableArray alloc] init];
    saveArr = [[NSMutableArray alloc] init];


    
    _tableView.allowsMultipleSelectionDuringEditing = YES;
    
    [self _LoaddataView:@"1"];
    
    self.PXtype =1; //默认文件名称
    
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"编辑" style:UIBarButtonItemStyleDone target:self action:@selector(edit)];
    [[UINavigationBar appearance] setTintColor: Color_blue];
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
                                                           Color_blue, NSForegroundColorAttributeName,
                                                           nil, nil,
                                                           [UIFont fontWithName:@"HelveticaNeue-CondensedBlack" size:17], NSFontAttributeName, nil]];
    
    
    
    //底部视图
    blueview = [[UIView alloc]initWithFrame:CGRectMake(0,kScreenHeight, self.view.frame.size.width, 50)];
    blueview.backgroundColor = Color_blue;
    [self.view addSubview:blueview];
    
    
    //移动
    UILabel *yidong = [[UILabel alloc]initWithFrame:CGRectMake(10*ratioWidth, 0,50*ratioWidth, blueview.height)];
    yidong.textColor = [UIColor whiteColor];
    yidong.text = @"已选";
    yidong.textAlignment = NSTextAlignmentCenter;
    yidong.font = [UIFont systemFontOfSize:14];
    yidong.tag = 400;
    [blueview addSubview:yidong];
    
    
    
    
    //选中
    UIButton *sebutton = [[UIButton alloc]initWithFrame:CGRectMake(yidong.right+20*ratioWidth,15/2,100*ratioWidth,35 )];
    sebutton.layer.masksToBounds = YES;
    sebutton.layer.cornerRadius = 5;
    sebutton.layer.borderWidth = 0.5;
    sebutton.layer.borderColor = [UIColor whiteColor].CGColor;
    [sebutton setTitle:@"移动到" forState:UIControlStateNormal];
    [sebutton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    sebutton.titleLabel.font = [UIFont systemFontOfSize:14];
    [blueview addSubview:sebutton];
    sebutton.tag = 401;
    [sebutton addTarget:self action:@selector(deleteArr:) forControlEvents:UIControlEventTouchUpInside];
    
    
    /** 底部删除按钮 */
    UIButton *deleteButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [blueview addSubview:deleteButton];
    deleteButton.tag = 402;
    [deleteButton setImage:imageNamed(@"删除图标") forState:UIControlStateNormal];
    [deleteButton setFrame:CGRectMake(sebutton.right+20*ratioWidth,0, 50*ratioWidth, blueview.height)];
    [deleteButton addTarget:self action:@selector(deleteArr:) forControlEvents:UIControlEventTouchUpInside];

    
    
    //底部下载按钮
    
    UIButton *xiazaiButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [blueview addSubview:xiazaiButton];
    xiazaiButton.tag = 403;
    [xiazaiButton setImage:imageNamed(@"下载图标") forState:UIControlStateNormal];
    [xiazaiButton setFrame:CGRectMake(deleteButton.right+20*ratioWidth,0, 50*ratioWidth, blueview.height)];
    [xiazaiButton addTarget:self action:@selector(deleteArr:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    _tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(downLoad)];
    [_tableView.mj_header beginRefreshing];
    
    
    UIButton *tianjia = [[UIButton alloc]initWithFrame:CGRectMake(kScreenWidth-80,kScreenHeight-64-120,60,60)];
    [tianjia setImage:[UIImage imageNamed:@"添加"] forState:UIControlStateNormal];
    [self.view addSubview:tianjia];
    [tianjia addTarget:self action:@selector(tainjiaAction:) forControlEvents:UIControlEventTouchUpInside];

    
    
    CGRect backframe = CGRectMake(0,0,54,30);
    UIButton* backButton= [[UIButton alloc] initWithFrame:backframe];
    [backButton setImage:[UIImage imageNamed:@"返回箭头.png"] forState:UIControlStateNormal];
    [backButton setTitle:@"返回" forState:UIControlStateNormal];
    backButton.titleLabel.font=[UIFont systemFontOfSize:17];
    [backButton setTitleColor:Color_blue forState:UIControlStateNormal];
    [backButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -5)];
    [backButton addTarget:self action:@selector(back11) forControlEvents:UIControlEventTouchUpInside];
 
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    
    
    
    
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(shuaxin) name:@"wenjianshanchu" object:nil];
    
    
    
}




- (void)back11{

    if (_type==2) {
        [self.navigationController popToRootViewControllerAnimated:YES];
        
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    
    }
}


- (void)downLoad{
    [self _LoaddataView:@"1"];

}



//添加新的文件
- (void)tainjiaAction:(UIButton *)button{

    NewDAView *one = [[NewDAView alloc]initWithtitleString:@"档案封面与名称" textFieldPlace:@"输入档案夹名称" delegate:self];
    one.tag = 300;
    one.delegate = self;
    [one show];

}




//数据请求
- (void)_LoaddataView:(NSString *)order{
    
    NSDictionary *params = @{@"relationid":self.DAid,@"member_id":[UserDefaults objectForKey:Member_id],@"order":order};
    
    
    
    [WXDataService requestAFWithURL:Url_Cloud_listFolder params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        
        if ([[result objectForKey:@"status"] integerValue] == 0){
            NSDictionary *resultDic = result[@"result"];
            NSArray *listAry = resultDic[@"list"];
            
            self.dataAry = [NSMutableArray new];
            self.PYAry = [NSMutableArray new];
            self.dataDic = [NSMutableDictionary new];
            cityDict = [[NSMutableDictionary alloc] init];
            
            
            [listAry enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                wenjianModel *model = [[wenjianModel alloc]initWithDataDic:obj];
                NSString *PY_string = [self firstCharactor:model.title];
                model.PY_string = PY_string;
                [self.dataAry addObject:model];
            }];

            if (_PXtype==1) {
                [self getAllCitys];
            }else if (_PXtype==2){
                [self getAlltime];
            }
            
            [_tableView.mj_header endRefreshing];

        }else if([[result objectForKey:@"status"] integerValue] == 1){ //无数据时
            
            self.dataAry = [NSMutableArray new];
            self.PYAry = [NSMutableArray new];
            self.dataDic = [NSMutableDictionary new];
            cityDict = [[NSMutableDictionary alloc] init];
        
            [_tableView.mj_header endRefreshing];
        }
        
        [_tableView reloadData];
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        [_tableView.mj_header endRefreshing];
    }];
    
}

//删除接口
- (void)delegateData:(NSArray *)idAry{
    
//    *member_id 用户的id
//    *cloud_folder_id 档案的主键id(数组形式)

    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"cloud_folder_id":idAry};
  
    [WXDataService requestAFWithURL:Url_Cloud_deleteFolder params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0){
             [MBProgressHUD showSuccess:result[@"msg"]  toView:self.view];
            [_tableView.mj_header beginRefreshing];
        }else{
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}


//移动接口
- (void)yidongData:(NSArray *)idAry{
    
    //    *member_id 用户的id
    //    *cloud_folder_id 档案的主键id(数组形式)
    
    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"cloud_folder_id":idAry,@"relation":@""};
    [WXDataService requestAFWithURL:Url_Cloud_downloadFolder params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
            [self.tableView reloadData];
        }else{
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}



//下载接口
- (void)xiazaiData:(NSArray *)idAry email:(NSString *)email{
    
    //    *member_id 用户的id
    //    *cloud_folder_id 档案的主键id(数组形式)
    
    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"cloud_folder_id":idAry,@"email":email};
   
    [WXDataService requestAFWithURL:Url_Cloud_downloadFolder params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
            [MBProgressHUD showSuccess:result[@"msg"]  toView:self.view];
            [self.tableView reloadData];
        }else{
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}







-(void)edit
{
    /** 每次点击 rightBarButtonItem 都要取消全选 */
    self.isAllSelected = NO;
    
    NSString *string = !self.tableView.editing?@"取消":@"编辑";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:string style:UIBarButtonItemStyleDone target:self action:@selector(edit)];
    
    
    
    CGRect backframe = CGRectMake(0,0,54,30);
    UIButton* backButton= [[UIButton alloc] initWithFrame:backframe];
    [backButton setImage:[UIImage imageNamed:@"返回箭头.png"] forState:UIControlStateNormal];
    [backButton setTitle:@"返回" forState:UIControlStateNormal];
    backButton.titleLabel.font=[UIFont systemFontOfSize:17];
    [backButton setTitleColor:Color_blue forState:UIControlStateNormal];
    [backButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -5)];
    [backButton addTarget:self action:@selector(back11) forControlEvents:UIControlEventTouchUpInside];
    
    
    if (_dataAry.count) {

        self.navigationItem.leftBarButtonItem = !self.tableView.editing? [[UIBarButtonItem alloc]initWithTitle:@"全选" style:UIBarButtonItemStyleDone target:self action:@selector(selectAll)]:[[UIBarButtonItem alloc] initWithCustomView:backButton];
        CGFloat height = !self.tableView.editing?50:0;
        
        
        [UIView animateWithDuration:0.25 animations:^{
            blueview.frame = CGRectMake(0, self.view.frame.size.height - height, self.view.frame.size.width, 50);
        }];
        
        
    }else{
        
        
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
        self.navigationItem.rightBarButtonItem = nil;
        
        [UIView animateWithDuration:0.25 animations:^{
            blueview.frame = CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, 40);
            
        }];
    }
    
    self.tableView.editing = !self.tableView.editing;
    
}
#pragma mark - 多选删除

-(void)deleteArr:(UIButton *)button
{
    
    _deleteArrarys = [NSMutableArray array];
    for (NSIndexPath *indexPath in self.tableView.indexPathsForSelectedRows) {
        
        NSArray *keys = [self getCityDictAllKeys];
        NSString *key = keys[indexPath.section];
        NSArray *values = cityDict[key];
        wenjianModel *model = values[indexPath.row];
        [_deleteArrarys addObject:model.cloud_folder_id];
    }
    
    if (_deleteArrarys.count ==0) {
        return;
    }
    
    [UIView animateWithDuration:0 animations:^{
        
        if (button.tag == 402) {
            //调用删除的接口
            [self delegateData:_deleteArrarys];
        }
        
        if (button.tag == 401) {
            //移动
            SeleWenjianVC *seleVC = [[SeleWenjianVC alloc]init];
            seleVC.idAry = _deleteArrarys;
            seleVC.delegate =self;
            [self.navigationController pushViewController:seleVC animated:YES];
            
        
        }
        
        if (button.tag == 403) {
            
            OneAlert* one = [[OneAlert alloc]initWithTitle:@"输入邮箱" Message:nil Placeholdet:@"输入邮箱" delegate:self];
            [one show];
        
        }
      
       
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.25 animations:^{
            
            if (!_dataAry.count) {
                self.navigationItem.leftBarButtonItem = nil;
                self.navigationItem.rightBarButtonItem = nil;
                blueview.frame = CGRectMake(0, kScreenHeight, self.view.frame.size.width, 50);
                
                
            }
            
        } completion:^(BOOL finished) {
            /** 考虑到全选之后 ，反选几个 再删除  需要将全选置为NO, */
            self.isAllSelected = NO;
//            self.tableView.editing = NO;
//            [self edit];
//            NSString *string = self.tableView.editing?@"取消":@"编辑";
//            self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:string style:UIBarButtonItemStyleDone target:self action:@selector(edit)];
            
        }];
    }];
    
    
}

#pragma mark - 全选删除
-(void)selectAll
{
    
    self.isAllSelected = !self.isAllSelected;
    
    NSArray *keys = [self getCityDictAllKeys];//获得多有的key值
    for (int a=0; a<keys.count;a++) {
        NSString *ket_string = keys[a];
        NSArray *aryvalue= cityDict[ket_string];
        for (int i = 0; i<aryvalue.count; i++) {
            NSIndexPath *indexPath = [NSIndexPath indexPathForItem:i inSection:a];
            
            
            if (self.isAllSelected) {
                [self.tableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionNone];
            }else{//反选
                
                [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
                
            }
        }
        
    }
    
}


- (void)_InitView{
    
    [self.segmmentVC addTarget:self action:@selector(segmmentAction:) forControlEvents:UIControlEventValueChanged];
    
}



#pragma mark--------------点击事件----------------
- (void)segmmentAction:(UISegmentedControl *)Seg{
    
    NSInteger Index = Seg.selectedSegmentIndex;
    
    switch (Index)
    {
        case 0:
            _PXtype =1;
            [self getAllCitys];
            [_tableView reloadData];
            break;
        case 1:
            _PXtype =2;
            [self getAlltime];
            [_tableView reloadData];
            break;
        default:
            break;
    }
}

//点击事件
- (void)section:(int)section row:(int)alert{
    
    if (section==0) {
        if (alert==0) {
            [_bjTB setTop:kScreenHeight];
            NewDAView *one = [[NewDAView alloc]initWithtitleString:@"封面档案与名称" textFieldPlace:@"输入档案夹名称" delegate:self];
            one.tag = 200;
            [one show];
        }
        
        if (alert==1) {
            OneAlert* one = [[OneAlert alloc]initWithTitle:@"输入邮箱" Message:nil Placeholdet:@"输入邮箱" delegate:self];
            [one show];
            
            NSLog(@"下载");
            
        }
    }
    
    if (section==1) {
        if (alert==0) {

                [_bjTB removeFromSuperview];
        }
    }
    
    
}




- (void)shuaxin{
    
    
    [self edit];
    [_tableView.mj_header beginRefreshing];
    
}


#pragma mark-------------------弹出试图的代理方法------------------
- (void)clickindex:(int)index lxView:(OneAlert *)alert whiteText:(NSString *)text{
    NSLog(@"%d",index);
 
        if (index==1) {
            [self xiazaiData:_deleteArrarys email:text];
        }
}

- (void)clickcontentString:(NSString *)contentString lxView:(NewDAView *)alert image:(UIImage *)image{
    
    
    if (image==nil) {
        [MBProgressHUD showError:@"封面图片不能为空" toView:self.view];
        return;
    }
    
    
    if (alert.tag == 300) {

        [self upimage:image name:contentString newtag:300];
        
    }else{
        [self upimage:image name:contentString newtag:200];
    }
    
    
    
}


//
//#pragma mark-------------------弹出试图的代理方法------------------
//- (void)clickindex:(int)index lxView:(OneAlert *)alert whiteText:(NSString *)text{
//    NSLog(@"%d",index);
//    
//    if (index==1) {
//        
//        NSArray *deleteArrarys = [_seleDic allValues];
//        
//        [self xiazaiData:deleteArrarys email:text];
//    }
//}





//上传图片
- (void)upimage:(UIImage *)image name:(NSString *)name newtag:(NSInteger)tag{

    [WXDataService postImage:Url_thumbUpload params:nil fileData:UIImageJPEGRepresentation(image, .3) finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0) {
            
            NSString *path = result[@"result"][@"path"];
            if (tag ==200) {
                 [self chagename:name imageName:path];
            }else{
            
                [self createWenjian:name imageName:path];
                
            }
            
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
    }];

}


//更改名字
- (void)chagename:(NSString *)name imageName:(NSString *)imageName{

    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"cloud_folder_id":self.listid,@"title":name,@"thumb":imageName};
    
    [WXDataService requestAFWithURL:Url_Cloud_renameFolder params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0){
            [MBProgressHUD showSuccess:result[@"msg"]  toView:self.view];
            [_tableView.mj_header beginRefreshing];
        }else{
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    

}


//创建文件
- (void)createWenjian:(NSString *)name imageName:(NSString *)imageName{

    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],
                             @"relationid":self.DAid,
                             @"title":name,
                             @"thumb":imageName};
    
    
    [WXDataService requestAFWithURL:Url_Cloud_makeFolder params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0){
            [MBProgressHUD showSuccess:result[@"msg"]  toView:self.view];
            [_tableView.mj_header beginRefreshing];
        }else{
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
}



//选出汉字的首字母（大写）

- (NSString *)firstCharactor:(NSString *)aString
{
    //转成了可变字符串
    NSMutableString *str = [NSMutableString stringWithString:aString];
    //先转换为带声调的拼音
    CFStringTransform((CFMutableStringRef)str,NULL, kCFStringTransformMandarinLatin,NO);
    //再转换为不带声调的拼音
    CFStringTransform((CFMutableStringRef)str,NULL, kCFStringTransformStripDiacritics,NO);
    //转化为大写拼音
    NSString *pinYin = [str capitalizedString];

    NSString *zimu = @"QWERTYUIOPASDFGHJKLZXCVBNM";

    NSString *py = [pinYin substringToIndex:1];
    
    
    NSString *PINY;
    
    if ([zimu rangeOfString:py].location != NSNotFound) {
        
        //条件为真，表示字符串searchStr包含一个自字符串substr
        
        PINY = py;
        
        
    }else
    {
        
        PINY = @"#";
        
        //条件为假，表示不包含要检查的字符串
    }

    
    
    
    //获取并返回首字母
    return PINY;
}


#pragma mark - 将首字母相同的放在一起（这个逻辑很溜）
- (void)getAllCitys
{
    cityDict = [NSMutableDictionary new];
    //遍历
    for (wenjianModel *model in _dataAry) {
        NSMutableArray *letterArr = cityDict[model.PY_string];
        //判断数组里是否有元素，如果为nil，则实例化该数组，
        if (letterArr == nil) {
            letterArr = [[NSMutableArray alloc] init];
            [cityDict setObject:letterArr forKey:model.PY_string];
        }
        [letterArr addObject:model];
    }
}


//将时间放在一起
- (void)getAlltime
{
      cityDict = [NSMutableDictionary new];
    //遍历
    for (wenjianModel *model in _dataAry) {
        NSMutableArray *letterArr = cityDict[model.time];
        //判断数组里是否有元素，如果为nil，则实例化该数组，
        if (letterArr == nil) {
            letterArr = [[NSMutableArray alloc] init];
            [cityDict setObject:letterArr forKey:model.time];
        }
        [letterArr addObject:model];
    }
}




#pragma mark - 获得所有的key值并排序，并返回排好序的数组
- (NSArray *)getCityDictAllKeys
{
    //获得cityDict字典里的所有key值
    NSArray *keys = [cityDict allKeys];
    //按升序进行排序（A B C D……）
    return [keys sortedArrayUsingSelector:@selector(compare:)];
}

#pragma mark - tableView--delegate
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 25;
}

//引入索引的一个代理方法
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    NSArray *keys = [self getCityDictAllKeys];//获得多有的key值
    return keys;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSArray *keys = [self getCityDictAllKeys];//获得多有的key值
    return keys[section];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSArray *keys = [self getCityDictAllKeys];//获得多有的key值
    return keys.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *keys = [self getCityDictAllKeys];//获得多有的key值
    NSString *keyStr = keys[section];
    NSArray *array = [cityDict objectForKey:keyStr];//所有section下key值所对应的value的值
    return array.count;
}
//返回cell的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"DanganCell";
    DanganCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    
    if (cell == nil) {
        cell =(DanganCell *)[[[NSBundle mainBundle]loadNibNamed:@"DanganCell" owner:nil options:nil]lastObject];
    }
//    
//    if (_tableView.editing == YES) {
//        
//        cell.selectionStyle = UITableViewCellSelectionStyleNone;
//    }
//    
//  
    
    NSArray *keys = [self getCityDictAllKeys];//获得多有的key值
    NSString *keyStr = keys[indexPath.section];
    NSArray *array = [cityDict objectForKey:keyStr];//所有section下key值所对应的value的值
    wenjianModel *model = [array objectAtIndex:indexPath.row];
    
    [cell.imgview sd_setImageWithURL:[NSURL URLWithString:model.img_show]  placeholderImage:nil];
    cell.title.text = model.title;
    cell.riqi.text = model.time;
    [cell.count setImage:imageNamed(@"曲别针") forState:UIControlStateNormal];
    [cell.count setTitle:model.count forState:UIControlStateNormal];
    
    
    
    return cell;
}
//点击每个cell触发的事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (self.tableView.editing) {
        
        
        
    }else{
        
        NSArray *keys = [self getCityDictAllKeys];//获得多有的key值
        NSString *keyStr = keys[indexPath.section];
        NSArray *array = [cityDict objectForKey:keyStr];//所有section下key值所对应的value的值
        wenjianModel *model = [array objectAtIndex:indexPath.row];
        
        WenjianVC *vc  = [[WenjianVC alloc]init];
        vc.zhujianid = model.cloud_folder_id;
        vc.title = model.title;
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    
    
    
}


-(NSArray<UITableViewRowAction*>*)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewRowAction *rowAction = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDefault
                                                                         title:@"编辑" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
                                                                             [UIView animateWithDuration:0.3 animations:^{
                                                                                 
                                                                                 _bjTB= [[BJtableView alloc]initWithFrame:CGRectMake(0,0, kScreenWidth, kScreenHeight)];
                                                                                 [[UIApplication sharedApplication].keyWindow addSubview:_bjTB];
                                                                                 _bjTB.dataAry = @[@"修改封面与名称",@"打包下载",@"删除"];
                                                                                 _bjTB.delegate =self;
                                                                                 self.automaticallyAdjustsScrollViewInsets = NO;
                                                                                 _bjTB.type = 2;
                                                                                 
                                                                             } completion:^(BOOL finished) {
                                                                                 
                                                                             }];
                                                                             
                                                                             
                                                                         }];
    
    rowAction.backgroundColor = Color(252,167, 6);
    NSArray *arr = @[rowAction];
    
    NSArray *keys = [self getCityDictAllKeys];//获得多有的key值
    NSString *keyStr = keys[indexPath.section];
    NSArray *array = [cityDict objectForKey:keyStr];//所有section下key值所对应的value的值
    wenjianModel *model = [array objectAtIndex:indexPath.row];
    self.listid = model.cloud_folder_id;
    
    
    return arr;
}






#pragma mark - 数据请求
- (void)requestDataFromServer
{
    NSString *urlStr = [NSString stringWithFormat:@"http://apis.baidu.com/baidunuomi/openapi/cities"];
    NSMutableDictionary *headDict = [[NSMutableDictionary alloc] init];
    [headDict setObject:@"2304cdaee07aa52690475edf3776cce6" forKey:@"apikey"];
    
    [WXDataService requestAFWithURL:urlStr params:nil httpMethod:@"GET" isHUD:NO finishBlock:^(id result) {
        
        NSDictionary *dict = result;
        NSArray *array = [dict objectForKey:@"cities"];
        saveArr = [NSMutableArray arrayWithArray:array];
        for (NSDictionary *mDictionary in array) {
            CityModel *model = [[CityModel alloc] init];
            model.city_id = [mDictionary objectForKey:@"city_id"];
            model.city_name = [mDictionary objectForKey:@"city_name"];
            model.city_pinyin = [mDictionary objectForKey:@"city_pinyin"];
            model.short_name = [mDictionary objectForKey:@"short_name"];
            model.short_pinyin = [mDictionary objectForKey:@"short_pinyin"];
            NSString *letterStr = [[model.city_pinyin substringWithRange:NSMakeRange(0, 1)] uppercaseString];//获取首字母并转换成大些
            model.m_letter = letterStr;
            [totalArr addObject:model];
        }
        if (totalArr.count > 0) {
            [self SaveToLocal];
        }
        citys = totalArr;
        //将首字母相同的放在一起
//        [self getAllCitys];
        [mTableView reloadData];
        
        
    } errorBlock:^(NSError *error) {
        
    }];
}
#pragma mark - 保存到本地
- (void)SaveToLocal {
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:10];
    for (NSDictionary *dict in saveArr) {
        [array addObject:dict];
    }
    NSString *name = [NSString stringWithFormat:@"MyCitylist.plist"];
    [array writeToFile:[kDocumentPath stringByAppendingPathComponent:name] atomically:YES];
}
#pragma mark - 获取本地数据
- (void)LoadFromLocal {
    [totalArr removeAllObjects];
    [saveArr removeAllObjects];
    NSString *name = [NSString stringWithFormat:@"MyCitylist.plist"];
    NSMutableArray *array = [NSMutableArray arrayWithContentsOfFile:[kDocumentPath stringByAppendingPathComponent:name]];
    for (NSDictionary *info in array) {
        [saveArr addObject:info];
    }
    for (NSDictionary *mDictionary in saveArr) {
        CityModel *model = [[CityModel alloc] init];
        model.city_id = [mDictionary objectForKey:@"city_id"];
        model.city_name = [mDictionary objectForKey:@"city_name"];
        model.city_pinyin = [mDictionary objectForKey:@"city_pinyin"];
        model.short_name = [mDictionary objectForKey:@"short_name"];
        model.short_pinyin = [mDictionary objectForKey:@"short_pinyin"];
        NSString *letterStr = [[model.city_pinyin substringWithRange:NSMakeRange(0, 1)] uppercaseString];//获取首字母并转换成大些
        model.m_letter = letterStr;
        [totalArr addObject:model];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

