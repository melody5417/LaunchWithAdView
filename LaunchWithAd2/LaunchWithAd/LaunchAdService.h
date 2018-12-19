//
//  LaunchAdService.h
//  LaunchWithAd
//
//  Created by yiqiwang(王一棋) on 2018/12/19.
//  Copyright © 2018 yiqiwang(王一棋). All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LaunchAdService : NSObject

+ (instancetype)shared;

- (void)load;

@end

NS_ASSUME_NONNULL_END
