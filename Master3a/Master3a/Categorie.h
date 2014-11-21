//
//  Categorie.h
//  Master3a
//
//  Created by Davide Morelli on 21/11/14.
//  Copyright (c) 2014 com.biobeats. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Categorie : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *prodotti;
@end

@interface Categorie (CoreDataGeneratedAccessors)

- (void)addProdottiObject:(NSManagedObject *)value;
- (void)removeProdottiObject:(NSManagedObject *)value;
- (void)addProdotti:(NSSet *)values;
- (void)removeProdotti:(NSSet *)values;

@end
