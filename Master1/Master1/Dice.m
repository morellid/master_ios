//
//  Dice.m
//  Master1
//
//  Created by Davide Morelli on 07/11/14.
//  Copyright (c) 2014 unipi. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (int)roll
{
    return rand() % 6;
}

@end
