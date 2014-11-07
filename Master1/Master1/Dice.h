//
//  Dice.h
//  Master1
//
//  Created by Davide Morelli on 07/11/14.
//  Copyright (c) 2014 unipi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dadosita.h"

@interface Dice : NSObject <Dadosita>

@property int lastValue;

- (int)roll;


@end
