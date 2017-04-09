//
//  SecondViewController.m
//  World Wide Protest
//
//  Created by Frederik Riedel on 08.04.17.
//  Copyright © 2017 Frederik Riedel. All rights reserved.
//

#import "SecondViewController.h"
#import "DemoAnnotation.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self reloadMapData];
    
    self.mapView.showsUserLocation = YES;
    
    self.locationManager = [[CLLocationManager alloc] init];
    
    [self.locationManager requestWhenInUseAuthorization];
    
    // Do any additional setup after loading the view, typically from a nib.
}


-(void) reloadMapData {
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://wwpserver.azurewebsites.net/worldwideprotest/api/events"]];
    [request setTimeoutInterval:10.0];
    [request setHTTPMethod:@"GET"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        
        NSArray *jsonEvents = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
        NSLog(@"%@",jsonEvents);
        
        [self.mapView removeAnnotations:self.mapView.annotations];

        
        for(NSDictionary* dict in jsonEvents) {
            DemoAnnotation* demoAnnotation = [[DemoAnnotation alloc] initWithJson:dict];
            [self.mapView addAnnotation:demoAnnotation];
        }
        
        
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
