//
//  ByougaView.m
//  tentosen
//
//  Created by clear  on 2013/12/04.
//  Copyright (c) 2013年 Kiyohiko.Iwamura. All rights reserved.
//

#import "ByougaView.h"
#import "Line1.h"

@implementation ByougaView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    //円を記述する
    [[UIColor greenColor] setStroke];
    //中心座標;(45,85)
    UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(40, 80, 10,10 )];
    //中心座表;(205,85)
    UIBezierPath *circle1 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(200, 80, 10,10 )];
    //中心座標;(45,305)
    UIBezierPath *circle2 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(40, 300, 10,10 )];
    //中心座標;(205,305)
    UIBezierPath *circle3 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(200, 300, 10,10 )];

    [circle setLineWidth:5];
    [circle stroke];
    
    [circle1 setLineWidth:5];
    [circle1 stroke];
    
    [circle2 setLineWidth:5];
    [circle2 stroke];
    
    [circle3 setLineWidth:5];
    [circle3 stroke];

    //lines配列からひとつの線を取り出す
    for(Line1 *line in self.lines) {
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
