//
//  ViewController.m
//  tentosen
//
//  Created by clear  on 2013/12/04.
//  Copyright (c) 2013年 Kiyohiko.Iwamura. All rights reserved.
//

#import "ViewController.h"
#import "Line1.h"
#import "ByougaView.h"

@interface ViewController ()
{
    //線を管理する配列
    NSMutableArray *_lines;
    //1本の線
    Line1 *_line;
    //線色
    UIColor *_lineColor;
    //線の幅
    float _linewidth;
    
    //線を引き始めた場所
    int startpoint;
    //線を引き終わった場所
    int endpoint;

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
    _linewidth = 2.0;
    
    //初期化
    startpoint=0;
    endpoint=0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    ((ByougaView *)(self.view))
    .lines = _lines;
    
    //１つの線を格納するオブジェクトを生成
    _line = [[Line1 alloc]init];
    _line.color = _lineColor;
    _line.lineWidth = _linewidth;
    _line.points = [[NSMutableArray alloc]init];
    
    //線を配列「_lines」に格納
    [_lines addObject:_line];
    
    //現在のポイントを軌跡に追加
    UITouch *touch = [touches anyObject];
    CGPoint point =[touch locationInView:self.view];
   /*
    CGPoint points1 = CGPointMake(44,85);
    CGPoint points2 = CGPointMake(46,85);
    CGPoint points3 = CGPointMake(45,86);
    CGPoint points4 = CGPointMake(45,84);
    CGPoint points11 = CGPointMake(44.5,85.5);
    CGPoint points22 = CGPointMake(46.5,85.5);
    CGPoint points33 = CGPointMake(45.5,86.5);
    CGPoint points44 = CGPointMake(45.5,84.5);
    CGPoint points5 = CGPointMake(45,86.5);
    CGPoint points6 = CGPointMake(44,85.5);
*/
    CGPoint points0 = CGPointMake(45,85);
    CGPoint points1 = CGPointMake(205,85);
    CGPoint points2 = CGPointMake(45,305);
    CGPoint points3 = CGPointMake(205,305);
    
    CGRect rect0 = CGRectMake(40, 80, 10,10);
    CGRect rect1 = CGRectMake(200, 80, 10,10);
    CGRect rect2 = CGRectMake(40, 300, 10,10);
    CGRect rect3 = CGRectMake(200, 300, 10,10);

   /* switch (endpoint) {
        case 1:
            
            
            
            
            if(CGRectContainsPoint(rect1, point)){
            [_line.points addObject:[NSValue valueWithCGPoint:points1]];
            
            //viewを書き換える
            [self.view setNeedsDisplay];
            NSLog(@"x=%f",point.x);
            NSLog(@"y=%f",point.y);
            startpoint=2;
            
        }else if(CGRectContainsPoint(rect2, point)){
                    [_line.points addObject:[NSValue valueWithCGPoint:points2]];
                    
                    //viewを書き換える
                    [self.view setNeedsDisplay];
                    NSLog(@"x=%f",point.x);
                    NSLog(@"y=%f",point.y);
                    startpoint=3;
                    
                }else  if(CGRectContainsPoint(rect3, point)){
                    [_line.points addObject:[NSValue valueWithCGPoint:points3]];
                    
                    //viewを書き換える
                    [self.view setNeedsDisplay];
                    NSLog(@"x=%f",point.x);
                    NSLog(@"y=%f",point.y);
                    startpoint=4;
                    
                }
            
            break;
        case 2:
            if(CGRectContainsPoint(rect0, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points0]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=1;
                
            }else  if(CGRectContainsPoint(rect2, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points2]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=3;
                
            }else if(CGRectContainsPoint(rect3, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points3]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=4;
                
            }

            break;
            
        case 3:
            if(CGRectContainsPoint(rect0, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points0]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=1;
                
            }else if(CGRectContainsPoint(rect1, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points1]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=2;
                
            }else if(CGRectContainsPoint(rect3, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points3]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=4;
                
            }


            

            break;
            
        case 4:
            if(CGRectContainsPoint(rect0, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points0]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=1;
                
            }else if(CGRectContainsPoint(rect1, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points1]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=2;
                
            }else if(CGRectContainsPoint(rect2, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points2]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=3;
                
            }

            break;
            
        default:*/
            if(CGRectContainsPoint(rect0, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points0]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=1;
                
            }
            if(CGRectContainsPoint(rect1, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points1]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=2;
                
            }
            if(CGRectContainsPoint(rect2, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points2]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=3;
                
            }
            if(CGRectContainsPoint(rect3, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points3]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=4;
                
            }
/*
            break;
    }
    
    
    
    */
    
    
    
    
    
    
    
    
    
    
  /*
    
    
    
    
     if(CGRectContainsPoint(rect0, point)){
        [_line.points addObject:[NSValue valueWithCGPoint:points0]];
        
        //viewを書き換える
        [self.view setNeedsDisplay];
        NSLog(@"x=%f",point.x);
        NSLog(@"y=%f",point.y);

  
    }
    if(CGRectContainsPoint(rect1, point)){
        [_line.points addObject:[NSValue valueWithCGPoint:points1]];
        
        //viewを書き換える
        [self.view setNeedsDisplay];
        NSLog(@"x=%f",point.x);
        NSLog(@"y=%f",point.y);
        
        
    }
    if(CGRectContainsPoint(rect2, point)){
        [_line.points addObject:[NSValue valueWithCGPoint:points2]];
        
        //viewを書き換える
        [self.view setNeedsDisplay];
        NSLog(@"x=%f",point.x);
        NSLog(@"y=%f",point.y);
        
        
    }
    if(CGRectContainsPoint(rect3, point)){
        [_line.points addObject:[NSValue valueWithCGPoint:points3]];
        
        //viewを書き換える
        [self.view setNeedsDisplay];
        NSLog(@"x=%f",point.x);
        NSLog(@"y=%f",point.y);
        
        
    }*/

   }

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
  
    UITouch *touch = [touches anyObject];
    CGPoint point =[touch locationInView:self.view];
    CGPoint points0 = CGPointMake(45,85);
    CGPoint points1 = CGPointMake(205,85);
    CGPoint points2 = CGPointMake(45,305);
    CGPoint points3 = CGPointMake(205,305);

    CGRect rect0 = CGRectMake(40, 80, 10,10);
    CGRect rect1 = CGRectMake(200, 80, 10,10);
    CGRect rect2 = CGRectMake(40, 300, 10,10);
    CGRect rect3 = CGRectMake(200, 300, 10,10);
