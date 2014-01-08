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


@end
