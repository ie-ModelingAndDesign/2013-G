//
//  seikaiViewController.m
//  gamenseni2
//
//  Created by clear  on 2013/11/21.
//  Copyright (c) 2013年 Kiyohiko.Iwamura. All rights reserved.
//

#import "seikaiViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface seikaiViewController ()

@end

@implementation seikaiViewController


float start_x;
float start_y;

float end_x;
float end_y;


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
    [self.view sendSubviewToBack:_hoge];
    [super viewDidLoad];
 //影を作成
    _hoge.layer.cornerRadius = 20.0f;
    _hoge.layer.shadowOpacity = 0.6;
    _hoge.layer.shadowOffset = CGSizeMake(2.0,2.0);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)seikaibtn:(id)sender {
    [self.view bringSubviewToFront:_hoge];

}
- (IBAction)nextbtn:(id)sender {
    [self.view sendSubviewToBack:_hoge];
}




// 画面に指を一本以上タッチしたときに実行されるメソッド
/*- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    NSLog(@"touches count : %d (touchesBegan:withEvent:)", [touches count]);
    CGPoint p = [[touches anyObject] locationInView:self.view];
    start_x = p.x;    // X座標
    start_y = p.y;    // Y座標
    
}

// 画面に触れている指が一本以上移動したときに実行されるメソッド
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches count : %d (touchesMoved:withEvent:)", [touches count]);
}

// 指を一本以上画面から離したときに実行されるメソッド
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches count : %d (touchesEnded:withEvent:)", [touches count]);
    
    CGPoint p = [[touches anyObject] locationInView:self.view];
    end_x = p.x;    // X座標
    end_y = p.y;    // Y座標
    
}

// システムイベントがタッチイベントをキャンセルしたときに実行されるメソッド
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches count : %d (touchesCancelled:withEvent:)", [touches count]);
}*/


@end
