//
//  Board.h
//  Master1
//
//  Created by Davide Morelli on 07/11/14.
//  Copyright (c) 2014 unipi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Board : NSObject

@property NSSet *listOfDice;

- (int) sumAll;

@end
