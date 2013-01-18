//
//  MapViewController.m
//  SaudiN'US
//
//  Created by Obie Haiek on 1/17/13.
//  Copyright (c) 2013 Obie Haiek. All rights reserved.
//

#import "MapViewController.h"
#import "AppDelegate.h"

@interface MapViewController ()

@end

@implementation MapViewController
@synthesize mapView;
@synthesize activityindicator;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    MKCoordinateRegion region = {{0.0,0.0},{0.0,0.0}};
    region.center.latitude = 38.311491;
    region.center.longitude = -105.24353;
    region.span.longitudeDelta = 1.5f;
    region.span.latitudeDelta = 1.5f;
    [self.mapView setRegion:region animated:YES];
    [self.mapView setDelegate:self];
    [self searchUniversities];
}
-(void)viewDidUnload
{
    [self setMapView:nil];
    [self setActivityindicator:nil];
    [self viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Univer Processing
-(void)searchUniversities
{
    
}


@end
