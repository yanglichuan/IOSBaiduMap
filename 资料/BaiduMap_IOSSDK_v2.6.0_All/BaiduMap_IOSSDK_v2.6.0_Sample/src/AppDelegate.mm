//
//  AppDelegate.m
//  BaiduMapSdkSrc
//
//  Created by baidu on 13-3-21.
//  Copyright (c) 2013年 baidu. All rights reserved.
// smPjRFhRZP5Bb1O6cgHXx9Pz

#import "AppDelegate.h"

#import "RootViewController.h"

//NAMESPACE_BAIDU_FRAMEWORK_USE

BMKMapManager* _mapManager;
@implementation AppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
	// 要使用百度地图，请先启动BaiduMapManager
	_mapManager = [[BMKMapManager alloc]init];
    BOOL ret = [_mapManager start:@"smPjRFhRZP5Bb1O6cgHXx9Pz" generalDelegate:self];

	if (!ret) {
		NSLog(@"manager start failed!");
	}
    [self.window addSubview:navigationController.view];
    [self.window makeKeyAndVisible];
	
    return YES;
}

- (void)onGetNetworkState:(int)iError
{
    if (0 == iError) {
        NSLog(@"联网成功");
    }
    else{
        NSLog(@"onGetNetworkState %d",iError);
    }
    
}

- (void)onGetPermissionState:(int)iError
{
    if (0 == iError) {
        NSLog(@"授权成功");
    }
    else {
        NSLog(@"onGetPermissionState %d",iError);
    }
}

@end
