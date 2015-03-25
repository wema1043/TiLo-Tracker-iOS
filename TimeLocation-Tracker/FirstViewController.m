//
//  FirstViewController.m
//  TimeLocation-Tracker
//
//  Created by Marc Weisenburger on 25.03.15.
//  Copyright (c) 2015 Marc Weisenburger. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _mapView.delegate = self;
    _mapView.mapType = MKMapTypeHybrid;

    self.locationManager= [[CLLocationManager alloc] init];
    self.locationManager.delegate=self;
    [self.locationManager requestAlwaysAuthorization];
    
    [self.locationManager startUpdatingLocation];
    _mapView.showsUserLocation = YES;
    
    [self updateLocation];

}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    
    self.locationManager.distanceFilter = kCLDistanceFilterNone;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [self.locationManager startUpdatingLocation];
    NSLog(@"%@", [self deviceLocation]);
    
    //View Area
    [self updateLocation];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSString *)deviceLocation {
    return [NSString stringWithFormat:@"latitude: %f longitude: %f", self.locationManager.location.coordinate.latitude, self.locationManager.location.coordinate.longitude];
}

//methode wird eigentlich nicht benötigt, da wir uns ja nie bewegen werden

//- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
//    //
//    NSLog(@"location changed");
//    _mapView.centerCoordinate = userLocation.location.coordinate;
//}


- (void)updateLocation{
    MKCoordinateRegion region = { { 0.0, 0.0 }, { 0.0, 0.0 } };
    region.center.latitude = self.locationManager.location.coordinate.latitude;
    region.center.longitude = self.locationManager.location.coordinate.longitude;
    [_mapView setRegion:region animated:YES];

}

@end
