//
//  SSDPViewController.m
//  CocoaSSDP-JX
//
//  Created by yangjianxiang on 12/22/2021.
//  Copyright (c) 2021 yangjianxiang. All rights reserved.
//

#import "SSDPViewController.h"
#import <CocoaSSDP_JX/SSDPServiceTypes.h>
#import <CocoaSSDP_JX/SSDPServiceBrowser.h>

@interface SSDPViewController () <SSDPServiceBrowserDelegate>
@property (nonatomic, strong) SSDPServiceBrowser *browser;

@end

@implementation SSDPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.browser = [[SSDPServiceBrowser alloc] initWithInterface:nil];
    self.browser.delegate = self;
    [self.browser startBrowsingForServices:SSDPServiceType_All];
}

- (void)ssdpBrowser:(SSDPServiceBrowser *)browser didNotStartBrowsingForServices:(NSError *)error {
    NSLog(@"didNotStartBrowsingForServices: %@", error);
}

- (void)ssdpBrowser:(SSDPServiceBrowser *)browser didFindService:(SSDPService *)service {
    NSLog(@"didFindService: %@", service);
}

- (void)ssdpBrowser:(SSDPServiceBrowser *)browser didRemoveService:(SSDPService *)service {
    NSLog(@"didRemoveService: %@", service);
}

@end
