//
//  question_draw.m
//  one-stroke_sketch
//
//  Created by Shin,ichi  Uehara on 2013/12/05.
//  Copyright (c) 2013年 Shin,ichi  Uehara. All rights reserved.
//

#import "question_draw.h"
#import "drawViewController.h"
#import "AppDelegate.h"

@interface question_draw (){
    
    //線を管理する配列
    NSMutableArray *_data;
    NSMutableArray *_connect;
    NSMutableArray *_connect_num;
    CGPoint _point;
    
    AppDelegate *appDelegate;
    
}
@end



@implementation question_draw


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
    
    
    //グローバル変数取得
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    
    // 直線を描画
    CGContextRef context = UIGraphicsGetCurrentContext();  // 線のコンテキストを取得
    CGContextRef context2 = UIGraphicsGetCurrentContext();  // 点のコンテキストを取得
    
    
    BOOL first = YES;   //視点かどうか判定
    //1本の線を書く
    for(NSValue *data in appDelegate.Datas){
        
        _point = [data CGPointValue];
            
        if(first){
            //初期位置に移動
            CGContextMoveToPoint(context, _point.x,_point.y);  // 始点
            first = NO;
        }else{
            //次のポイントに移動
            CGContextAddLineToPoint(context, _point.x, _point.y);  // 終点
        }
        
    }

    
    
    // 線の太さを指定
    CGContextSetLineWidth(context, 3.0);  // 12ptに設定
    
    // 終端の形を指定
    CGContextSetLineCap(context, kCGLineCapRound);  // 丸に設定
    
    // 線の色を指定
    UIColor *color = [UIColor cyanColor];
    CGContextSetStrokeColorWithColor(context, [color CGColor]);
    
    CGContextStrokePath(context);  // 線を描画！
    
    
    //色を設定
    //1本の線を書く
    for(NSValue *data in appDelegate.Datas){
            
        _point = [data CGPointValue];
            
        CGContextFillEllipseInRect(context2, CGRectMake(_point.x-10, _point.y-10, 20, 20));
    }
    

    
    CGContextStrokePath(context2);  // 点を描画！
    
    
}


@end