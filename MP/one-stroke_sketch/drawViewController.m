//
//  drawViewController.m
//  one-stroke_sketch
//
//  Created by Shin,ichi  Uehara on 2013/12/04.
//  Copyright (c) 2013年 Shin,ichi  Uehara. All rights reserved.
//


//タップ検出して座標などを渡すクラス


#import "drawViewController.h"
#import "question.h"
#import "Line.h"
#import "draw_question.h"

@interface drawViewController (){
    
    //線を管理する配列
    NSMutableArray *_lines;
    //1本の線
    Line *_line;
    //線色
    UIColor *_lineColor;
    //線の幅
    float _linewidth;
    
}

@end

@implementation drawViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //線を格納する配列を生成
    _lines = [[NSMutableArray alloc]init];
    
    //背景色を白に設定
    self.view.backgroundColor = [UIColor whiteColor];
    
    //デフォルトの線の色を黒に
    _lineColor = [UIColor blueColor];
    
    //線幅を12に設定
    _linewidth = 12.0;

}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    //現在の座標を取得
    CGPoint p = [[touches anyObject] locationInView:self.view];
    
    
    //座標が点の中であれば描画スタート
    if(CGRectContainsPoint(CGRectMake(100,100,20,20),p)){
    
        ((question *)(self.view)).lines = _lines;
    
        //１つの線を格納するオブジェクトを生成
        _line = [[Line alloc]init];
        _line.color = _lineColor;
        _line.lineWidth = _linewidth;
        _line.points = [[NSMutableArray alloc]init];
        _line.able_draw = NO;
    
        //線を配列「_lines」に格納
        [_lines addObject:_line];
    
        _line.s_point = p;
    
    }
    
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    //現在のポイントを線に追加
    CGPoint p = [[touches anyObject] locationInView:self.view];
    
    _line.e_point = p;
    
    //始点が点の位置以外にならようにする
    _line.able_draw = YES;
    
    //点をタッチした際の処理（点以外の場所では処理しない）
    if(CGRectContainsPoint(CGRectMake(200,100,10,10),p) || CGRectContainsPoint(CGRectMake(180,150,10,10),p) || CGRectContainsPoint(CGRectMake(120,150,10,10),p) || CGRectContainsPoint(CGRectMake(150,50,10,10),p) || CGRectContainsPoint(CGRectMake(100,100,10,10),p)){
        
        
        _line.e_point = p;
        
        ((question *)(self.view)).lines = _lines;
        
        //１つの線を格納するオブジェクトを生成
        _line = [[Line alloc]init];
        _line.color = _lineColor;
        _line.lineWidth = _linewidth;
        _line.points = [[NSMutableArray alloc]init];
        _line.able_draw = NO;
        
        //線を配列「_lines」に格納
        [_lines addObject:_line];
        
        _line.s_point = p;

        
    }
        
    //viewを書き換える
    if(_line.able_draw)
        [self.view setNeedsDisplay];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//各ボタンの機能

- (IBAction)seikaibtn:(id)sender {
    [self.view bringSubviewToFront:_q_continue];
}


- (IBAction)nextbtn:(id)sender {
    [self.view sendSubviewToBack:_q_continue];
}


//線を全て消去
- (IBAction)clearImage:(id)sender {
    
    [_lines removeAllObjects];
    [self.view setNeedsDisplay];
}



@end
