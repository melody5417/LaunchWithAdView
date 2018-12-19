//
//  RouteManager.h
//  LaunchWithAd
//
//  Created by yiqiwang(王一棋) on 2018/11/20.
//  Copyright © 2018 yiqiwang(王一棋). All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RouteManager : NSObject

+ (instancetype)sharedInstance;

- (void)gotoHomeViewController;

@end

NS_ASSUME_NONNULL_END
