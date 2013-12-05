//
//  ViewController.m
//  Oekaki
//
//  Created by clear  on 2013/11/28.
//  Copyright (c) 2013年 Kiyohiko.Iwamura. All rights reserved.
//

#import "ViewController.h"
#import "Line.h"
#import "CanvasView.h"

@interface ViewController ()
{
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

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //線を格納する配列を生成
    _lines = [[NSMutableArray alloc]init];
    
    //背景色を城に設定
    self.view.backgroundColor = [UIColor whiteColor];
    
    //デフォルトの線の色を黒に
    _lineColor = [UIColor blackColor];
   
    //線幅を5に設定
    _linewidth = 5.0;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    ((CanvasView *)(self.view))
    .lines = _lines;
    
    //１つの線を格納するオブジェクトを生成
    _line = [[Line alloc]init];
    _line.color = _lineColor;
    _line.lineWidth = _linewidth;
    _line.points = [[NSMutableArray alloc]init];
    
    //線を配列「_lines」に格納
    [_lines addObject:_line];

    //現在ののポイントを軌跡に追加
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    [_line.points addObject:[NSValue valueWithCGPoint:point]];
    
    //viewを書き換える
    [self.view setNeedsDisplay];
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    //現在のポイントを線に追加
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    [_line.points addObject:[NSValue valueWithCGPoint:point]];
    
    //viewを書き換える
    [self.view setNeedsDisplay];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//１つ前の線を消す
- (IBAction)undo:(id)sender {
    if([_lines count]) {
        [_lines removeLastObject];
        [self.view setNeedsDisplay];
    }
}

//全ての線を消す
- (IBAction)clearImage:(id)sender {
    [_lines removeAllObjects];
    [self.view setNeedsDisplay];
}

//色を変える
- (IBAction)changeColor:(id)sender {

    switch (self.colorSegmentControl.selectedSegmentIndex) {
        case 0:
            _lineColor = [UIColor blackColor];
            break;
            
        case 1:
            _lineColor = [UIColor redColor];
            break;
        case 2:
            _lineColor = [UIColor blueColor];
            break;
        default:
            break;
    }
    
    
}

@end
