//
//  AppDelegate.h
//  LaunchWithAd
//
//  Created by yiqiwang(王一棋) on 2018/11/20.
//  Copyright © 2018 yiqiwang(王一棋). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

// todo adWindow需要释放
@property (strong, nonatomic) UIWindow *adWindow;

@end

