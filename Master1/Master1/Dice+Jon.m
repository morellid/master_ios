//
//  Dice+Jon.m
//  Master1
//
//  Created by Davide Morelli on 07/11/14.
//  Copyright (c) 2014 unipi. All rights reserved.
//

#import "Dice+Jon.h"

@implementation Dice (Jon)

- (NSString *)jonVersion
{
    return [NSString stringWithFormat:@"{num:%i}", self.lastValue];
}


@end
