//
//  SecondViewController.h
//  World Wide Protest
//
//  Created by Frederik Riedel on 08.04.17.
//  Copyright © 2017 Frederik Riedel. All rights reserved.
//

#import <UIKit/UIKit.h>
@import MapKit;

@interface SecondViewController : UIViewController

@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager* locationManager;

@end

