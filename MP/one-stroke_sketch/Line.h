//
//  Line.h
//  one-stroke_sketch
//
//  Created by Shin,ichi  Uehara on 2013/12/04.
//  Copyright (c) 2013年 Shin,ichi  Uehara. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Line : NSObject
@property UIColor *color;
@property NSMutableArray *points;
@property double lineWidth;
@property CGPoint s_point;  //描画する線の始点座標
@property CGPoint e_point;  //描画する線の終点座標
@property Boolean able_draw;    //書いていいかどうか判断
@end

