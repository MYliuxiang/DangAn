//
//  YunLockView.m
//  DangAn
//
//  Created by macvivi on 16/8/21.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "YunLockView.h"

#define LINECOLOR Color_blue
#define SWHITH [UIScreen mainScreen].bounds.size.width
#define SHIGHT [UIScreen mainScreen].bounds.size.height
//CGPoint Aloc;
//CGPoint Bloc;
//int markBtn;

@implementation YunLockView

- (UIColor *)lineColor
{
    if (_lineColor == nil) {
        _lineColor = LINECOLOR;
    }
    return _lineColor;
}

- (NSMutableArray*)selectedButtons
{
    if (_selectedButtons == nil) {
        _selectedButtons = [NSMutableArray array];
    }
    return _selectedButtons;
}

- (NSArray*)buttons
{
    if (_buttons == nil) {
        // 创建9个按钮
        NSMutableArray* arrayM = [NSMutableArray array];
        
        for (int i = 0; i < 9; i++) {
            UIButton *button=[[UIButton alloc]init];
            button.tag = i;
            
            button.userInteractionEnabled = NO;
            
            // 设置按钮的背景图片
            [button setBackgroundImage:[UIImage imageNamed:@"无"] forState:UIControlStateNormal];
            [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
            [button setBackgroundImage:[UIImage imageNamed:@"红色"] forState:UIControlStateDisabled];
            
            
            [self addSubview:button];
            [arrayM addObject:button];
            
            
        }
        _buttons = arrayM;
    }
    return _buttons;
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    
    // 计算每个按钮的x 和 y
    // 设置每个按钮的frame
    CGFloat w = 60 * ratioHeight;
    CGFloat h = 60 * ratioHeight;
    // 列（和行）的个数
    int columns = 3;
    // 计算水平方向和垂直方向的间距
    CGFloat marginX = (self.frame.size.width - columns * w) / (columns + 1);
    CGFloat marginY = (self.frame.size.height - columns * h) / (columns + 1);
    
    // 计算每个按钮的x 和 y
    for (int i = 0; i < self.buttons.count; i++) {
        UIButton* button = self.buttons[i];
        
        // 计算当前按钮所在的行号
        int row = i / columns;
        // 计算当前按钮所在的列索引
        int col = i % columns;
        
        CGFloat x = marginX + col * (w + marginX);
        CGFloat y = marginY + row * (h + marginY);
        
        button.frame = CGRectMake(x, y, w, h);
    }
}
- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event
{
    // 1. 获取当前触摸的点
    UITouch* touch = touches.anyObject;
    CGPoint loc = [touch locationInView:touch.view];
    //不区分方向
    // 2. 循环判断当前触摸的点在哪个按钮的范围之内, 找到对一个的按钮之后, 把这个按钮的selected = YES
    //    for (int i = 0; i < self.buttons.count; i++) {
    //        UIButton* button = self.buttons[i];
    //        if (CGRectContainsPoint(button.frame, loc) && !button.selected) {
    //            button.selected = YES;
    //            [self.selectedButtons addObject:button];
    //            break;
    //        }
    //    }
    
    //区分方向
    for (int i = 0; i < self.buttons.count; i++) {
        UIButton* button = self.buttons[i];
        if (CGRectContainsPoint(button.frame, loc) && !button.selected) {
            button.selected = YES;
            Aloc=button.frame.origin;
            
            if (Aloc.x==Bloc.x && Aloc.y>Bloc.y) {
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_down.png"] forState:UIControlStateSelected];
                
            }else if (Aloc.x==Bloc.x && Aloc.y<Bloc.y){
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_up.png"] forState:UIControlStateSelected];
                
            }else if (Aloc.y==Bloc.y && Aloc.x>Bloc.x){
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_right.png"] forState:UIControlStateSelected];
                
            }else if (Aloc.y==Bloc.y && Aloc.x<Bloc.x){
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_left.png"] forState:UIControlStateSelected];
                
            }else if (Aloc.x>Bloc.x && Aloc.y>Bloc.y){
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_Dright.png"] forState:UIControlStateSelected];
                
            }else if (Aloc.x<Bloc.x && Aloc.y<Bloc.y){
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_Tleft.png"] forState:UIControlStateSelected];
                
            }else if (Aloc.x>Bloc.x && Aloc.y<Bloc.y){
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_Tright.png"] forState:UIControlStateSelected];
                
            }else if (Aloc.x<Bloc.x && Aloc.y>Bloc.y){
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_Dleft.png"] forState:UIControlStateSelected];
                
            }
            markBtn =i;
            
            [self.selectedButtons addObject:button];
            
            break;
        }
    }
    
    Bloc =Aloc;
    
    
}

- (void)touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event
{
    // 1. 获取当前触摸的点
    UITouch* touch = touches.anyObject;
    CGPoint loc = [touch locationInView:touch.view];
    
    self.currentPoint = loc;
    
    // 2. 循环判断当前触摸的点在哪个按钮的范围之内, 找到对一个的按钮之后, 把这个按钮的selected = YES
    //不区分方向
    //    for (int i = 0; i < self.buttons.count; i++) {
    //        UIButton* button = self.buttons[i];
    //        if (CGRectContainsPoint(button.frame, loc) && !button.selected) {
    //            button.selected = YES;
    //            [self.selectedButtons addObject:button];
    //            break;
    //        }
    //    }
    
    //区分方向
    for (int i = 0; i < self.buttons.count; i++) {
        UIButton* button = self.buttons[i];
        if (CGRectContainsPoint(button.frame, loc) && !button.selected) {
            button.selected = YES;
            Aloc=button.frame.origin;
            
            if (Aloc.x==Bloc.x && Aloc.y>Bloc.y) {
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_down.png"] forState:UIControlStateSelected];
                
            }else if (Aloc.x==Bloc.x && Aloc.y<Bloc.y){
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_up.png"] forState:UIControlStateSelected];
                
            }else if (Aloc.y==Bloc.y && Aloc.x>Bloc.x){
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_right.png"] forState:UIControlStateSelected];
                
            }else if (Aloc.y==Bloc.y && Aloc.x<Bloc.x){
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_left.png"] forState:UIControlStateSelected];
                
            }else if (Aloc.x>Bloc.x && Aloc.y>Bloc.y){
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_Dright.png"] forState:UIControlStateSelected];
                
            }else if (Aloc.x<Bloc.x && Aloc.y<Bloc.y){
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_Tleft.png"] forState:UIControlStateSelected];
                
            }else if (Aloc.x>Bloc.x && Aloc.y<Bloc.y){
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_Tright.png"] forState:UIControlStateSelected];
                
            }else if (Aloc.x<Bloc.x && Aloc.y>Bloc.y){
                [button setBackgroundImage:[UIImage imageNamed:@"蓝色"] forState:UIControlStateSelected];
                //                [self.buttons[markBtn] setBackgroundImage:[UIImage imageNamed:@"patternround_clicked_Dleft.png"] forState:UIControlStateSelected];
                
            }
            markBtn =i;
            
            [self.selectedButtons addObject:button];
            
            break;
        }
    }
    
    Bloc =Aloc;
    
    // 3. 重绘
    [self setNeedsDisplay];
}


// 手指抬起事件
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    // 1. 获取用户绘制的密码
    NSMutableString *password = [NSMutableString string];
    for (UIButton *button in self.selectedButtons) {
        [password appendFormat:@"%@", @(button.tag)];
        
    }
    
    NSLog(@"%@",password);
//    
    NSString *passwordOne =[[NSUserDefaults standardUserDefaults]objectForKey:@"passwordOne"];
    
//    //判断是否是云储存里面的设置
//    NSString *yunlock = [[NSUserDefaults standardUserDefaults]objectForKey:Yunlock];
//    
//    
    //第一步解锁
    if ([_gesture_status integerValue]==1) {//有锁进行解锁
        
        //解锁
        [self comparePassword:password];
        
    }else{//没有锁 设置锁
        
    
            //设置
            if (!passwordOne && password.length>=4) {
    
                //第一次输入
                [[NSUserDefaults standardUserDefaults]setObject:password forKey:@"passwordOne"];
                [[NSUserDefaults standardUserDefaults]synchronize];
                //保存第一次设置的手势密码
    
                if([self.delegate respondsToSelector:@selector(setPassWordNotice:)]){
                    [self.delegate setPassWordNotice:@"再次绘制进行确认"];
                }
    
                [self clear];
    
            }else if(!passwordOne&&password.length<4){
    
                if ([self.delegate respondsToSelector:@selector(setPassWordNotice:)]) {
                    [self.delegate setPassWordNotice:@"最少设置四位手势密码"];
                }
                [self clear];
    
            }else{
    
                //第二次输入
                [[NSUserDefaults standardUserDefaults]setObject:password forKey:@"passwordTwo"];
                [[NSUserDefaults standardUserDefaults]synchronize];
                //保存第二次设置的手势密码
                //[self clear];
                [self comparePassword:password];
            }
        
    
    
    }
    
    
//    if(self.index == 1){
//        
//        
//        //设置
//        if (!passwordOne && password.length>=4) {
//            
//            //第一次输入
//            [[NSUserDefaults standardUserDefaults]setObject:password forKey:@"passwordOne"];
//            [[NSUserDefaults standardUserDefaults]synchronize];
//            //保存第一次设置的手势密码
//            
//            if([self.delegate respondsToSelector:@selector(setPassWordNotice:)]){
//                [self.delegate setPassWordNotice:@"再次绘制进行确认"];
//            }
//            
//            [self clear];
//            
//        }else if(!passwordOne&&password.length<4){
//            
//            if ([self.delegate respondsToSelector:@selector(setPassWordNotice:)]) {
//                [self.delegate setPassWordNotice:@"最少设置四位手势密码"];
//            }
//            [self clear];
//            
//        }else{
//            
//            //第二次输入
//            [[NSUserDefaults standardUserDefaults]setObject:password forKey:@"passwordTwo"];
//            [[NSUserDefaults standardUserDefaults]synchronize];
//            //保存第二次设置的手势密码
//            //[self clear];
//            [self comparePassword:password];
//        }
//        
//        
//        return;
//    }
//    
//    
//    
//    //判断是否是设置还是解锁
//    if ([passwordGlock integerValue] == 0) {
//        //设置
//        if (!passwordOne && password.length>=4) {
//            
//            //第一次输入
//            [[NSUserDefaults standardUserDefaults]setObject:password forKey:@"passwordOne"];
//            [[NSUserDefaults standardUserDefaults]synchronize];
//            //保存第一次设置的手势密码
//            
//            if([self.delegate respondsToSelector:@selector(setPassWordNotice:)]){
//                [self.delegate setPassWordNotice:@"再次绘制进行确认"];
//            }
//            
//            [self clear];
//            
//        }else if(!passwordOne&&password.length<4){
//            
//            if ([self.delegate respondsToSelector:@selector(setPassWordNotice:)]) {
//                [self.delegate setPassWordNotice:@"最少设置四位手势密码"];
//            }
//            [self clear];
//            
//        }else{
//            
//            //第二次输入
//            [[NSUserDefaults standardUserDefaults]setObject:password forKey:@"passwordTwo"];
//            [[NSUserDefaults standardUserDefaults]synchronize];
//            //保存第二次设置的手势密码
//            //[self clear];
//            [self comparePassword:password];
//        }
//        
//        
//    }else if([yunlock integerValue] == 0){
//        
//        
//        //设置
//        if (!passwordOne && password.length>=4) {
//            
//            //第一次输入
//            [[NSUserDefaults standardUserDefaults]setObject:password forKey:@"passwordOne"];
//            [[NSUserDefaults standardUserDefaults]synchronize];
//            //保存第一次设置的手势密码
//            
//            if([self.delegate respondsToSelector:@selector(setPassWordNotice:)]){
//                [self.delegate setPassWordNotice:@"再次绘制进行确认"];
//            }
//            
//            [self clear];
//            
//        }else if(!passwordOne&&password.length<4){
//            
//            if ([self.delegate respondsToSelector:@selector(setPassWordNotice:)]) {
//                [self.delegate setPassWordNotice:@"最少设置四位手势密码"];
//            }
//            [self clear];
//            
//        }else{
//            
//            //第二次输入
//            [[NSUserDefaults standardUserDefaults]setObject:password forKey:@"passwordTwo"];
//            [[NSUserDefaults standardUserDefaults]synchronize];
//            //保存第二次设置的手势密码
//            //[self clear];
//            [self comparePassword:password];
//        }
//        
//        
//    }else{
//        
//        //解锁
//        [self comparePassword:password];
//    }
//    
    
    
    
    // 3. 根据控制器返回的密码判断结果, 执行不同的重绘操作
    
    //--------------------- 重绘 ---------------------------------
    
    
}

