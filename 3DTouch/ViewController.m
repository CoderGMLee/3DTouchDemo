//
//  ViewController.m
//  3DTouch
//
//  Created by 李国民 on 15/10/23.
//  Copyright © 2015年 李国民. All rights reserved.
//

#import "ViewController.h"
#import "PreViewVC.h"
@interface ViewController ()<UIViewControllerPreviewingDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //注册
    [self registerForPreviewingWithDelegate:self sourceView:self.view];
}

//按压回调
- (nullable UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location{

    //会将contonller中得视图全部显示
    PreViewVC * preVC = [[PreViewVC alloc]init];
    return preVC;
}
- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit{
    
    
}
@end
