//
//  LaunchAdService.m
//  LaunchWithAd
//
//  Created by yiqiwang(王一棋) on 2018/12/19.
//  Copyright © 2018 yiqiwang(王一棋). All rights reserved.
//

#import "LaunchAdService.h"
#import "AdViewController.h"

@interface LaunchAdService () <AdViewControllerDelegate>

@property (strong, nonatomic) UIWindow *adWindow;

@end

@implementation LaunchAdService

+ (instancetype)shared {
    static dispatch_once_t onceToken;
    static LaunchAdService *_shared = nil;
    dispatch_once(&onceToken, ^{
        _shared = [[LaunchAdService alloc] init];
    });
    return _shared;
}

- (void)load {
    AdViewController *vc = [[AdViewController alloc] init];
    vc.delegate = self;

    self.adWindow = [UIWindow new];
    self.adWindow.frame = UIScreen.mainScreen.bounds;
    self.adWindow.rootViewController = [[UINavigationController alloc] initWithRootViewController:vc];
    [self.adWindow makeKeyAndVisible];
}

#pragma mark - AdViewControllerDelegate

- (void)adVCWillDismiss {
    [self.adWindow resignKeyWindow];
    [self.adWindow setHidden:YES];
    self.adWindow = nil;
}

@end
