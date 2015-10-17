//
//  ViewController.m
//  ios82_app_9_1
//
//  Created by ying xu on 15/9/28.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

#import "Weibo.h"

#import <MapKit/MapKit.h>

#import <CoreLocation/CoreLocation.h>

@interface ViewController ()<MKMapViewDelegate,CLLocationManagerDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@property(nonatomic,strong)CLLocationManager * locationManager;


@end

/**
 *  
 NSLocationWhenInUseUsageDescription     应用程序使用期间
 NSLocationAlwaysUsageDescription        始终
 */

@implementation ViewController

- (IBAction)tapB:(id)sender
{
    [self.locationManager startUpdatingLocation];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.locationManager = [[CLLocationManager alloc]init];
    
    self.locationManager.delegate =self;
    
    
    if ([CLLocationManager  authorizationStatus] == kCLAuthorizationStatusAuthorizedWhenInUse )
    {
        [self.locationManager startUpdatingLocation];
    }
    else
    {
        [self.locationManager requestWhenInUseAuthorization];
    }
    
    
    
   // [self.locationManager requestAlwaysAuthorization];
    
    
   // [self.locationManager startUpdatingLocation];
    
    /*
    //39°54'24.15
    double lat = 39+54.0/60+24.15/60/60;
    //116°23'29.29
    double longitude = 116+23.0/60+29.29/60/60;
    MKCoordinateRegion region;
    
    region.center.longitude = longitude;
    region.center.latitude = lat;
    
    region.span.latitudeDelta = 0.01;
    region.span.longitudeDelta = 0.01;
    
    self.mapView.region = region;
    self.mapView.delegate = self;
    
    
    
    Weibo * wb = [[Weibo alloc]init];
    wb.userName = @"1234";
    wb.text = @"xxxx";

    wb.location = @{@"latitude":[NSString stringWithFormat:@"%g",lat],@"longitude":[NSString stringWithFormat:@"%g",longitude]};
    
    [self.mapView addAnnotation:wb];
    */
    
}

-(void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    switch (status) {
        case kCLAuthorizationStatusNotDetermined:
            [self.locationManager requestWhenInUseAuthorization];
            break;
            
        case kCLAuthorizationStatusAuthorizedWhenInUse:
            [self.locationManager startUpdatingLocation];
            break;
            
        default:
            NSLog(@"无法定位");
            break;
    }
}


-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation * l = locations.lastObject;
    
    NSLog(@"l = %@",l);
    
    [self.locationManager stopUpdatingLocation];
    
    
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"定位失败");
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKAnnotationView * view = [mapView dequeueReusableAnnotationViewWithIdentifier:@"wb"];
    
    if (view == nil)
    {
        view = [[MKAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"wb"];
    }
    
    view.canShowCallout = YES;
    
    UIImageView * imageV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    imageV.image = [UIImage imageNamed:@"1"];
    
    view.leftCalloutAccessoryView = imageV;
    view.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    
    view.image = [UIImage imageNamed:@"1"];
    
    return view;
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
