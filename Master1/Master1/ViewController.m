//
//  ViewController.m
//  Master1
//
//  Created by Davide Morelli on 07/11/14.
//  Copyright (c) 2014 unipi. All rights reserved.
//

#import "ViewController.h"
#import "Dice.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    Dice *dice = [[Dice alloc] init];
    int num = [dice roll];
    NSLog(@"%i", num);

    num = [dice rollWithMin:0 andMax:10];
    NSLog(@"%i", num);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