- (void)comparePassword:(NSString *)password{
    
 
    NSString * passwordOne =[[NSUserDefaults standardUserDefaults]objectForKey:@"passwordOne"];
    NSString * passwordTwo =[[NSUserDefaults standardUserDefaults]objectForKey:@"passwordTwo"];

    
    if ([_gesture_status integerValue]==1){
    
        //解锁
        if ([password isEqualToString:_gesture_password]) {
            
            [self.delegate setPassWordNotice:@"解锁成功"];
            [self clear];
            
        }else{
            [self.delegate setPassWordNotice:@"解锁失败"];
            for (UIButton *button in self.selectedButtons) {
                button.selected = NO;
                button.enabled = NO;
            }
            
            self.lineColor = [UIColor redColor];
            [self setNeedsDisplay];
            self.userInteractionEnabled = NO;
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [self clear];
                self.userInteractionEnabled = YES;
            });
            
        }
    
    }else{
    
        if ([passwordTwo isEqualToString:passwordOne]) {
             [[NSUserDefaults standardUserDefaults]setObject:password forKey:Yun_password];
            [self.delegate setPassWordNotice:@"密码设置成功"];
            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordOne"];
            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordTwo"];
            [[NSUserDefaults standardUserDefaults]synchronize];

            //设置成功 去除设置记录
            [self clear];

        }else{

            [self.delegate setPassWordNotice:@"两次密码设置不一致，请您重新设置密码"];
            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordOne"];
            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordTwo"];
            [[NSUserDefaults standardUserDefaults]synchronize];

            //设置成功 去除设置记录 重新设置

            for (UIButton *button in self.selectedButtons) {
                button.selected = NO;
                button.enabled = NO;
            }

            self.lineColor = [UIColor redColor];

            [self setNeedsDisplay];

            self.userInteractionEnabled = NO;
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [self clear];
                self.userInteractionEnabled = YES;
            });
            
        }
    
    }
    
    
    
    
