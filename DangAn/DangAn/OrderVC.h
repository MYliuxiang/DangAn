//
//  OrderVC.h
//  DangAn
//
//  Created by 李江 on 16/6/10.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface OrderVC : BaseViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (nonatomic,retain)NSMutableArray *dataList;
@property (nonatomic,assign)NSString *typePush; // 1是已完成 2未完成
@property (nonatomic,assign)NSString *count1; //已完成
@property (nonatomic,assign)NSString *count2; //未完成
@end
