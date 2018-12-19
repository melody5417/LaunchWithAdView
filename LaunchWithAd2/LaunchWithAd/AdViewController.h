//
//  AdViewController.h
//  LaunchWithAd
//
//  Created by yiqiwang(王一棋) on 2018/11/20.
//  Copyright © 2018 yiqiwang(王一棋). All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AdViewControllerDelegate <NSObject>

- (void)adVCWillDismiss;

@end

@interface AdViewController : UIViewController

@property (nonatomic, weak) id<AdViewControllerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
