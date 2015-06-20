//
//  InterfaceController.m
//  testPageViewWatch Extension
//
//  Created by Davide Morelli on 19/06/15.
//  Copyright © 2015 BioBeats. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    NSLog(@"awakeWithContext");

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"willActivate");

    
    [super willActivate];
}

- (void)didDeactivate {
    NSLog(@"didDeactivate");

    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



