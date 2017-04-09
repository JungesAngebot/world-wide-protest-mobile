//
//  EventDetailViewController.m
//  World Wide Protest
//
//  Created by Frederik Riedel on 09.04.17.
//  Copyright © 2017 Frederik Riedel. All rights reserved.
//

#import "EventDetailViewController.h"

@interface EventDetailViewController ()

@end

@implementation EventDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //hardcoded hackathon solution
    self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-66)];
    [self.view addSubview:self.webView];
    
    NSURL* url = [NSURL URLWithString:[NSString stringWithFormat:@"https://worldwideprotest.com/event/%@",self.eventId]];
    NSLog(@"%@",self.eventId);
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
