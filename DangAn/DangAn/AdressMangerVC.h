//
//  AdressMangerVC.h
//  DangAn
//
//  Created by lijiang on 16/6/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "AdressModel.h"
@protocol AdressMangerVCDelegate<NSObject>

- (void)clickDic:(NSDictionary *)dic;


@end

@interface AdressMangerVC : BaseViewController<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,assign)id<AdressMangerVCDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,retain)NSMutableArray *dataList;
@property (nonatomic,assign)BOOL ischooseAdress;
@end
