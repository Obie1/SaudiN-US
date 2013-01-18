//
//  MapViewController.h
//  SaudiN'US
//
//  Created by Obie Haiek on 1/17/13.
//  Copyright (c) 2013 Obie Haiek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityindicator;

@end
