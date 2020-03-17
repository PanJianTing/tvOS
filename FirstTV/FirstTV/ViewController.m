//
//  ViewController.m
//  FirstTV
//
//  Created by PAN on 2016/1/17.
//  Copyright © 2016年 PAN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *myButton;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


- (IBAction)buttonPress:(UIButton *)sender {
	
	self.myLabel.text = @"Hello World!!";
	
}

@end
