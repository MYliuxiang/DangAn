//
//  ManagementVC.h
//  DangAn
//
//  Created by lijiang on 16/5/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "CycleModel.h"
#import "NewsVC.h"
#import "OneAlert.h"
#import "AnimationAlert.h"

@interface ManagementVC : BaseViewController
{
    AnimationAlert *anialert;

}
@property (weak, nonatomic) IBOutlet UIButton *hederBtn;
@property (weak, nonatomic) IBOutlet UIView *onlineLabel;
@property (weak, nonatomic) IBOutlet UILabel *offlineLabel;
@property (weak, nonatomic) IBOutlet UIView *onelineView;
@property (weak, nonatomic) IBOutlet UIView *offlineView;
@property (weak, nonatomic) IBOutlet UIView *checkView;
@property (weak, nonatomic) IBOutlet UIView *bannerView;
@property (weak, nonatomic) IBOutlet UIButton *addNewBtn;
@property (nonatomic,retain) NSMutableArray *cycleList;
@property(nonatomic, strong)SDCycleScrollView *cycleScrollView;
@property (weak, nonatomic) IBOutlet UILabel *ZcountLabel;
@property (weak, nonatomic) IBOutlet UILabel *lcountLabel;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;

@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;



- (IBAction)addNewAC:(UIButton *)sender;
- (IBAction)borrowAC:(UIButton *)sender;

- (IBAction)guihaiAC:(UIButton *)sender;
- (IBAction)managerAC:(id)sender;
- (IBAction)baogaoAC:(UIButton *)sender;

@end
