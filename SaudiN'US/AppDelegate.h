//
//  AppDelegate.h
//  SaudiN'US
//
//  Created by Obie Haiek on 11/13/12.
//  Copyright (c) 2012 Obie Haiek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
@interface AppDelegate : UIResponder <UIApplicationDelegate,UITableViewDelegate,MKMapViewDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navigationController;
@end
