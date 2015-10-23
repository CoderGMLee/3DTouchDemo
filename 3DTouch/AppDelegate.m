//
//  AppDelegate.m
//  3DTouch
//
//  Created by 李国民 on 15/10/23.
//  Copyright © 2015年 李国民. All rights reserved.
//

//http://www.myexception.cn/operating-system/2021889.html  学习链接
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //在主屏幕添加按压   也可以加在项目的plist文件中 【注】type相当与item的标识
    UIApplicationShortcutItem *item = [[UIApplicationShortcutItem alloc] initWithType:@"identifies1" localizedTitle:@"第一个" localizedSubtitle:@"子标题" icon:[UIApplicationShortcutIcon iconWithTemplateImageName:@"3DTouch35"] userInfo:@{@"item":@"item"}];
    UIApplicationShortcutItem * item1 = [[UIApplicationShortcutItem alloc]initWithType:@"identifies2" localizedTitle:@"第二个" localizedSubtitle:nil icon:[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypePlay] userInfo:@{@"item":@"item1"}];
    [[UIApplication sharedApplication] setShortcutItems:@[item,item1]];
    
    return YES;
}

//按压回调
- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    NSLog(@"item : %@",shortcutItem);
}


@end
