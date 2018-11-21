//
//  RouteManager.m
//  LaunchWithAd
//
//  Created by yiqiwang(王一棋) on 2018/11/20.
//  Copyright © 2018 yiqiwang(王一棋). All rights reserved.
//

#import "RouteManager.h"
#import "AppDelegate.h"

@implementation RouteManager

static id _instance;
+ (instancetype)sharedInstance{

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

- (void)gotoHomeViewController {
    AppDelegate *delegate = (AppDelegate *)UIApplication.sharedApplication.delegate;
    [delegate.window makeKeyAndVisible];
}

@end
