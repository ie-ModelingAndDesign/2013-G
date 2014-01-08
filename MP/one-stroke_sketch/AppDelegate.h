//
//  AppDelegate.h
//  one-stroke_sketch
//
//  Created by Shin,ichi  Uehara on 2013/12/04.
//  Copyright (c) 2013年 Shin,ichi  Uehara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property NSMutableArray *Datas;
@property NSMutableArray *Connect_num;
@property NSMutableArray *Connect;
@property int able_line_count;
@property int line_count;

@end
