//
//  select_view.m
//  one_srasyu_app
//
//  Created by Shin,ichi  Uehara on 2013/11/21.
//  Copyright (c) 2013年 Shin,ichi  Uehara. All rights reserved.
//

#import "select_view.h"
#import "line_view.h"

@interface select_view ()

@end

@implementation select_view

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)buttonDidPush
{
    NSLog(@"ボタンが押されました");
    
    // 次画面を指定して遷移
    UIViewController *next = [[line_view alloc] init];
    next.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:next animated:YES completion:^ {
        // 完了時の処理をここに書きます
    }];
}

@end
