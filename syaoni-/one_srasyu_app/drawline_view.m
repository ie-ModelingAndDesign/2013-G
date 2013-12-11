//
//  drawline_view.m
//  one_srasyu_app
//
//  Created by Shin,ichi  Uehara on 2013/11/21.
//  Copyright (c) 2013年 Shin,ichi  Uehara. All rights reserved.
//

#import "drawline_view.h"

@implementation drawline_view

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


- (void)drawRect:(CGRect)rect{
    
    
    // 直線を描画
    CGContextRef context = UIGraphicsGetCurrentContext();  // コンテキストを取得
    CGContextMoveToPoint(context, 150, 50);  // 始点
    CGContextAddLineToPoint(context, 200, 100);  // 終点
    
    CGContextMoveToPoint(context, 200, 100);  // 始点
    CGContextAddLineToPoint(context, 180, 150);  // 終
    
    CGContextMoveToPoint(context, 180, 150);  // 始点
    CGContextAddLineToPoint(context, 120, 150);  // 終
    
    CGContextMoveToPoint(context, 120, 150);  // 始点
    CGContextAddLineToPoint(context, 100, 100);  // 終
    
    CGContextMoveToPoint(context, 100, 100);  // 始点
    CGContextAddLineToPoint(context, 150, 50);  // 終
    
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
