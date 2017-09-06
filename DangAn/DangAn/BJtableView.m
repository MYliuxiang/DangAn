//
//  BJtableView.m
//  DangAn
//
//  Created by 未来社区 on 16/6/14.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BJtableView.h"
#import "BJCell.h"

@implementation BJtableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self  setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.5]];
        [self _InitView];
        
    }
    return self;
}


- (void)_InitView{
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0,kScreenHeight/2.0, kScreenWidth,kScreenHeight/2.0)style:UITableViewStyleGrouped];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = Color_bg;
    [self addSubview:_tableView];
    _tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectMake(0, 0,kScreenWidth,0.1)];
    _tableView.bounces = NO;
}


- (void)layoutSubviews{
    [super layoutSubviews];
    
        _tableView.frame = CGRectMake(0,kScreenHeight-55*(self.dataAry.count+1)-10-49, kScreenWidth, 55*(self.dataAry.count+1)+10+49);
    
    if (self.type ==2) {
        _tableView.frame = CGRectMake(0,kScreenHeight-55*(self.dataAry.count+1)-10, kScreenWidth, 55*(self.dataAry.count+1)+10);
    }

}

- (void)setDataAry:(NSArray *)dataAry{
    _dataAry = dataAry;
    [_tableView reloadData];
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 2;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
       return self.dataAry.count;
    }
    
    if (section==1) {
        return 1;
    }
    return 0;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *identify = @"BJCell";
    BJCell *cell = [_tableView dequeueReusableCellWithIdentifier:identify];
    if (cell==nil) {
        cell = (BJCell *)[[[NSBundle mainBundle]loadNibNamed:@"BJCell" owner:nil options:nil]lastObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    if (indexPath.section==0) {
        cell.title.text = self.dataAry[indexPath.row];
    }
    if (indexPath.section==1) {
        cell.title.text = @"取消";
    }

    return cell;
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{

    return 0.1;

}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    if (section==1) {
        return 10;
    }

    return 0.1;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self.delegate section:indexPath.section row:indexPath.row];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 55;

}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    if (_type==2) {

        [self removeFromSuperview];
        
        
    }else{
    
        
        [UIView animateWithDuration:0.3 animations:^{
            [self setTop:1000];
            [self.delegate section:10000 row:10000];
        } completion:^(BOOL finished) {
            
        }];
        
        
    }
    

   

}

@end
