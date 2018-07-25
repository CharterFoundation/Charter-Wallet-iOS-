//
//  ViewController.m
//  HSEther
//
//  Created by 侯帅 on 2018/4/20.
//  Copyright © 2018年 com.houshuai. All rights reserved.
//

#import "ViewController.h"

#import "BalanceVC.h"
#import "CreateVC.h"
#import "TransactionVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"HSEther.a 1.2";
    
}


- (IBAction)create:(id)sender {
    [self.navigationController pushViewController:[CreateVC new] animated:YES];
    
}

- (IBAction)balance:(id)sender {
    [self.navigationController pushViewController:[BalanceVC new] animated:YES];
}


- (IBAction)transaction:(id)sender {
    [self.navigationController pushViewController:[TransactionVC new] animated:YES];
}


@end
