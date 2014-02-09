//
//  drawViewController.m
//  one-stroke_sketch
//
//  Created by Shin,ichi  Uehara on 2013/12/04.
//  Copyright (c) 2013年 Shin,ichi  Uehara. All rights reserved.
//


//タップ検出して座標などを渡すクラス


#import "drawViewController.h"
#import "Line.h"
#import "answer_draw.h"
#import "question_draw.h"
#import "AppDelegate.h" //AppDelegateにある値をグローバル関数に様に使う（あまり良い方法でない）


@interface drawViewController (){
    
    //線を管理する配列
    NSMutableArray *_lines;
    //1本の線
    Line *_line;
    //線色
    UIColor *_lineColor;
    //線の幅
    float _linewidth;
    
    AppDelegate *appDelegate;   //線のデータを読み込むためのappDelegate
    
    int i,j;  //connectの番号
    
    NSMutableArray *_data;
    
    Boolean first;
    
    //not_connect_point,not_connect_points
    NSMutableArray *ncp,*Ncps;
    
    Boolean connect_able;
    
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

//viewが呼び出された時最初の一回だけ呼び出される
//ここでは各変数の初期値を決定する
- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //線を格納する配列を生成
    _lines = [[NSMutableArray alloc]init];
    
    //背景色を白に設定
    self.view.backgroundColor = [UIColor whiteColor];
    
    //デフォルトの線の色を青に
    _lineColor = [UIColor blueColor];
    
    //線幅を12に設定
    _linewidth = 12.0;
    
    //グローバル変数のように使う
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    _data = appDelegate.Datas;
    
    //最初の線かどうかの判定
    first = YES;
    
    Ncps = [[NSMutableArray alloc]init];
    ncp = [[NSMutableArray alloc]init];
    
    j = 0;

}


//タッチ始めの処理
//点をタッチした時そこが線の引き始めとなる
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    //現在の座標を取得
    CGPoint p = [[touches anyObject] locationInView:self.view];
    
    NSLog(@"%d,%d",appDelegate.able_line_count,appDelegate.line_count);
    
    //iをリセット
    i = 0;
    
    connect_able = YES;
    
    //点をタッチした際の処理（点以外の場所では処理しない）
    //受け取った点の座標を全部回す
    //線がつながっていないところには引けない
    for(NSValue *data in appDelegate.Datas){
        
        CGPoint _point = [data CGPointValue];
        
        connect_able = YES;
        
        //座標が点の中であれば描画スタート
        //最初線を引くときのみ
        if(CGRectContainsPoint(CGRectMake(_point.x-10,_point.y-10,20,20),p) && first){
            
            _line.e_point = _point;
            
            ((answer_draw *)(self.view)).lines = _lines;
            
            //１つの線を格納するオブジェクトを生成
            _line = [[Line alloc]init];
            _line.color = _lineColor;
            _line.lineWidth = _linewidth;
            _line.points = [[NSMutableArray alloc]init];
            _line.able_draw = NO;
            
            //*front_point = _point;
            
            //線を配列「_lines」に格納
            [_lines addObject:_line];
            
            _line.s_point = _point;
            
            first = NO;
            
            //[not_connect_point addObject:[NSNumber numberWithInt:i]];
            
        }

        
        /*if(CGRectContainsPoint(CGRectMake(_point.x-10,_point.y-10,20,20),p))
            check_point = i;
        
        for(NSNumber *check in not_connect_point){
            
            if(check_point == [check integerValue])
                connect_able = NO;
            
        }*/
        
        
        //一度引いた線かどうか判定
        //引かれていたらconnect_ableにNOで線は引かない
        if(CGRectContainsPoint(CGRectMake(_point.x-10,_point.y-10,20,20),p)){
            //check_point = i;
            for (NSMutableArray *checks in Ncps) {
                
                if(CGPointEqualToPoint(_line.s_point, [[checks objectAtIndex:0] CGPointValue]) &&
                   CGPointEqualToPoint(_point, [[checks objectAtIndex:1] CGPointValue])){
                    connect_able = NO;
                }
                
                if (CGPointEqualToPoint(_line.s_point, [[checks objectAtIndex:1] CGPointValue]) &&
                    CGPointEqualToPoint(_point, [[checks objectAtIndex:2] CGPointValue])) {
                    connect_able = NO;
                }
                
            }
            
        }
        
        
        //最初以外
        //dataの点とつながっている点を_connectに
        for(NSValue *_connect in [appDelegate.Connect_num objectAtIndex:i]){
            
            
            //もしタップしている座標が点の上ならば新しい線を描画
            if(CGRectContainsPoint(CGRectMake(_point.x-10,_point.y-10,20,20),p) && CGPointEqualToPoint(_line.s_point, [_connect CGPointValue]) && connect_able){
                
                
                _line.e_point = _point;
                
                //一度引いた線を記録
                [ncp addObject:[NSValue valueWithCGPoint:_line.s_point]];
                [ncp addObject:[NSValue valueWithCGPoint:_line.e_point]];
                [ncp addObject:[NSValue valueWithCGPoint:_line.s_point]];
                [Ncps addObject:ncp];
                ncp = [[NSMutableArray alloc]init];
                
                
                ((answer_draw *)(self.view)).lines = _lines;
                
                
                //１つの線を格納するオブジェクトを生成
                _line = [[Line alloc]init];
                _line.color = _lineColor;
                _line.lineWidth = _linewidth;
                _line.points = [[NSMutableArray alloc]init];
                _line.able_draw = NO;
                
                //線を配列「_lines」に格納
                [_lines addObject:_line];
                
                _line.s_point = _point;
                
                //新たに線を引いたのでカウント
                appDelegate.line_count += 1;
            }
        }
        i += 1;
    }

    
}



