//
//  FirstViewController.h
//  World Wide Protest
//
//  Created by Frederik Riedel on 08.04.17.
//  Copyright © 2017 Frederik Riedel. All rights reserved.
//

#import <UIKit/UIKit.h>
@import WebKit;

@interface FirstViewController : UIViewController

@property(nonatomic,strong) WKWebView* webView;


@property (strong, nonatomic) IBOutlet UIButton *backButton;


@end

