//
//  ViewController.m
//  Question
//
//  Created by PAN on 2016/1/17.
//  Copyright © 2016年 PAN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

-(void) showAlert: (NSString *) title Content: (NSString *) content{
//	UIAlertAction *alert = [[UIAlertAction alloc] init];
	
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
																   message:content
															preferredStyle:UIAlertControllerStyleAlert];
	
	
//	[alert showViewController:self sender:alert];
	[self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)pressButton:(UIButton *)sender {
	[self showAlert:@"Test" Content:@"HAHA"];
	
}




@end
