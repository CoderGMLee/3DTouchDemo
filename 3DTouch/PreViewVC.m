

//
//  PreViewVC.m
//  3DTouch
//
//  Created by 李国民 on 15/10/23.
//  Copyright © 2015年 李国民. All rights reserved.
//

#import "PreViewVC.h"

@interface PreViewVC ()

@end

@implementation PreViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    imageView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:imageView];

    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 300, 30)];
    label.text = @"上滑出现action效果";
    [label sizeToFit];
    label.center = imageView.center;
    [self.view addSubview:label];
}

//重压时回调
- (NSArray<id<UIPreviewActionItem>> *)previewActionItems
{
    
    UIPreviewAction *action = [UIPreviewAction  actionWithTitle:@"保存" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"保存");
    }];
    
    
    UIPreviewAction * action1 = [UIPreviewAction actionWithTitle:@"删除" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"删除");
    }];
    
    return @[action,action1];
}

@end
