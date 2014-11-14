//
//  ViewController.m
//  Master2
//
//  Created by Davide Morelli on 08/11/14.
//  Copyright (c) 2014 unipi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize dati;

- (IBAction)buttonTouched:(id)sender {
    self.label2.text = @"toccato";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically fro" a nib.
    
    self.dati = [NSArray arrayWithObjects:@"uno", @"due", @"tre", @"uno", @"due", @"tre", @"uno", @"due", @"tre", @"uno", @"due", @"tre", @"uno", @"due", @"tre", @"uno", @"due", @"tre",  nil];
    self.table.delegate = self;
    self.table.dataSource = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dati.count;
}


-  (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    NSLog(@"cellForRowAtIndexPath: %i", indexPath.row);

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        NSLog(@"cell allocated");
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    } else
    {
        NSLog(@"cell reused");
    }
    
    cell.textLabel.text = [self.dati objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%i", indexPath.row);
}


@end