//タッチしてスライドしているときの処理
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    //現在のポイントを線に追加
    CGPoint p = [[touches anyObject] locationInView:self.view];
    _line.e_point = p;
    
    //始点が点の位置以外にならようにする
    _line.able_draw = YES;
    
    //iをリセット
    i = 0;
    
    //点をタッチした際の処理（点以外の場所では処理しない）
    //受け取った点の座標を全部回す
    //線がつながっていないところには引けない
    for(NSValue *data in appDelegate.Datas){
        
        CGPoint _point = [data CGPointValue];
        
        connect_able = YES;
        
        
        //一度引いた線かどうか判定
        //引かれていたらconnect_ableにNOで線は引かない
        if(CGRectContainsPoint(CGRectMake(_point.x-10,_point.y-10,20,20),p)){
            //check_point = i;
            for (NSMutableArray *checks in Ncps) {
                
                if(CGPointEqualToPoint(_line.s_point, [[checks objectAtIndex:0] CGPointValue]) &&
                   CGPointEqualToPoint(_point, [[checks objectAtIndex:1] CGPointValue])){
                    connect_able = NO;
                }
                
                if (CGPointEqualToPoint(_line.s_point, [[checks objectAtIndex:1] CGPointValue]) &&
                    CGPointEqualToPoint(_point, [[checks objectAtIndex:2] CGPointValue])) {
                    connect_able = NO;
                }
                
            }
            
        }
        
        
        
        //dataの点とつながっている点を_connectに
        for(NSValue *_connect in [appDelegate.Connect_num objectAtIndex:i]){
        
            
            //もしタップしている座標が点の上ならば新しい線を描画
            if(CGRectContainsPoint(CGRectMake(_point.x-10,_point.y-10,15,15),p) && CGPointEqualToPoint(_line.s_point, [_connect CGPointValue]) && connect_able){
                
                _line.e_point = _point;
                
                //一度引いた線を記録
                [ncp addObject:[NSValue valueWithCGPoint:_line.s_point]];
                [ncp addObject:[NSValue valueWithCGPoint:_line.e_point]];
                [ncp addObject:[NSValue valueWithCGPoint:_line.s_point]];
                [Ncps addObject:ncp];
                ncp = [[NSMutableArray alloc]init];
                
                
                ((answer_draw *)(self.view)).lines = _lines;
                
                //１つの線を格納するオブジェクトを生成
                _line = [[Line alloc]init];
                _line.color = _lineColor;
                _line.lineWidth = _linewidth;
                _line.points = [[NSMutableArray alloc]init];
                _line.able_draw = NO;
                
                //線を配列「_lines」に格納
                [_lines addObject:_line];
                
                _line.s_point = _point;
                
                //新たに線を引いたのでカウント
                appDelegate.line_count += 1;
                
            }
        }
        i += 1;
    }
    
    
    
    /*ここに正解した際の処理をかく
    if(appDelegate.able_line_count == appDelegate.line_count){
        
        //テンプレのアラート
        UIAlertView *alert =
        [[UIAlertView alloc]
         initWithTitle:@"タイトル"
         message:@"メッセージ"
         delegate:nil
         cancelButtonTitle:nil
         otherButtonTitles:@"OK", nil
         ];
        
        [alert show];
        
    }
*/
    

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
//今無し
- (IBAction)seikaibtn:(id)sender {
    //[self.view bringSubviewToFront:_q_continue];
    
    if(appDelegate.able_line_count == appDelegate.line_count){
        
        //テンプレのアラート
        UIAlertView *alert =
        [[UIAlertView alloc]
         initWithTitle:@"判定結果は..."
         message:@"正解です"
         delegate:self
         cancelButtonTitle:nil
         otherButtonTitles:@"戻る", nil
         ];
        
        [alert show];
        
    }
    if(appDelegate.able_line_count != appDelegate.line_count){
        
        //テンプレのアラート
        UIAlertView *alert1=
        [[UIAlertView alloc]
         initWithTitle:@"判定結果は..."
         message:@"不正解です"
         delegate:nil
         cancelButtonTitle:nil
         otherButtonTitles:@"OK", nil
         ];
        
        [alert1 show];
        
    }
    
    
    
    
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
            case 0:
            [self performSegueWithIdentifier:@"back" sender:self];
            break;
            default:
            break;
        }
}




//今無し
- (IBAction)nextbtn:(id)sender {
    [self.view sendSubviewToBack:_q_continue];
}


//線を全て消去
- (IBAction)clearImage:(id)sender {
    
    [_lines removeAllObjects];
    [self.view setNeedsDisplay];
    first = YES;
    //not_connect_point = [[NSMutableArray alloc]init];
    Ncps = [[NSMutableArray alloc]init];
    appDelegate.line_count = 0;
}


@end
