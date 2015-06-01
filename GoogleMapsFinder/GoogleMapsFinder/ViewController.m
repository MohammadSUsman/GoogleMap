//
//  ViewController.m
//  GoogleMapsFinder
//
//  Created by Brianna Przybysz on 6/1/15.
//  Copyright (c) 2015 MohammadSUsman. All rights reserved.
//

#import "ViewController.h"
#import <GoogleMaps/GoogleMaps.h>
#import <CoreLocation/CoreLocation.h>

//piyal@tresource

@interface ViewController ()
{
    GMSMapView *mapView_;
}
@property(nonatomic,retain) CLLocationManager *locationManager;

@end

@implementation ViewController



- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //33.855658, -84.372014
    float longitude  = 33.855658;
    float latitude  = 84.372014;
    
    CLLocationCoordinate2D panoramaNear = {longitude,latitude};
    
    GMSPanoramaView *panoView =
    [GMSPanoramaView panoramaWithFrame:CGRectZero
                        nearCoordinate:panoramaNear];
    self.view = panoView;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
   // [button addTarget:self action:@selector(aMethod:)
   //  forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Show View" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor whiteColor];
    button.frame = CGRectMake(80.0, 30.0, 160.0, 40.0);
    [self.view addSubview:button];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

@end
