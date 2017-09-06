//
//  LS.h
//  DangAn
//
//  Created by lijiang on 16/5/30.
//  Copyright © 2016年 Viatom. All rights reserved.
//

#ifndef LS_h
#define LS_h




#import "ZLPhoto.h"
#import "PhotoViewController.h"
#import "TouristCollectionViewCell.h"
#import "LSPhotoCell.h"
#import "UIView+ViewController.h"
#import "MAImagePickerController.h"
#import "FileMangerVC.h"
#import "BuyAlert.h"
#import "OneAlert.h"


//云存储设置解锁

#define Yunlock                                        @"Yunlock"
#define Yun_password                                   @"Yun_password"

// 图片名字
#define imageNamed(name) [UIImage imageNamed:name]


#define Url_Cloud_makeArchives          MAINURL@"Cloud_makeArchives"//2.1.1 创建新档案
#define Url_Cloud_listArchives          MAINURL@"Cloud_listArchives"//2.1.2 档案列表
#define Url_Cloud_renameArchives        MAINURL@"Cloud_renameArchives"// 2.1.3 重命名档案
#define Url_Cloud_deleteArchives        MAINURL@"Cloud_deleteArchives" //2.1.4 删除档案
#define Url_Cloud_downloadArchives      MAINURL@"Cloud_downloadArchives"//2.1.5 下载档案
#define Url_Cloud_toPrivate             MAINURL@"Cloud_toPrivate" //2.1.4 档案设为私密
#define Url_Cloud_toPublic              MAINURL@"Cloud_toPublic" //2.1.5 档案设为公开
#define Url_Cloud_makeFolder            MAINURL@"Cloud_makeFolder" //2.2.1 创建文件夹
#define Url_Cloud_moveFolder            MAINURL@"Cloud_moveFolder" //2.2.6 移动文件夹

#define Url_Cloud_listFolder            MAINURL@"Cloud_listFolder" //2.2.2 文件夹列表
#define Url_Cloud_renameFolder          MAINURL@"Cloud_renameFolder" //2.2.3 重命名文件夹
#define Url_Cloud_deleteFolder          MAINURL@"Cloud_deleteFolder" //2.2.4 删除文件夹
#define Url_Cloud_downloadFolder        MAINURL@"Cloud_downloadFolder" //2.2.5 下载文件夹
#define Url_Cloud_touchFile             MAINURL@"Cloud_touchFile" //2.3.1 添加文件
#define Url_Cloud_listFile              MAINURL@"Cloud_listFile" //2.3.2 文件列表
#define Url_Cloud_deleteFile            MAINURL@"Cloud_deleteFile" //2.3.3 文件删除
#define Url_Cloud_downloadFile          MAINURL@"Cloud_downloadFile" //2.3.4文件下载
#define Url_Other_getGesturePassword    MAINURL@"Other_getGesturePassword" //5.14 手势信息
#define Url_Other_setGesturePassword    MAINURL@"Other_setGesturePassword" //5.13 设置手势信息
#define Url_Cloud_touchFileEdit         MAINURL@"Cloud_touchFileEdit" //2.3.1.1 修改文件
#define Url_Cloud_sortFile              MAINURL@"Cloud_sortFile" //排序
#define Url_Other_setVoicePassword      MAINURL@"Other_setVoicePassword" //5.13 设置语音密码
#define Url_Other_getVoicePassword      MAINURL@"Other_getVoicePassword" //5.14 获取语音
#define Url_Other_checkVoicePassword    MAINURL@"Other_checkVoicePassword" //5.15 判断语音是否正确
#define Url_Other_getVoiceString        MAINURL@"Other_getVoiceString" //获取语音密码


#define Url_YuYingUpload    @"http://59.110.64.231:9000/index.php?m=Api&c=Other&a=upload"  //5.15 语音上传
#define Url_Upload          @"http://59.110.64.231:9000/index.php?m=Api&c=Cloud&a=upload"



#endif /* LS_h */
