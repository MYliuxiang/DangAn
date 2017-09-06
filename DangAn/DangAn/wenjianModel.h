//
//  wenjianModel.h
//  DangAn
//
//  Created by macvivi on 16/8/7.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXBaseModel.h"

@interface wenjianModel : LXBaseModel

//addtime = 1469587206;
//catid = 0;
//"cloud_folder_id" = 43;
//count = 0;
//id = 43;
//"img_show" = "http://101.200.127.204:9000/dangan/";
//"is_private" = 0;
//"member_id" = 1;
//modelid = 8;
//relationid = 37;
//sort = 0;
//status = 1;
//storge = "A_vkljdjpzandi/B_jknllknltspw";
//thumb = "";
//time = "2016.07.27";
//title = "\U6d4b\U8bd5\U7684\U6587\U4ef6\U59392";
//updatetime = 1469587206;


@property (nonatomic, copy) NSString *cloud_folder_id;       //文件夹的主键id
@property (nonatomic, copy) NSString *title;                 //文件夹的名称
@property (nonatomic, copy) NSString *time;                  //创建时间
@property (nonatomic, copy) NSString *count;                 //子文件的个数
@property (nonatomic, copy) NSString *img_show;              //图片路径
@property (nonatomic, copy) NSString *PY_string;             //拼音首字母


@end
