//
//  CommentVC.h
//  DangAn
//
//  Created by Viatom on 16/7/27.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface CommentVC : BaseViewController<UITextViewDelegate>
@property (nonatomic,copy) NSString *newsID;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIButton *commentBtn;
- (IBAction)sendAC:(UIButton *)sender;
@end
