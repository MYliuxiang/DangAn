//
//  NewsVC.h
//  DangAn
//
//  Created by 刘翔 on 16/6/5.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "NewsDetailModel.h"
#import "CommentModel.h"

@interface NewsVC : BaseViewController<UITableViewDelegate,UITableViewDataSource,UIWebViewDelegate>
{
    int _pageIndex;
    BOOL _isdownLoad;

}
@property (nonatomic,copy) NSString *newsId;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *webHeightlayout;

@property (weak, nonatomic) IBOutlet UILabel *placeLabel;
@property (strong, nonatomic) IBOutlet UIView *footerView;
@property (weak, nonatomic) IBOutlet UIButton *commentBtn;
- (IBAction)commentAC:(UIButton *)sender;

@property (nonatomic,retain)NSMutableArray *dataList;
@property (nonatomic,retain)NewsDetailModel *model;
@property (nonatomic,copy) NSString *total;

@end
