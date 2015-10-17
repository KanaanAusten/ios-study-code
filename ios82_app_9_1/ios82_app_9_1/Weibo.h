//
//  Weibo.h
//  ios82_app_9_1
//
//  Created by ying xu on 15/9/28.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <MapKit/MapKit.h>

#import <CoreLocation/CoreLocation.h>

@interface Weibo : NSObject<MKAnnotation>

@property(nonatomic,strong)CLLocationManager * lM;

@property(nonatomic,strong)NSString * userName;
//@property(nonatomic,strong)NSString * userImage;

@property(nonatomic,strong)NSString * text;

/**
 *  latitude 纬度
    longitude 经度
 */
@property(nonatomic,strong)NSDictionary * location;


@end
