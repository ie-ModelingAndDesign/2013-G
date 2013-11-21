//
//  line_view.m
//  one_srasyu_app
//
//  Created by Shin,ichi  Uehara on 2013/11/21.
//  Copyright (c) 2013年 Shin,ichi  Uehara. All rights reserved.
//

#import "line_view.h"

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
    
    UIAlertView *alert =
    [[UIAlertView alloc] initWithTitle:@"お知らせ" message:@"完了しました"
                              delegate:self cancelButtonTitle:@"確認" otherButtonTitles:nil];
    [alert show];

    
}

- (IBAction)NO_btn:(id)sender {
}
@end
