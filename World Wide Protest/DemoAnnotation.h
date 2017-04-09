//
//  DemoAnnotation.h
//  World Wide Protest
//
//  Created by Frederik Riedel on 09.04.17.
//  Copyright © 2017 Frederik Riedel. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreLocation;
@import MapKit;

@interface DemoAnnotation : NSObject <MKAnnotation>

@property (nonatomic) CLLocationCoordinate2D coordinate;
@property (nonatomic) NSString* title;
@property (nonatomic,strong) NSString* descriptionText;
@property(nonatomic) int eventId;

-(instancetype) initWithJson:(NSDictionary*) json;

@end
