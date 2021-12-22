//
//  SSDPAppDelegate.m
//  CocoaSSDP-JX
//
//  Created by yangjianxiang on 12/22/2021.
//  Copyright (c) 2021 yangjianxiang. All rights reserved.
//

#import "SSDPAppDelegate.h"

@interface SSDPAppDelegate ()

@end

@implementation SSDPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self tryOpenNetworkPermission];
    return YES;
}


- (void)tryOpenNetworkPermission {
    NSURL *url = [NSURL URLWithString:@"https://8.8.8.8"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:1000];
    
    NSURLSessionConfiguration *defaultConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *urlSession = [NSURLSession sessionWithConfiguration:defaultConfiguration delegate:nil delegateQueue:[NSOperationQueue currentQueue]];
    [[urlSession dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error){
    }] resume];
}

@end
