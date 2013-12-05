//
//  ViewController.h
//  Oekaki
//
//  Created by clear  on 2013/11/28.
//  Copyright (c) 2013年 Kiyohiko.Iwamura. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)undo:(id)sender;
- (IBAction)clearImage:(id)sender;
- (IBAction)changeColor:(id)sender;
@property (strong, nonatomic) IBOutlet UISegmentedControl *colorSegmentControl;


@end
