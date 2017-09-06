//
//  lockViewController.h
//  Glock
//
//  Created by 刘家男 on 15/12/18.
//  Copyright © 2015年 刘家男. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
#import "lockView.h"
#import "YunStoraModel.h"

@interface lockViewController : BaseViewController
{
    lockView *_Lockview;

}
@property(nonatomic,strong)NSString * reset;
@property(nonatomic,strong)NSString * resetIs;
@property (nonatomic,assign) int index;
@property(nonatomic,strong)YunStoraModel *model;
@end
