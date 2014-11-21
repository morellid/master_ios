//
//  Prodotti.h
//  Master3a
//
//  Created by Davide Morelli on 21/11/14.
//  Copyright (c) 2014 com.biobeats. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Categorie;

@interface Prodotti : NSManagedObject

@property (nonatomic, retain) NSString * nome;
@property (nonatomic, retain) NSNumber * prezzo;
@property (nonatomic, retain) Categorie *categoria;

@end
