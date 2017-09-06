//
//  WXDataService.m
//  MyWeibo
//
//  Created by zsm on 14-3-5.
//  Copyright (c) 2014年 zsm. All rights reserved.
//

#import "WXDataService.h"

@implementation WXDataService

- (BOOL)isConnected {
    struct sockaddr zeroAddress;
    bzero(&zeroAddress, sizeof(zeroAddress));
    zeroAddress.sa_len = sizeof(zeroAddress);
    zeroAddress.sa_family = AF_INET;
    
    SCNetworkReachabilityRef defaultRouteReachability =
    SCNetworkReachabilityCreateWithAddress(NULL, (struct sockaddr *)&zeroAddress);
    SCNetworkReachabilityFlags flags;
    
    BOOL didRetrieveFlags =
    SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags);
    CFRelease(defaultRouteReachability);
    
    if (!didRetrieveFlags) {
        printf("Error. Count not recover network reachability flags\n");
        return NO;
    }
    
    BOOL isReachable = flags & kSCNetworkFlagsReachable;
    BOOL needsConnection = flags & kSCNetworkFlagsConnectionRequired;
    return (isReachable && !needsConnection) ? YES : NO;
}

//-(void)Reachability {
//    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
//    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
//        NSLog(@"%@",[NSThread currentThread]);
//        switch (status) {
//            case AFNetworkReachabilityStatusNotReachable:
//            {
//                NSLog(@"无网络");
//                self.isNotReachable = NO;
//            }
//                break;
//            case AFNetworkReachabilityStatusReachableViaWWAN:
//            {
//                NSLog(@"有网络");
//                //isuse = @"有网络";
//                 self.isNotReachable = YES;
//            }
//                break;
//            case AFNetworkReachabilityStatusReachableViaWiFi:
//            {
//                NSLog(@"有网络wifi");
//                 self.isNotReachable = YES;
//            }
//                break;
//            default:
//                break;
//        }
//    }];
//}
+ (AFHTTPSessionManager *)requestAFWithURL:(NSString *)url
                                    params:(NSDictionary *)params
                                httpMethod:(NSString *)httpMethod
                                     isHUD:(BOOL)ishud
                               finishBlock:(FinishBlock)finishBlock
                                errorBlock:(ErrorBlock)errorBlock
{
    
    if (ishud) {
        [MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].keyWindow animated:YES];

    }
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.requestSerializer= [AFJSONRequestSerializer serializer];
//            manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/json"];
//        [manager.requestSerializer setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Accept"];
//        [manager.requestSerializer setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [manager.requestSerializer setValue:@"text/json; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    
    RequestType1 type;
    if ([httpMethod isEqualToString:@"GET"])
    {
        type = RequestGetType1;
    }else{
        type = RequestPostType1;
    
    }
    
    [manager.requestSerializer setValue:@"2304cdaee07aa52690475edf3776cce6" forHTTPHeaderField:@"apikey"];
    
    switch (type) {
        case RequestGetType1:
        {
            
            [manager GET:url parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
                
                [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
                if (finishBlock != nil) {
                    NSDictionary *result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
                    finishBlock(result);
                }

                
            } failure:^(NSURLSessionDataTask *task, NSError *error) {
                NSLog(@"Error: %@", [error localizedDescription]);

                [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
                if (errorBlock != nil) {

                    errorBlock(error);
                }

            }];
            
 
        }
            break;
        case RequestPostType1:
        {
            
            [manager POST:url parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
                [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
                if (finishBlock != nil) {
                    NSDictionary *result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
                    finishBlock(result);
                }

            } failure:^(NSURLSessionDataTask *task, NSError *error) {
                [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
                if (errorBlock != nil) {

                    errorBlock(error);
                }
            }];
            
        }
            break;
        default:
            break;
    }

    return manager;


}

+ (AFHTTPSessionManager *)postMP3:(NSString *)url
                           params:(NSDictionary *)params
                         fileData:(NSData *)fileData
                      finishBlock:(FinishBlock)finishBlock
                       errorBlock:(ErrorBlock)errorBlock
{
    [MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].keyWindow animated:YES];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager POST:url parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
//        [formData appendPartWithFileData:fileData name: fileName:[NSString stringWithFormat:@"uploadfile%d",i] mimeType:@"image/jpeg"];
        [formData appendPartWithFileData:fileData name:@"recoder" fileName:@"recoder.mp3" mimeType:@"mp3"];
        
    } success:^(NSURLSessionDataTask *task, id responseObject) {
        [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
        if (finishBlock != nil) {
            NSDictionary *result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
            finishBlock(result);
        }

    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
        if (errorBlock != nil) {
            
            errorBlock(error);
        }

    }];
    
    return manager;

    
    
}

+ (AFHTTPSessionManager *)postImage:(NSString *)url
                             params:(NSDictionary *)params
                           fileData:(NSData *)fileData
                        finishBlock:(FinishBlock)finishBlock
                         errorBlock:(ErrorBlock)errorBlock
{
    [MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].keyWindow animated:YES];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.requestSerializer= [AFJSONRequestSerializer serializer];
    //    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/json"];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [manager.requestSerializer setValue:@"text/json; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    [manager POST:url parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
    [formData appendPartWithFileData:fileData name:@"filename" fileName:@"my.png" mimeType:@"image/jpeg"];
//        [formData appendPartWithFileData:fileData name:@"recoder" fileName:@"recoder.mp3" mimeType:@"mp3"];
        
    } success:^(NSURLSessionDataTask *task, id responseObject) {
        [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
        if (finishBlock != nil) {
            NSDictionary *result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
            finishBlock(result);
        }
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
        if (errorBlock != nil) {
            
            errorBlock(error);
        }
        
    }];
    
    return manager;
    



}



+ (AFHTTPSessionManager *)syncrequestAFWithURL:(NSString *)url
                                    params:(NSDictionary *)params
                                httpMethod:(NSString *)httpMethod
                               finishBlock:(FinishBlock)finishBlock
                                errorBlock:(ErrorBlock)errorBlock
{
    
    [MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].keyWindow animated:YES];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    RequestType1 type;
    if ([httpMethod isEqualToString:@"GET"])
    {
        type = RequestGetType1;
    }else{
        type = RequestPostType1;
        
    }
    switch (type) {
        case RequestGetType1:
        {
            
            [manager GET:url parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
                
                [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
                if (finishBlock != nil) {
                    NSDictionary *result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
                    finishBlock(result);
                }
                
                
            } failure:^(NSURLSessionDataTask *task, NSError *error) {
                NSLog(@"Error: %@", [error localizedDescription]);
                
                [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
                if (errorBlock != nil) {
                    
                    errorBlock(error);
                }
                
            }];
            
            
        }
            break;
        case RequestPostType1:
        {
            
            [manager POST:url parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
                [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
                if (finishBlock != nil) {
                    NSDictionary *result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
                    finishBlock(result);
                }
                
            } failure:^(NSURLSessionDataTask *task, NSError *error) {
                [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
                if (errorBlock != nil) {
                    
                    errorBlock(error);
                }
            }];
            
        }
            break;
        default:
            break;
    }
    

    return manager;
    
    
}



@end
