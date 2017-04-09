//
//  FirstViewController.m
//  World Wide Protest
//
//  Created by Frederik Riedel on 08.04.17.
//  Copyright © 2017 Frederik Riedel. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    //hardcoded hackathon solution
    self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-44-66)];
    [self.view addSubview:self.webView];
    
    NSURL* url = [NSURL URLWithString:@"https://worldwideprotest.com"];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
