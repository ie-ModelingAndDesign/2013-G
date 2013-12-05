//
//  CanvasView.m
//  Oekaki
//
//  Created by clear  on 2013/11/28.
//  Copyright (c) 2013年 Kiyohiko.Iwamura. All rights reserved.
//

#import "CanvasView.h"

#import "Line.h"
@implementation CanvasView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    //lines配列からひとつの線を取り出す
    for(Line *line in self.lines) {
        //色を設定
        [line.color set];
        //1本の線を書く
        UIBezierPath *path = [UIBezierPath bezierPath];
        [path setLineWidth:line.lineWidth];//線幅
        BOOL first = YES;
        for (NSValue*value in line.points){
            if(first){
                //初期位置に移動
                [path moveToPoint:[value CGPointValue]];
                first = NO;
            }
            //次のポイントに移動
            [path addLineToPoint:[value CGPointValue]];
     }
            [path stroke];//線を描画
    }
}


@end
