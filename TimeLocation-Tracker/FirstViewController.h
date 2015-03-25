//
//  FirstViewController.h
//  TimeLocation-Tracker
//
//  Created by Marc Weisenburger on 25.03.15.
//  Copyright (c) 2015 Marc Weisenburger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface FirstViewController : UIViewController <MKMapViewDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *mapView;


@end

