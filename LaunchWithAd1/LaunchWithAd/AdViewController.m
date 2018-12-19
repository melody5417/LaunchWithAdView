//
//  AdViewController.m
//  LaunchWithAd
//
//  Created by yiqiwang(王一棋) on 2018/11/20.
//  Copyright © 2018 yiqiwang(王一棋). All rights reserved.
//

#import "AdViewController.h"
#import "RouteManager.h"

@interface AdViewController ()

@property (nonatomic, strong) UIButton *countDownButton;
@property (nonatomic, strong) NSTimer *countDownTimer;
@property (nonatomic, assign) int currentCount;

@end

@implementation AdViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = UIColor.purpleColor;
    self.title = @"Advertise";

    [self initUI];
    [self bindEvents];

    self.currentCount = 5;
}

- (void)initUI {
    self.countDownButton = [[UIButton alloc] initWithFrame:CGRectMake(200, 200, 47, 47)];
    [self.view addSubview:self.countDownButton];
}

- (void)bindEvents {
    [self.countDownButton addTarget:self action:@selector(onClickCountDownButton:) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - Life Cycle

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    [self startTimer];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];

    // 参考 喜马拉雅 下厨房 等有广告的App
    // 进入广告页，迅速切入后台，再次激活，直接进入主界面
    [self dismiss];
}

#pragma mark - Timer

- (void)startTimer {
    if (!self.countDownTimer) {
        self.countDownTimer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(handleCountTimer:) userInfo:nil repeats:YES];
    }
    [[NSRunLoop mainRunLoop] addTimer:self.countDownTimer
                              forMode:NSRunLoopCommonModes];
}

- (void)stopTimer {
    if (self.countDownTimer) {
        [self.countDownTimer invalidate];
        self.countDownTimer = nil;
    }
}

- (void)handleCountTimer:(NSTimer *)timer {
    self.currentCount--;
    if (self.currentCount == 0) {
        [self dismiss];
    }
}

- (void)updateCountDownButton {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.countDownButton setTitle:[NSString stringWithFormat:@"%d", self.currentCount]
                              forState:UIControlStateNormal];
    });
}

#pragma mark - Action

- (void)onClickCountDownButton:(UIButton *)sender {
    [self dismiss];
}

#pragma mark - Dismiss

- (void)dismiss {
    [self stopTimer];
    [[RouteManager sharedInstance] gotoHomeViewController];
}

#pragma mark - Setter

- (void)setCurrentCount:(int)currentCount {
    _currentCount = currentCount;
    [self updateCountDownButton];
}

@end
