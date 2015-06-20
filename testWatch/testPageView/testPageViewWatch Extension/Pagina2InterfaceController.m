//
//  Pagina2InterfaceController.m
//  testPageView
//
//  Created by Davide Morelli on 19/06/15.
//  Copyright © 2015 BioBeats. All rights reserved.
//

#import "Pagina2InterfaceController.h"

@interface Pagina2InterfaceController ()

@end

@implementation Pagina2InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    NSLog(@"awakeWithContext PAGINA 2");
    
    [self becomeCurrentPage];
    // Configure interface objects here.
}
- (IBAction)bottonePigiato {
    [self.bottone setTitle:@"button pigiato"];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    NSLog(@"willActivate PAGINA 2");
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
    NSLog(@"didDeactivate PAGINA 2");
}

@end



