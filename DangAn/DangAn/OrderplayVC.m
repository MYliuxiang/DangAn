//
//  OrderplayVC.m
//  DangAn
//
//  Created by 李江 on 16/8/11.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "OrderplayVC.h"
#import "DangAnDetailsVC.h"
@interface OrderplayVC ()
{
    NSArray *_imageArray;
}
@end

@implementation OrderplayVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.text = @"订单支付";
    self.automaticallyAdjustsScrollViewInsets = NO;
    _tableView.rowHeight = 140;
    _tableView.tableFooterView = [[UIView alloc]init];
    UIView *headeView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 10)];
    headeView.backgroundColor = Color_bg;
    _tableView.tableHeaderView = headeView;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _imageArray = @[@"微信按钮",@"支付宝按钮"];
    
}


- (void)back
{

    if ([AppDelegate GetAppDelegate].iszaikuandliku) {
        for (UIViewController *temp in self.navigationController.viewControllers) {
            if ([temp isKindOfClass:[DangAnDetailsVC class]]) {
                [self.navigationController popToViewController:temp animated:YES];
            }
        }
        
    } else {
    
       [self.navigationController popToRootViewControllerAnimated:YES];
    }
    
   

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        static NSString *cellone  = @"cellone";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellone];
        if (cell == nil) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellone];
            UILabel *renminbi = [[UILabel alloc]initWithFrame:CGRectMake(0, 30, kScreenWidth, 40)];
            renminbi.textColor = [UIColor blackColor];
            renminbi.textAlignment = NSTextAlignmentCenter;
            renminbi.font = [UIFont systemFontOfSize:16];
            renminbi.tag = 100;
            [cell.contentView addSubview:renminbi];
            
            UILabel *renminbi1 = [[UILabel alloc]initWithFrame:CGRectMake(0, renminbi.bottom + 30, kScreenWidth, 20)];
            renminbi1.textColor = [UIColor blackColor];
            renminbi1.font = [UIFont systemFontOfSize:14];
            renminbi1.textAlignment = NSTextAlignmentCenter;
            renminbi1.text = @"应付费用";
            [cell.contentView addSubview:renminbi1];
        }
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        UILabel *lable = (UILabel *)[cell.contentView viewWithTag:100];
        NSString *priceSting = [NSString stringWithFormat:@"￥%@",_allPrice];
        // 创建Attributed
        NSMutableAttributedString *noteStr = [[NSMutableAttributedString alloc] initWithString:priceSting];
        // 需要改变的第一个文字的位置
        NSUInteger firstLoc = [[noteStr string] rangeOfString:@"￥"].location + 1;
    
        // 需要改变的区间
        NSRange range = NSMakeRange(firstLoc, noteStr.length - firstLoc);
        // 改变颜色
        [noteStr addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor] range:range];
        // 改变字体大小及类型
        [noteStr addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Helvetica-BoldOblique" size:36] range:range];
        // 为label添加Attributed  
        [lable setAttributedText:noteStr];
        
        return cell;
    } else {
    
        static NSString *celltwo  = @"celltwo";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:celltwo];
        if (cell == nil) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:celltwo];
            
            UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake((kScreenWidth - 150) / 2.0, (140 - 40) / 2.0, 150, 40)];
            imageView.tag = 200;
            [cell.contentView addSubview:imageView];
            
            
        }
         cell.selectionStyle = UITableViewCellSelectionStyleNone;
        UIImageView *imageView = [cell.contentView viewWithTag:200];
        imageView.image = [UIImage imageNamed:_imageArray[indexPath.section - 1]];
        return cell;
    
    }

}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 10;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    
    //微信支付
    if (indexPath.section == 1) {
         [MBProgressHUD showSuccess:@"正在开发中..." toView:self.view];
    }
    //支付宝支付
    if (indexPath.section == 2) {
         [MBProgressHUD showSuccess:@"正在开发中..." toView:self.view];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
