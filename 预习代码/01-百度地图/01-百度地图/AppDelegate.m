//
//  AppDelegate.m
//  01-百度地图
//
//  Created by apple on 14-12-17.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate () <BMKGeneralDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    _mapManager = [[BMKMapManager alloc]init];
    // 如果要关注网络及授权验证事件，请设定 generalDelegate参数
    BOOL ret = [_mapManager start:@"kSiIGZzmNWD4FOEXoIcP4g87"  generalDelegate:self];
    if (!ret) {
        NSLog(@"manager start failed!");
    }
    // Add the navigation controller's view to the window and display.
    [self.window addSubview:navigationController.view];
    [self.window makeKeyAndVisible];
    
    return YES;
}

/**
 *  网络检查
 *
 *  @param iError 错误码
 */
- (void)onGetNetworkState:(int)iError
{
    if (iError) {
        NSLog(@"%d", iError);
    } else {
        NSLog(@"网络连接成功");
    }
}

- (void)onGetPermissionState:(int)iError
{
    if (iError) {
        NSLog(@"授权错误%d", iError);
    } else {
        NSLog(@"授权状态");
    }
}

@end