//    NSString * passwordOne =[[NSUserDefaults standardUserDefaults]objectForKey:@"passwordOne"];
//    NSString * passwordTwo =[[NSUserDefaults standardUserDefaults]objectForKey:@"passwordTwo"];
//    NSString * passwordGlock =[[NSUserDefaults standardUserDefaults]objectForKey:Gexsture_status];
//    
//    if (self.index == 1) {
//        //修改密码  开始确认了
//        if ([passwordTwo isEqualToString:passwordOne]) {
//            
//            [[NSUserDefaults standardUserDefaults]setObject:password forKey:Gesture_index];
//            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordOne"];
//            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordTwo"];
//            [[NSUserDefaults standardUserDefaults]synchronize];
//            
//            [self.delegate setPassWordNotice:@"密码设置成功"];
//            
//            //设置成功 去除设置记录
//            [self clear];
//            
//        }else{
//            
//            [self.delegate setPassWordNotice:@"两次密码设置不一致，请您重新设置密码"];
//            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordOne"];
//            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordTwo"];
//            [[NSUserDefaults standardUserDefaults]synchronize];
//            
//            //设置成功 去除设置记录 重新设置
//            
//            for (UIButton *button in self.selectedButtons) {
//                button.selected = NO;
//                button.enabled = NO;
//            }
//            
//            self.lineColor = [UIColor redColor];
//            
//            [self setNeedsDisplay];
//            
//            self.userInteractionEnabled = NO;
//            
//            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//                [self clear];
//                self.userInteractionEnabled = YES;
//            });
//            
//        }
//        
//        return;
//    }
//    
//    
//    
//    
//    
//    if ([self.delegate respondsToSelector:@selector(setPassWordNotice:)]){
//        
//        if([passwordGlock integerValue] == 0){
//            
//            if ([passwordTwo isEqualToString:passwordOne]) {
//                
//                [self.delegate setPassWordNotice:@"密码设置成功"];
//                [[NSUserDefaults standardUserDefaults]setObject:password forKey:Gesture_password];
//                [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordOne"];
//                [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordTwo"];
//                [[NSUserDefaults standardUserDefaults]synchronize];
//                
//                //设置成功 去除设置记录
//                [self clear];
//                
//            }else{
//                
//                [self.delegate setPassWordNotice:@"两次密码设置不一致，请您重新设置密码"];
//                [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordOne"];
//                [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordTwo"];
//                [[NSUserDefaults standardUserDefaults]synchronize];
//                
//                //设置成功 去除设置记录 重新设置
//                
//                for (UIButton *button in self.selectedButtons) {
//                    button.selected = NO;
//                    button.enabled = NO;
//                }
//                
//                self.lineColor = [UIColor redColor];
//                
//                [self setNeedsDisplay];
//                
//                self.userInteractionEnabled = NO;
//                
//                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//                    [self clear];
//                    self.userInteractionEnabled = YES;
//                });
//                
//            }
//            
//        }else{
//            //解锁
//            if ([password isEqualToString:[[NSUserDefaults standardUserDefaults]objectForKey:Gesture_password]]) {
//                
//                [self.delegate setPassWordNotice:@"解锁成功"];
//                [self clear];
//                
//            }else{
//                [self.delegate setPassWordNotice:@"解锁失败"];
//                for (UIButton *button in self.selectedButtons) {
//                    button.selected = NO;
//                    button.enabled = NO;
//                }
//                
//                self.lineColor = [UIColor redColor];
//                [self setNeedsDisplay];
//                self.userInteractionEnabled = NO;
//                
//                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//                    [self clear];
//                    self.userInteractionEnabled = YES;
//                });
//                
//            }
//        }
//    }
}


