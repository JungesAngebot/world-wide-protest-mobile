//
//  EventDetailViewController.h
//  World Wide Protest
//
//  Created by Frederik Riedel on 09.04.17.
//  Copyright © 2017 Frederik Riedel. All rights reserved.
//

#import <UIKit/UIKit.h>
@import WebKit;

@interface EventDetailViewController : UIViewController

@property(nonatomic,strong) WKWebView* webView;
@property(nonatomic,strong) NSString* eventId;


@end
