//
//  ViewController.h
//  Master2
//
//  Created by Davide Morelli on 08/11/14.
//  Copyright (c) 2014 unipi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property NSArray *dati;

@property (strong, nonatomic) IBOutlet UILabel *label2;

@property (strong, nonatomic) IBOutlet UITableView *table;


@end

