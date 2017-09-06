//
//  LX.h
//  DangAn
//
//  Created by lijiang on 16/5/30.
//  Copyright © 2016年 Viatom. All rights reserved.
//

#ifndef LX_h
#define LX_h

//#import "SDCycleScrollView.h"
#import "SDCycleScrollView.h"

#endif /* LX_h */


#import "MyColor.h"
#import "UITableViewCell+WHC_AutoHeightForCell.h"
#import "UIView+SDAutoLayout.h"
#import "DAModel.h"
#import "ScanModel.h"
#import "ThumbModel.h"
#import "BJtableView.h"
#import "AddNewVC.h"
#import "ZFActionSheet.h"
#import "SugressAlert.h"
#import "ScanVC.h"
#import "LXSearchVC.h"




#define LXCamScan  @"LXCamScanImage"

#define NoticeScanAdd @"NoticeScanAdd"

#define Url_index  MAINURL@"Index_index" //首页

#define Url_detail  MAINURL@"Index_detail" //新闻详情

#define Url_postComment  MAINURL@"Index_postComment" // 发表新闻评论

#define Url_Archive_manage  MAINURL@"Archive_manage" // 自主管理首页

#define Url_Archive_qrCodeAdd  MAINURL@"Archive_qrCodeAdd" // 添加新档案时扫描条形码调用


#define Url_Archive_fileListOnline  MAINURL@"Archive_fileListOnline" // 在库列表


#define Url_Archive_fileListOffline  MAINURL@"Archive_fileListOffline" // 离库列表

#define Url_Archive_moveFile  MAINURL@"Archive_moveFile" // 移动时获取上级位置列表


#define Url_Archive_manuallyAdd  MAINURL@"Archive_manuallyAdd" // 手动添加提交时查询

#define Url_thumbUpload @"http://59.110.64.231:9000/index.php?m=Api&c=Archive&a=thumbUpload" // 图片上传

#define Url_Archive_addNewsFile  MAINURL@"Archive_addNewsFile" // 移动时获取上级位置列表

#define Url_Archive_AddressList  MAINURL@"Archive_AddressList" // 档案管理一级货架列表

#define Url_Archive_BoxList  MAINURL@"Archive_BoxList" // 档案管理二级货架列表

#define Url_Archive_fileListByParent  MAINURL@"Archive_fileListByParent" // 档案管理一级货架列表

#define Url_Archive_fileInfo  MAINURL@"Archive_fileInfo" // 档案详情

#define Url_Other_setDefaultAddress  MAINURL@"Other_setDefaultAddress" // 设置默认地址

#define Url_Other_deleteAddress  MAINURL@"Other_deleteAddress" // 删除地址


/*
 *member_id用户ID
 *level级别 1-货架 2-箱 3-册
 *number编号
 *id主键ID(当level=1时请传p_address_id，当level=2时请传p_box_id，当level=3时请传p_file_id)
 
 */
#define Url_Archive_Archive_updateDescription  MAINURL@"Archive_updateDescription" //  修改自主管理货架、箱、册备注信息


#define Url_Archive_deleteFile  MAINURL@"Archive_deleteFile" // 删除自主管理货架、箱、册

#define Url_Archive_updateFileNumber  MAINURL@"Archive_updateFileNumber" //  修改自主管理货架、箱、册条形码编号

#define Url_Archive_getSelectResult  MAINURL@"Archive_getSelectResult" //查一查结果列表


#define Url_Archive_email  MAINURL@"Archive_email" //发送报告

#define Url_Archive_fileDestroy  MAINURL@"Archive_fileDestroy" //  销毁档案

#define Url_Archive_fileStill  MAINURL@"Archive_fileStill" // 档案归档

#define Url_Archive_fileBorrow  MAINURL@"Archive_fileBorrow" //  借阅档案

#define Url_Archive_delFileThumb  MAINURL@"Archive_delFileThumb" //  删除图片

#define Url_Archive_addFileThumb  MAINURL@"Archive_addFileThumb" //  销毁档案






