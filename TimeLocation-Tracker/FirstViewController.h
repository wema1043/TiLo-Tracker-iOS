//
//  FirstViewController.h
//  TimeLocation-Tracker
//
//  Created by Marc Weisenburger on 25.03.15.
//  Copyright (c) 2015 Marc Weisenburger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

#define IS_OS_8_OR_LATER ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)


@interface FirstViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property(nonatomic, retain) CLLocationManager *locationManager;


@end