/*
   
    switch (startpoint) {
        case 1:
            if(CGRectContainsPoint(rect1, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points1]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                endpoint=2;
            }else if(CGRectContainsPoint(rect2, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points2]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                endpoint=3;
                
            }else if(CGRectContainsPoint(rect3, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points3]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                endpoint=4;
            }
            break;
        
        case 2:
            if(CGRectContainsPoint(rect0, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points0]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                endpoint=1;
            }else if(CGRectContainsPoint(rect2, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points2]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=3;
                
            }else if(CGRectContainsPoint(rect3, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points3]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                endpoint=4;
            }

            
            break;
        
        case 3:
            if(CGRectContainsPoint(rect0, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points0]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=1;
                
            } else if(CGRectContainsPoint(rect1, point)){
                    [_line.points addObject:[NSValue valueWithCGPoint:points1]];
                    
                    //viewを書き換える
                    [self.view setNeedsDisplay];
                    NSLog(@"x=%f",point.x);
                    NSLog(@"y=%f",point.y);
                    endpoint=2;
}
            else if(CGRectContainsPoint(rect3, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points3]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                startpoint=4;
                
            }


            break;
            
        case 4:
            if(CGRectContainsPoint(rect0, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points0]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                endpoint=1;
                
            }else if(CGRectContainsPoint(rect1, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points1]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                endpoint=2;
            }else if(CGRectContainsPoint(rect2, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points2]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                endpoint=3;
                
            }

            
            break;
            
        default:*/
            
            if(CGRectContainsPoint(rect0, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points0]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                endpoint=1;
                
            }
            if(CGRectContainsPoint(rect1, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points1]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                endpoint=2;
            }
            if(CGRectContainsPoint(rect2, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points2]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                endpoint=3;
                
            }
            if(CGRectContainsPoint(rect3, point)){
                [_line.points addObject:[NSValue valueWithCGPoint:points3]];
                
                //viewを書き換える
                [self.view setNeedsDisplay];
                NSLog(@"x=%f",point.x);
                NSLog(@"y=%f",point.y);
                endpoint=4;
/*
            break;
    }
    
    
    
    
    */
    
    
    
    
   /*
    
    
    if(CGRectContainsPoint(rect0, point)){
        [_line.points addObject:[NSValue valueWithCGPoint:points0]];
        
        //viewを書き換える
        [self.view setNeedsDisplay];
        NSLog(@"x=%f",point.x);
        NSLog(@"y=%f",point.y);
        endpoint=1;
        
    }
    if(CGRectContainsPoint(rect1, point)){
        [_line.points addObject:[NSValue valueWithCGPoint:points1]];
        
        //viewを書き換える
        [self.view setNeedsDisplay];
        NSLog(@"x=%f",point.x);
        NSLog(@"y=%f",point.y);
        endpoint=2;
    }
    if(CGRectContainsPoint(rect2, point)){
        [_line.points addObject:[NSValue valueWithCGPoint:points2]];
        
        //viewを書き換える
        [self.view setNeedsDisplay];
        NSLog(@"x=%f",point.x);
        NSLog(@"y=%f",point.y);
        endpoint=3;
        
    }
    if(CGRectContainsPoint(rect3, point)){
        [_line.points addObject:[NSValue valueWithCGPoint:points3]];
        
        //viewを書き換える
        [self.view setNeedsDisplay];
        NSLog(@"x=%f",point.x);
        NSLog(@"y=%f",point.y);
        endpoint=4;
        
    */
    }
}



/*- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point =[touch locationInView:self.view];
    CGPoint points = CGPointMake(55, 95);

    
    if (CGPointEqualToPoint(point, points)){

        
        
    //現在のポイントを線に追加
   UITouch *touch = [touches anyObject];
    CGPoint point =[touch locationInView:self.view];
    [_line.points addObject:[NSValue valueWithCGPoint:point]];
    
    //viewを書き換える
    [self.view setNeedsDisplay];
    }
}
*/

@end
