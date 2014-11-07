//
//  Dice.m
//  Master1
//
//  Created by Davide Morelli on 07/11/14.
//  Copyright (c) 2014 unipi. All rights reserved.
//

#import "Dice.h"

@implementation Dice
@synthesize  lastValue = myLastValue;
- (int)roll
{
     myLastValue = rand() % 6;
    return myLastValue;
}

@end
