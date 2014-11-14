//
//  ViewController.m
//  MessWithMem
//
//  Created by Davide Morelli on 14/11/14.
//  Copyright (c) 2014 com.biobeats. All rights reserved.
//

#import "ViewController.h"
#import "NSCoso.h"
@interface ViewController ()
{
    NSCoso *coso;
}

@end

@implementation ViewController
- (IBAction)buttonTouched:(id)sender {
    NSLog(@"%@", coso);
    [coso release];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //@autoreleasepool {
    [self creaCoso];
    [coso retain];
    //}
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)creaCoso
{
    coso = [[[NSCoso alloc] init] autorelease];
}



@end
