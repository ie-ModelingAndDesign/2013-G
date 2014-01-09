//
//  ViewController.m
//  janken
//
//  Created by Toshiki SAKATA on 2014/01/08.
//  Copyright (c) 2014年 Toshiki SAKATA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImage *gu_img;
    UIImage *tyo_img;
    UIImage *pa_img;
}
@property (weak, nonatomic) IBOutlet UILabel *lbl_msg;
@property (weak, nonatomic) IBOutlet UILabel *lbl_aite;
@property (weak, nonatomic) IBOutlet UILabel *lbl_kekka;
@property (weak, nonatomic) IBOutlet UIButton *btn_gu;
@property (weak, nonatomic) IBOutlet UIButton *btn_tyoki;
@property (weak, nonatomic) IBOutlet UIButton *btn_pa;
@property (weak, nonatomic) IBOutlet UIButton *btn_again;

- (IBAction)btn_gu_dwn:(id)sender;
- (IBAction)btn_tyoki_dwn:(id)sender;
- (IBAction)btn_pa_dwn:(id)sender;
- (IBAction)btn_again_dwn:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *view_aite;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.lbl_aite.text = @"";
    self.lbl_kekka.text = @"";
    
    gu_img = [ UIImage imageNamed:@"gu.png"];
    tyo_img = [ UIImage imageNamed:@"tyo.png"];
    pa_img = [ UIImage imageNamed:@"pa.png"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn_gu_dwn:(id)sender {
    self.lbl_msg.text = @"じゃんけん、ぽん！";
    self.btn_tyoki.hidden = YES;
    self.btn_pa.hidden = YES;
    self.view_aite.hidden = NO;
    
    srand(time(nil));
    NSInteger mac_janken;
    mac_janken = rand()% 3;
    if (mac_janken == 0){
        self.lbl_aite.text = @"ぐー";
        self.lbl_kekka.text = @"あいこで・・・";
        self.view_aite.image = gu_img;
        self.btn_tyoki.hidden = NO;
        self.btn_pa.hidden = NO;
    }
    if (mac_janken == 1){
        self.lbl_aite.text = @"ちょき";
        self.view_aite.image = tyo_img;
        self.lbl_kekka.text =@"あなたの勝ち";
        
        self.btn_gu.enabled = NO;
        
    }
    if (mac_janken == 2){
        self.lbl_aite.text = @"ぱー";
        self.lbl_kekka.text = @"あなたの負け";
        self.view_aite.image = pa_img;
        
        self.btn_gu.enabled = NO;
    }

}

- (IBAction)btn_tyoki_dwn:(id)sender {
    self.lbl_msg.text = @"じゃんけん、ぽん！";
    self.btn_gu.hidden = YES;
    self.btn_pa.hidden = YES;
    self.view_aite.hidden = NO;
    
    srand(time(nil));
    NSInteger mac_janken;
    mac_janken = rand()% 3;
    if (mac_janken == 0){
        self.lbl_aite.text = @"ぐー";
        self.lbl_kekka.text = @"あなたの負け";
        self.view_aite.image = gu_img;
        self.btn_gu.hidden = YES;
        self.btn_pa.hidden = YES;
        self.btn_tyoki.enabled = NO;
    }
    if (mac_janken == 1){
        self.lbl_aite.text = @"ちょき";
        self.view_aite.image = tyo_img;
        self.lbl_kekka.text =@"あいこで・・・";
        self.btn_gu.hidden = NO;
        self.btn_pa.hidden = NO;
        
    }
    if (mac_janken == 2){
        self.lbl_aite.text = @"ぱー";
        self.lbl_kekka.text = @"あなたの勝ち";
        self.view_aite.image = pa_img;
        
        self.btn_tyoki.enabled = NO;
    }

}

- (IBAction)btn_pa_dwn:(id)sender {
    self.lbl_msg.text = @"じゃんけん、ぽん！";
    self.btn_tyoki.hidden = YES;
    self.btn_gu.hidden = YES;
    self.view_aite.hidden = NO;
    
    srand(time(nil));
    NSInteger mac_janken;
    mac_janken = rand()% 3;
    if (mac_janken == 0){
        self.lbl_aite.text = @"ぐー";
        self.lbl_kekka.text = @"あなたの勝ち";
        self.view_aite.image = gu_img;
        self.btn_gu.hidden = YES;
        self.btn_tyoki.hidden = YES;
        self.btn_pa.enabled = NO;
    }
    if (mac_janken == 1){
        self.lbl_aite.text = @"ちょき";
        self.view_aite.image = tyo_img;
        self.lbl_kekka.text =@"あなたの負け";
        self.btn_gu.hidden = YES;
        self.btn_tyoki.hidden = YES;
        self.btn_pa.enabled = NO;
    }
    if (mac_janken == 2){
        self.lbl_aite.text = @"ぱー";
        self.lbl_kekka.text = @"あいこで・・・";
        self.view_aite.image = pa_img;
        self.btn_gu.hidden = NO;
        self.btn_tyoki.hidden = NO;
    }
    

    
}

- (IBAction)btn_again_dwn:(id)sender {
    self.lbl_msg.text = @"じゃんけん、・・・";
    self.btn_gu.hidden = NO;
    self.btn_tyoki.hidden = NO;
    self.btn_pa.hidden = NO;
    
    self.btn_gu.enabled = YES;
    self.btn_tyoki.enabled = YES;
    self.btn_pa.enabled = YES;
    
    self.lbl_aite.text = @"";
    self.lbl_kekka.text = @"";
    self.view_aite.hidden = YES;
}
@end
