//
//  drawline_view.m
//  gamenseni2
//
//  Created by Shin,ichi  Uehara on 2013/11/27.
//  Copyright (c) 2013年 Kiyohiko.Iwamura. All rights reserved.
//

#import "drawline_view.h"

@implementation drawline_view


float start_x;
float start_y;
float end_x;
float end_y;




- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        self.sx = [[NSMutableArray alloc]init];
        self.sy = [[NSMutableArray alloc]init];
        self.ex = [[NSMutableArray alloc]init];
        self.ey = [[NSMutableArray alloc]init];
        
        self.us = [NSUserDefaults standardUserDefaults];
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


// 画面に指を一本以上タッチしたときに実行されるメソッド
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches count : %d (touchesBegan:withEvent:)", [touches count]);
    CGPoint p = [[touches anyObject] locationInView:self];
    start_x = p.x;    // X座標
    start_y = p.y;    // Y座標
    
    //X座標
    /*[self.sx addObject:[NSNumber numberWithInt:100]];
    int ix = [[self.sx lastObject] intValue];
    
    //X座標
    [self.sy addObject:[NSNumber numberWithInt:100]];
    int iy = [[self.sy lastObject] intValue];*/
    
    NSNumber *number_x = [NSNumber numberWithFloat:p.x];
    NSNumber *number_y = [NSNumber numberWithFloat:p.y];
    int ix = [number_x intValue];
    int iy = [number_y intValue];
    
    
    NSLog(@"plot_x : %f : %d",start_x,ix);
    NSLog(@"plot_y : %f : %d",start_y,iy);
    
    
}

// 画面に触れている指が一本以上移動したときに実行されるメソッド
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches count : %d (touchesMoved:withEvent:)", [touches count]);
    
    
    CGPoint p = [[touches anyObject] locationInView:self];
    end_x = p.x;    // X座標
    end_y = p.y;    // Y座標
    
    //X座標
    /*[self.ex addObject:[NSNumber numberWithInt:p.x]];
    end_x = [[self.ex lastObject] floatValue];
     
    //Y座標
    [self.ey addObject:[NSNumber numberWithInt:p.y]];
    end_y = [[self.ey lastObject] floatValue];*/
    
    
    
    //再描画
    [self setNeedsDisplay];
    
}

// 指を一本以上画面から離したときに実行されるメソッド
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches count : %d (touchesEnded:withEvent:)", [touches count]);
    
    CGPoint p = [[touches anyObject] locationInView:self];
    end_x = p.x;    // X座標
    end_y = p.y;    // Y座標
    
    //X座標
    /*[self.ex addObject:[NSNumber numberWithInt:p.x]];
    end_x = [[self.ex lastObject] floatValue];
    
    //X座標
    [self.ey addObject:[NSNumber numberWithInt:p.x]];
    end_y = [[self.ey lastObject] floatValue];*/
    
    //再描画
    [self setNeedsDisplay];
    
}

// システムイベントがタッチイベントをキャンセルしたときに実行されるメソッド
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches count : %d (touchesCancelled:withEvent:)", [touches count]);
}




- (void)drawRect:(CGRect)rect{
    
    
    
    // 直線を描画
    CGContextRef context = UIGraphicsGetCurrentContext();  // コンテキストを取得
    CGContextMoveToPoint(context, start_x, start_y);  // 始点
    CGContextAddLineToPoint(context, end_x, end_y);  // 終点
    
    /*CGContextMoveToPoint(context, 200, 100);  // 始点
    CGContextAddLineToPoint(context, 180, 150);  // 終
    
    CGContextMoveToPoint(context, 180, 150);  // 始点
    CGContextAddLineToPoint(context, 120, 150);  // 終
    
    CGContextMoveToPoint(context, 120, 150);  // 始点
    CGContextAddLineToPoint(context, 100, 100);  // 終
    
    CGContextMoveToPoint(context, 100, 100);  // 始点
    CGContextAddLineToPoint(context, 150, 50);  // 終*/
    
    // 線の太さを指定
    CGContextSetLineWidth(context, 12.0);  // 12ptに設定
    
    // 終端の形を指定
    CGContextSetLineCap(context, kCGLineCapRound);  // 丸に設定
    
    // 線の色を指定
    //CGContextRGBStrokeColor(context, 0, 0, 1, 1);  // 青色に設定
    UIColor *color = [UIColor blueColor];
    CGContextSetStrokeColorWithColor(context, [color CGColor]);
    
    CGContextStrokePath(context);  // 描画！
    
    
}





@end
