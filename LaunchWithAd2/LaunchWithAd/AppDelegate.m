//
//  AppDelegate.m
//  LaunchWithAd
//
//  Created by yiqiwang(王一棋) on 2018/11/20.
//  Copyright © 2018 yiqiwang(王一棋). All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "LaunchAdService.h"

@interface AppDelegate ()

@property (nonatomic, strong) ViewController *mainViewController;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [UIWindow new];
    self.window.frame = UIScreen.mainScreen.bounds;
    self.mainViewController = [[ViewController alloc] init];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.mainViewController];
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];

    [LaunchAdService.shared load];

    return YES;
}


@end
