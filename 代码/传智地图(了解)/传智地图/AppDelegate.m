//
//  AppDelegate.m
//  传智地图
//
//  Created by apple on 15/1/31.
//  Copyright (c) 2015年 apple. All rights reserved.
//  RYr9S5ZiXoGtlNxtgaslKOv3
//
/*
 c : 项目的编译语言是C语言
 .m : 项目的编译语言:OC语言和C语言
 .mm : 项目的编译语言是:C++/OC/C
 .cpp : 项目的编译语言包含:C++
 */
#import "AppDelegate.h"

@interface AppDelegate () <BMKGeneralDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    _mapManager = [[BMKMapManager alloc]init];
    // 开始请求授权和查看网络状态
    BOOL ret = [_mapManager start:@"Sar80zpxuEo3KCWUXUaG3lUs"  generalDelegate:self];
    if (!ret) {
        NSLog(@"manager start failed!");
    }
    
    return YES;
}

- (void)onGetNetworkState:(int)iError
{
    if (iError) {
        NSLog(@"联网失败");
    } else {
        NSLog(@"联网成功");
    }
}

- (void)onGetPermissionState:(int)iError
{
    if (iError) {
        NSLog(@"授权失败");
    } else {
        NSLog(@"授权成功");
    }
}

@end
