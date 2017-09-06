//
//  LJ.h
//  DangAn
//
//  Created by lijiang on 16/5/30.
//  Copyright © 2016年 Viatom. All rights reserved.
//

#ifndef LJ_h
#define LJ_h


#endif /* LJ_h */

#import "MyLogin.h"
#import "InputCheck.h"


#define Color_yellow   Color(254, 177, 0)

#define Noti_refre @"Noti_refre"//通知

#define ISLogin       @"ISLogin"
#define Member_id     @"Member_id" //用户ID
#define Headimgurl    @"Headimgurl"//用户头像
#define Mobile        @"Mobile" //手机号
#define Username      @"Username"//用户名
#define Name          @"Name" //姓名
#define Member_vip_id   @"Member_vip_id"//是否是会员
#define Company       @"Company"//公司
#define Adress        @"adress" //地址

#define Gexsture_status       @"gesture_status"//手势开启 1-开启 0-关闭
#define Gesture_password       @"gesture_password"
#define VOice_status            @"VOice_status"//是否开启语音说
#define Enterprise_id          @"enterprise_id"//企业id（不是企业用户，返回0）

#define Gesture_index       @"gesture_index"//公司





#define Url_Member_login           MAINURL@"Member_login"//手机号登录
#define Url_Member_getMobileCode   MAINURL@"Member_getMobileCode"//获取短信验证码

//VIP业务
#define Url_Enterprise_index         MAINURL@"Enterprise_index"//主页
#define Url_Enterprise_listFile      MAINURL@"Enterprise_listFile"//档案列表
#define Url_Enterprise_detailFile    MAINURL@"Enterprise_detailFile"//档案详情
#define Url_Enterprise_productStore  MAINURL@"Enterprise_productStore"//产品商店
#define Url_Enterprise_confirmOrder  MAINURL@"Enterprise_confirmOrder"//确认订单页
#define Url_Enterprise_placeOrder    MAINURL@"Enterprise_placeOrder"//下订单
#define Url_Enterprise_listOrder     MAINURL@"Enterprise_listOrder"//订单列表
#define Url_Enterprise_detailOrder   MAINURL@"Enterprise_detailOrder"//订单详情
#define Url_Enterprise_borrowFileList    MAINURL@"Enterprise_borrowFileList"//已借阅档案列表
#define Url_Enterprise_getServiceContent  MAINURL@"Enterprise_getServiceContent"//获取服务类型的说明
#define Url_Enterprise_calculatePrice     MAINURL@"Enterprise_calculatePrice"//计算商品的价格
#define Url_Enterprise_payOrder           MAINURL@"Enterprise_payOrder"//订单支付
#define Url_Enterprise_traceOrder         MAINURL@"Enterprise_traceOrder"//订单追踪
#define Url_Enterprise_historyBill        MAINURL@"Enterprise_historyBill"//历史账单
#define Url_Enterprise_stockReport        MAINURL@"Enterprise_stockReport"//库存报告
#define Url_Enterprise_sendMail           MAINURL@"Enterprise_sendMail"//下载文件
#define Url_Enterprise_search             MAINURL@"Enterprise_search"// 搜一搜(订单和档案)
#define Url_Enterprise_orderMiddlePage    MAINURL@"Enterprise_orderMiddlePage"//订单中间页
#define Url_Enterprise_archiveMiddlePage  MAINURL@"Enterprise_archiveMiddlePage"//全部档案中间页
#define Url_Enterprise_map                MAINURL@"Enterprise_map"//查看地图


//我的
#define Url_Other_leaveMessage    MAINURL@"Other_leaveMessage"//留言反馈
#define Url_Other_singlePage      MAINURL@"Other_singlePage" //6 - 帮助中心 7 - 联系我们 8 - 关于我们 9 - 隐私和条款
#define Url_ploadHeadImage        MAINURL@"/index.php?m=Api&c=Other&a=uploadHeadImage"//用户头像上传
#define Url_Other_memberInfo      MAINURL@"Other_memberInfo"// 用户信息展示
#define Url_Other_saveMemberInfo   MAINURL@"Other_saveMemberInfo"//用户信息修改
#define Url_Other_addAddress      MAINURL@"Other_addAddress"//添加地址
#define Url_Other_listAddress     MAINURL@"Other_listAddress"//地址列表
#define Url_Other_editAddress     MAINURL@"Other_editAddress"//地址修改
#define Url_Other_setDefaultAddress  MAINURL@"Other_setDefaultAddress"//设为默认地址
#define Url_Other_getNotice         MAINURL@"Other_getNotice"//系统消息
#define Url_Other_readNotice        MAINURL@"Other_readNotice"//设置消息已读

#define Url_Other_index         MAINURL@"Other_index"//系统消息


#define Url_Other_setGesturePassword        MAINURL@"Other_setGesturePassword"//设置用户手势
#define Url_Other_getGesturePassword        MAINURL@"Other_getGesturePassword"// 获取用户手势










