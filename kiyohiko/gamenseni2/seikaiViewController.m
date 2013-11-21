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

@end
