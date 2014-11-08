//
//  Dice2.m
//  Master1
//
//  Created by Davide Morelli on 07/11/14.
//  Copyright (c) 2014 unipi. All rights reserved.
//

#import "Dice2.h"

@implementation Dice2

+ (id)instance
{
    static Dice2 *inst;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (inst == nil)
        {
            inst = [[Dice2 alloc] init];
        }
    });
    
    return inst;
}

@end
