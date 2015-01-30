//
//  ViewController.m
//  Master3a
//
//  Created by Davide Morelli on 21/11/14.
//  Copyright (c) 2014 com.biobeats. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Categorie.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ViewController
- (IBAction)transpose:(id)sender {
    [UIView animateWithDuration:5.0 animations:^{
        _myLabel.alpha = 0.0;
    }];
}
- (IBAction)rotate:(id)sender {
    [UIView animateWithDuration:5.0 animations:^{
        _myLabel.alpha = 1.0;
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