- (void)clear
{
    // 先将所有selectedButtons中的按钮的selected 设置为NO
    for (UIButton *button in self.selectedButtons) {
        button.selected = NO;
        button.enabled = YES;
        [button setBackgroundImage:[UIImage imageNamed:@"patternround_clicked.png"] forState:UIControlStateSelected];
    }
    self.lineColor = LINECOLOR;
    
    // 移除所有的按钮
    [self.selectedButtons removeAllObjects];
    
    // 重绘
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    //    if (self.selectedButtons.count > 0) {
    //        // 需要绘图
    //    }
    
    if (self.selectedButtons.count == 0) return;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    [path setLineWidth:5.0];
    
    // 循环获取每个按钮的中心点，然后连线
    for (int i = 0; i < self.selectedButtons.count; i++) {
        UIButton *button = self.selectedButtons[i];
        if (i == 0 && self.selectedButtons.count!=1) {
            // 如果是第一个按钮, 那么就把这个按钮的中心点作为起点
            [path moveToPoint:button.center];
        } else if (self.selectedButtons.count==1){
            
            path=nil;
            
        }else{
            [path addLineToPoint:button.center];
        }
    }
    
    // 把最后手指的位置和最后一个按钮的中心点连起来
    [path addLineToPoint:self.currentPoint];
    
    // 设置线条颜色
    [self.lineColor set];
    
    
    // 渲染
    [path stroke];
    
}



@end
