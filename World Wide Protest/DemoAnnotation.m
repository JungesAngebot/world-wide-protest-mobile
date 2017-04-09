//
//  DemoAnnotation.m
//  World Wide Protest
//
//  Created by Frederik Riedel on 09.04.17.
//  Copyright © 2017 Frederik Riedel. All rights reserved.
//

#import "DemoAnnotation.h"

@implementation DemoAnnotation

-(instancetype) initWithJson:(NSDictionary*) json {
    
    self = [super init];
    
    
    if(self) {
        self.descriptionText = [json objectForKey:@"description"];
        self.title = [json objectForKey:@"title"];
        self.coordinate = CLLocationCoordinate2DMake([[json objectForKey:@"lat"] doubleValue], [[json objectForKey:@"lng"] doubleValue]);
        
        self.eventId = [[json objectForKey:@"detailId"] intValue];
        
        
    }
    
    return self;
}


@end
