//
//  AViewController.m
//  MainProject
//
//  Created by Sunshine on 2017/3/24.
//  Copyright © 2017年 Sunshine. All rights reserved.
//

#import "AViewController.h"

//#import "BViewController.h"
#import <B_Category/CTMediator+B.h>


@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"A控制器";
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 350, 100);
    btn.center = self.view.center;
    [btn setTitle:@"push到B页面" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:26];
    [btn addTarget:self action:@selector(pushToB:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)pushToB:(UIButton *)button {
    
    NSLog(@"跳转到A控制器");
    
    /*
    BViewController *B = [[BViewController alloc] init];
    [self.navigationController pushViewController:B animated:YES];
     */
    
    UIViewController *viewController = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello, world!"];
    [self.navigationController pushViewController:viewController animated:YES];
}
@end
