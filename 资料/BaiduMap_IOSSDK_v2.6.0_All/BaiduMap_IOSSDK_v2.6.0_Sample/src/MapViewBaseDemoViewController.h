//
//  MapViewBaseDemoViewController.h
//  BaiduMapSdkSrc
//
//  Created by BaiduMapAPI on 13-7-24.
//  Copyright (c) 2013年 baidu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMapKit.h"
@interface MapViewBaseDemoViewController :  UIViewController <BMKMapViewDelegate>{
    IBOutlet BMKMapView* _mapView;
    
}
@end
