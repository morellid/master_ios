//
//  Board.m
//  Master1
//
//  Created by Davide Morelli on 07/11/14.
//  Copyright (c) 2014 unipi. All rights reserved.
//

#import "Board.h"
#import "Dice.h"

@implementation Board

@synthesize listOfDice = dice;

-(int)sumAll
{
    int sum = 0;
    for (Dice *d in dice) {
        sum += [d roll];
    }
    
    return  sum;
}

@end
