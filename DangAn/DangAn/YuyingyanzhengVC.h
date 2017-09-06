//
//  YuyingyanzhengVC.h
//  DangAn
//
//  Created by 李江 on 16/7/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "D3RecordButton.h"

@interface YuyingyanzhengVC : BaseViewController<D3RecordDelegate>{
    AVAudioPlayer *play;
}

//@property (weak, nonatomic) IBOutlet D3RecordButton*luying_button;
@property (weak, nonatomic) IBOutlet UILabel *shuzi;

@property (weak, nonatomic) IBOutlet D3RecordButton *luy_button;
@property (weak, nonatomic) IBOutlet D3RecordButton *btn;
@property (weak, nonatomic) IBOutlet UILabel *yuyintitle;
@property(nonatomic,assign)NSInteger type;


@end
