//
//  ViewController.m
//  Master4
//
//  Created by Davide Morelli on 21/11/14.
//  Copyright (c) 2014 com.biobeats. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "TODOItem.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITableView *itemsList;
@property (strong, nonatomic) IBOutlet UITextField *nuovoItem;

@property NSArray *items;

@end



@implementation ViewController


- (void)listItems {
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *managedObjectContext = [appDelegate managedObjectContext];
    NSManagedObjectModel *managedObjectModel = [appDelegate managedObjectModel];
    
    NSError *err;

    NSFetchRequest *req = [[NSFetchRequest alloc] initWithEntityName:@"TODOItem"];
    self.items = [managedObjectContext executeFetchRequest:req error:&err];
    
    
    if (err == nil)
    {
        for (NSManagedObject *o in _items) {
            NSLog([o valueForKey:@"myDescription" ]);
            
        }
        /*for (Categoria *cat in res) {
            NSLog(cat.name);
        }*/
        
    } else
    {
        // TODO gestire l'errore
        NSLog(err.description);
    }

    
}


- (IBAction)addItem:(id)sender {
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *managedObjectContext = [appDelegate managedObjectContext];
    NSManagedObjectModel *managedObjectModel = [appDelegate managedObjectModel];
    
    
    
    NSEntityDescription *descr = [NSEntityDescription entityForName:@"TODOItem" inManagedObjectContext:managedObjectContext];
                
    
    TODOItem *item = [[TODOItem alloc] initWithEntity: descr insertIntoManagedObjectContext:managedObjectContext];

    NSString *mydescr = self.nuovoItem.text;
    
    item.myDescription = mydescr;
    
                
    
    [appDelegate saveContext];
    

    self.nuovoItem.text = @"";
    
    [self.itemsList reloadData];
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    self.itemsList.delegate = self;
    self.itemsList.dataSource = self;
    
    [self listItems];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellForRowAtIndexPath %i", indexPath.row );

    UITableViewCell *mycell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"mycell"];
    if (mycell == nil)
    {
        mycell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"mycell"];
        
    }
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *managedObjectContext = [appDelegate managedObjectContext];
    NSManagedObjectModel *managedObjectModel = [appDelegate managedObjectModel];
    
    NSError *err;
    NSFetchRequest *req = [[NSFetchRequest alloc] initWithEntityName:@"TODOItem"];
    
    NSArray *res = [managedObjectContext executeFetchRequest:req error:&err];
    if (err == nil)
    {
        TODOItem *i = [res objectAtIndex:indexPath.row];
        mycell.textLabel.text  = i.myDescription;
    }
    
    return mycell;
    
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"numberOfRowsInSection");
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *managedObjectContext = [appDelegate managedObjectContext];
    NSManagedObjectModel *managedObjectModel = [appDelegate managedObjectModel];
    
    NSError *err;
    NSFetchRequest *req = [[NSFetchRequest alloc] initWithEntityName:@"TODOItem"];
    NSArray *res = [managedObjectContext executeFetchRequest:req error:&err];
    if (err == nil)
    {
        return [res count];
    } else
    {
        return 0;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *managedObjectContext = [appDelegate managedObjectContext];
    NSManagedObjectModel *managedObjectModel = [appDelegate managedObjectModel];
    
    NSError *err;
    NSFetchRequest *req = [[NSFetchRequest alloc] initWithEntityName:@"TODOItem"];
    NSArray *res = [managedObjectContext executeFetchRequest:req error:&err];
    if (err == nil)
    {
        TODOItem *i = [res objectAtIndex:indexPath.row];
        [managedObjectContext deleteObject:i];
    }
    [appDelegate saveContext];
    [self.itemsList reloadData];

}

@end
