//
//  select_view.m
//  one-stroke_sketch
//
//  Created by Shin,ichi  Uehara on 2013/12/15.
//  Copyright (c) 2013年 Shin,ichi  Uehara. All rights reserved.
//

#import "select_view.h"
#import "AppDelegate.h"

@implementation select_view{
    
    AppDelegate *appDelegate;   //線のデータを読み込むためのappDelegate
    NSMutableArray *_data;
    NSMutableArray *_connect;
    NSMutableArray *_connect_num;
    
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/



//問題1
-(IBAction)question1:(id)sender{
    
    _data = [[NSMutableArray alloc]init];
    _connect = [[NSMutableArray alloc]init];
    _connect_num = [[NSMutableArray alloc]init];
    
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    appDelegate.Datas = _data;
    appDelegate.Connect = _connect;
    appDelegate.Connect_num = _connect_num;
    
    
    //線の座標データ(x,y)
    //１つ目の点
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(100, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150, 50)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //2つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(200, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150, 50)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(180, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(100, 100)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //3つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(180, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //4つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(120, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(100, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(180, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //5つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(100, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150, 50)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //6つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(150, 50)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(100, 100)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //7つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(200, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150, 50)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(180, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(100, 100)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    
    appDelegate.Datas = _data;
    appDelegate.Connect_num = _connect_num;
    
    appDelegate.able_line_count = 6;
    appDelegate.line_count = 0;
    
}



//問題2
-(IBAction)question2:(id)sender{
    
    _data = [[NSMutableArray alloc]init];
    _connect = [[NSMutableArray alloc]init];
    _connect_num = [[NSMutableArray alloc]init];
    
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    appDelegate.Datas = _data;
    appDelegate.Connect = _connect;
    appDelegate.Connect_num = _connect_num;
    
    
    //線の座標データ(x,y)
    //１つ目の点
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(110, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(210, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(110, 300)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //2つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(210, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(210, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(110, 200)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //3つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(210, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(210, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(110, 300)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //4つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(110, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(110, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(210, 300)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //5つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(110, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(210, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(110, 300)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //6つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(210, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(110, 200)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //7つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(210, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(210, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(110, 200)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    
    appDelegate.Datas = _data;
    appDelegate.Connect_num = _connect_num;
    
    appDelegate.able_line_count = 6;
    appDelegate.line_count = 0;
    
}

//問題3
-(IBAction)question3:(id)sender{
    
    _data = [[NSMutableArray alloc]init];
    _connect = [[NSMutableArray alloc]init];
    _connect_num = [[NSMutableArray alloc]init];
    
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    appDelegate.Datas = _data;
    appDelegate.Connect = _connect;
    appDelegate.Connect_num = _connect_num;
    
    
    //線の座標データ(x,y)
    //１つ目の点
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(90, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //2つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(230, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //3つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 240)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //4つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(90, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    
    //5つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(20, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90,240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //6つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //7つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(300, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 240)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //8つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(230, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160,100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 240)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //9つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //10つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(90, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];

    appDelegate.Datas = _data;
    appDelegate.Connect_num = _connect_num;
    
    appDelegate.able_line_count = 9;
    appDelegate.line_count = 0;
    
}


//問題4
-(IBAction)question4:(id)sender{
    
    _data = [[NSMutableArray alloc]init];
    _connect = [[NSMutableArray alloc]init];
    _connect_num = [[NSMutableArray alloc]init];
    
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    appDelegate.Datas = _data;
    appDelegate.Connect = _connect;
    appDelegate.Connect_num = _connect_num;
    
    
    //線の座標データ(x,y)
    //１つ目の点
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(20, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //2つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //3つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(20, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 240)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //4つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(20, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //5つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(300, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300,100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //6つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(300, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //7つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //8つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(300, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300,100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 240)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    
    appDelegate.Datas = _data;
    appDelegate.Connect_num = _connect_num;
    
    appDelegate.able_line_count = 7;
    appDelegate.line_count = 0;
    
}

//問題5
-(IBAction)question5:(id)sender{
    
    _data = [[NSMutableArray alloc]init];
    _connect = [[NSMutableArray alloc]init];
    _connect_num = [[NSMutableArray alloc]init];
    
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    appDelegate.Datas = _data;
    appDelegate.Connect = _connect;
    appDelegate.Connect_num = _connect_num;
    
    
    //線の座標データ(x,y)
    //１つ目の点
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 310)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //2つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(300, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //3つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(20, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //4つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 310)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];

    
    //5つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(300, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160,100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 170)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //6つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 170)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //7つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(20, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 170)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //8つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(300, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160,100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 170)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //9つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(300, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];

    //10つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 170)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];

    //11つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(20, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];

    //12つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(20, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 310)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];

    //13つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 310)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 310)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];

    
    appDelegate.Datas = _data;
    appDelegate.Connect_num = _connect_num;
    
    appDelegate.able_line_count = 13;
    appDelegate.line_count = 0;
    
}

//問題6
-(IBAction)question6:(id)sender{
    
    _data = [[NSMutableArray alloc]init];
    _connect = [[NSMutableArray alloc]init];
    _connect_num = [[NSMutableArray alloc]init];
    
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    appDelegate.Datas = _data;
    appDelegate.Connect = _connect;
    appDelegate.Connect_num = _connect_num;
    
    
    //線の座標データ(x,y)
    //１つ目の点
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(120, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 120)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(40, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 280)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //2つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(200, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 120)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(280, 200)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //3つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(200, 120)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 120)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 200)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //4つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(120, 120)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 120)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    
    //5つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(120, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 120)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(40, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 280)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //6つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(40, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(40, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 200)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //7つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(40, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(40, 200)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //8つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(120, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120,200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 360)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(40, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 280)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //9つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(200, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 360)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(280, 280)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //10つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(280, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(280, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 280)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //11つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(280, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(280, 280)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    
    //12つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(200, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 120)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(280, 200)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];

    //13つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(200, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 360)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(280, 280)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];

    
    //14つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(200, 360)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 360)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 280)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //15つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(120, 360)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 360)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 280)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];

    //16つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(120, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120,200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 360)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(40, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 280)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];

    //17つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(120, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 120)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(40, 200)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 280)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];

    
    appDelegate.Datas = _data;
    appDelegate.Connect_num = _connect_num;
    
    appDelegate.able_line_count = 16;
    appDelegate.line_count = 0;
    
}

//問題7
-(IBAction)question7:(id)sender{
    
    _data = [[NSMutableArray alloc]init];
    _connect = [[NSMutableArray alloc]init];
    _connect_num = [[NSMutableArray alloc]init];
    
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    appDelegate.Datas = _data;
    appDelegate.Connect = _connect;
    appDelegate.Connect_num = _connect_num;
    
    
    //線の座標データ(x,y)
    //１つ目の点
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(90, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 80)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 290)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //2つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(230, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 80)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 290)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 220)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //3つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 80)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //4つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(90, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 80)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 290)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //5つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(90, 290)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 360)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //6つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(20, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 290)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //7つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(90, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 80)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 290)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //8つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90,150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 290)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 290)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //9つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(90, 290)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(20, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 360)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //10つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 360)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 290)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 290)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //11つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(230, 290)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 360)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    
    //12つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(300, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 290)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //13つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(230, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 80)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 290)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 220)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];

    
    //14つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(230, 290)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 360)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //15つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90,150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 290)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 290)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //16つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(230, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(90, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 80)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(230, 290)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(300, 220)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];

    
    
    appDelegate.Datas = _data;
    appDelegate.Connect_num = _connect_num;
    
    appDelegate.able_line_count = 15;
    appDelegate.line_count = 0;
    
}

//問題8
-(IBAction)question8:(id)sender{
    
    _data = [[NSMutableArray alloc]init];
    _connect = [[NSMutableArray alloc]init];
    _connect_num = [[NSMutableArray alloc]init];
    
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    appDelegate.Datas = _data;
    appDelegate.Connect = _connect;
    appDelegate.Connect_num = _connect_num;
    
    
    //線の座標データ(x,y)
    //１つ目の点
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //2つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(80, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 180)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //3つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(120, 180)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 180)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //4つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 180)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 180)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //5つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(200, 180)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 180)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 300)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //6つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 180)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 180)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //7つ目(3つ目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(120, 180)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 180)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //8つ目(5つ目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(200, 180)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 180)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 300)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //9つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(240, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 180)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //10個目(1つ目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //11個目(1個目 終点)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 180)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 180)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    appDelegate.Datas = _data;
    appDelegate.Connect_num = _connect_num;
    
    appDelegate.able_line_count = 10;
    appDelegate.line_count = 0;
    
}

//問題9
-(IBAction)question9:(id)sender{
    
    _data = [[NSMutableArray alloc]init];
    _connect = [[NSMutableArray alloc]init];
    _connect_num = [[NSMutableArray alloc]init];
    
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    appDelegate.Datas = _data;
    appDelegate.Connect = _connect;
    appDelegate.Connect_num = _connect_num;
    
    
    //線の座標データ(x,y)
    //1つ目(始点)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(50, 320)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(250, 320)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //2つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(50, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50,320)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150, 120)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(250, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150,270)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //3つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(150, 120)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(250, 220)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //4つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(250, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150,120)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150,270 )]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(250, 320)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //5つ目(2つ目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(50, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50,320)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150, 120)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(250, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150,270)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //6つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(150, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 320)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(250, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(250, 320)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //7つ目(4つ目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(250, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150,120)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150,270 )]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(250, 320)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //8つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(250, 320)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50,320)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(250, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150, 270)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //9つ目(6つ目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(150, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 320)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(250, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(250, 320)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //10個目(1つ目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(50, 320)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(250, 320)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //11個目(8つ目 終点)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(250, 320)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50,320)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(250, 220)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(150, 270)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    appDelegate.Datas = _data;
    appDelegate.Connect_num = _connect_num;
    
    appDelegate.able_line_count = 10;
    appDelegate.line_count = 0;
    
}

//問題10
-(IBAction)question10:(id)sender{
    
    _data = [[NSMutableArray alloc]init];
    _connect = [[NSMutableArray alloc]init];
    _connect_num = [[NSMutableArray alloc]init];
    
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    appDelegate.Datas = _data;
    appDelegate.Connect = _connect;
    appDelegate.Connect_num = _connect_num;
    
    
    //線の座標データ(x,y)
    //１つ目の点(始点)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //2つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(120, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 225)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(60, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //3つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(80, 225)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(60, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(60, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //4つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(60, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 225)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 300)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //5つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(120, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 225)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(60, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 360)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //6つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(200, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 225)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 360)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //7つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(260, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 225)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //8つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(240, 225)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //9つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(200, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 225)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //10個目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(260, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 225)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //11個目(8個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(240, 225)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //12個目(6個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(200, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 225)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 360)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //13個目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 360)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 300)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //14個目(5個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(120, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 225)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(60, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 360)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //15個目(3個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(80, 225)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(60, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 300)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(60, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //16個目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(60, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 225)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //17個目(2個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(120, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 225)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(60, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //18個目(9個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(200, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 225)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //19個目(1個目 終点)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(160, 100)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(120, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(200, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    appDelegate.Datas = _data;
    appDelegate.Connect_num = _connect_num;
    
    appDelegate.able_line_count = 18;
    appDelegate.line_count = 0;
    
}

//問題11
-(IBAction)question11:(id)sender{
    
    _data = [[NSMutableArray alloc]init];
    _connect = [[NSMutableArray alloc]init];
    _connect_num = [[NSMutableArray alloc]init];
    
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    appDelegate.Datas = _data;
    appDelegate.Connect = _connect;
    appDelegate.Connect_num = _connect_num;
    
    
    //線の座標データ(x,y)
    //１つ目の点(始点)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(135, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //2つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(135, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 210)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //3つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(80, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 280)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //4つ目(1つ目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(135, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 380)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //5つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(185, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 280)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //6つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(240, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 280)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //7つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(185, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 210)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //8つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(135, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135,130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 210)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //9つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(80, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 130)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //10個目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(135, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 210)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //11個目(8個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(135, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135,130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 210)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    
    //12個目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(185, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 170)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //13個目(10個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(135, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(110, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 210)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //14個目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(185, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 170)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //15個目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(240, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 210)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //16個目(12個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(185, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 170)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //17個目(14個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(185, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 170)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //18個目(8個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(135, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 170)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135,130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 210)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //19個目(2個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(135, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(80, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 210)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //20個目(14個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(185, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 130)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 170)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //21個目(7個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(185, 280)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 210)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //22個目(5個目 終点)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(185, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(135, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(240, 380)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(185, 280)]];
    [_connect_num addObject:_connect];
    
    appDelegate.Datas = _data;
    appDelegate.Connect_num = _connect_num;
    
    appDelegate.able_line_count = 21;
    appDelegate.line_count = 0;
}

//問題12
-(IBAction)question12:(id)sender{
    
    _data = [[NSMutableArray alloc]init];
    _connect = [[NSMutableArray alloc]init];
    _connect_num = [[NSMutableArray alloc]init];
    
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    appDelegate.Datas = _data;
    appDelegate.Connect = _connect;
    appDelegate.Connect_num = _connect_num;
    
    
    //線の座標データ(x,y)
    //１つ目の点(始点)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(50, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 350)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //2つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(155, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 350)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //3つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(50, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 210)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //4つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(155, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 350)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //5つ目(1個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(50, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 350)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //6つ目(3つ目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(50, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 210)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //7つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(50, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //8つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(50, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //9つ目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(155, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 210)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //10個目(7個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(50, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 150)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //11個目(2個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(155, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 350)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //12個目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(260, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 270)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //13個目(9個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(155, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 210)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //14個目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(260, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 210)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //15個目(12個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(260, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 150)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 270)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //16個目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(260, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 350)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //17個目(2個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(155, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 350)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //18個目
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(260, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 370)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 270)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //19個目(16個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(260, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 210)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 350)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //20個目(4個目)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(155, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(50, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 350)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    //21個目(18個目 終点)
    [_data addObject:[NSValue valueWithCGPoint:CGPointMake(260, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 270)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(155, 350)]];
    [_connect addObject:[NSValue valueWithCGPoint:CGPointMake(260, 270)]];
    [_connect_num addObject:_connect];
    _connect = [[NSMutableArray alloc]init];
    
    appDelegate.Datas = _data;
    appDelegate.Connect_num = _connect_num;
    
    appDelegate.able_line_count = 20;
    appDelegate.line_count = 0;
    
}

@end
