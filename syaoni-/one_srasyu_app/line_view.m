//
//  line_view.m
//  one_srasyu_app
//
//  Created by Shin,ichi  Uehara on 2013/11/21.
//  Copyright (c) 2013年 Shin,ichi  Uehara. All rights reserved.
//

#import "line_view.h"
#import "start_view.h"
#import "select_view.h"

@interface line_view ()

@end

@implementation line_view

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

- (IBAction)OK_btn:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc] init];
    alert.delegate = self;
    alert.title = @"正解!!";
    alert.message = @"続けますか？";
    [alert addButtonWithTitle:@"いいえ(問題選択に戻ります)"];
    [alert addButtonWithTitle:@"はい"];
    [alert show];
    
    
}

- (IBAction)NO_btn:(id)sender {
    
    
    // 次画面を指定して遷移
    /*UIViewController *next = [[line_view alloc] init];
    next.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:next animated:YES completion:^ {
        // 完了時の処理をここに書きます
    }];*/
    
    UIAlertView *alert = [[UIAlertView alloc] init];
    alert.delegate = self;
    alert.title = @"不正解...";
    alert.message = @"再チャレンジしますか?";
    [alert addButtonWithTitle:@"いいえ(問題選択に戻ります)"];
    [alert addButtonWithTitle:@"もう一度"];
    [alert show];

    
}



// アラートのボタンが押された時に呼ばれるデリゲート例文
-(void)alertView:(UIAlertView*)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    switch (buttonIndex) {
        case 0:
            // 前画面に戻る
            [self dismissViewControllerAnimated:YES completion:^{
                // 完了時の処理をここに書きます
            }];
            break;
            
        case 1:
            

            break;
    }
    
}



@end
