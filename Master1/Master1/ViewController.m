//
//  ViewController.m
//  Master1
//
//  Created by Davide Morelli on 07/11/14.
//  Copyright (c) 2014 unipi. All rights reserved.
//

#import "ViewController.h"
#import "Board.h"
#import "Dice.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Board *board = [[Board alloc] init];
    board.listOfDice = [NSSet setWithArray:
                        [NSArray arrayWithObjects:
                         [[Dice alloc] init],
                         [[Dice alloc] init], nil]];
    
    NSLog(@"sum = %i", [board sumAll]);
    

    int mul = 10;
    
    void (^testBlock)(int) = ^(int a){
        NSLog(@"Integer is: %i", a * mul);
    };
    
    testBlock(1);
    mul = 20;

    void (^testBlock2)(int) = ^(int a){
        NSLog(@"Integer is: %i", a * mul);
    };

    testBlock2(1);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
