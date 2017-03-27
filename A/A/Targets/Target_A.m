//
//  Target_A.m
//  A
//
//  Created by Sunshine on 2017/3/25.
//  Copyright © 2017年 Sunshine. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"
@implementation Target_A

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

@end
