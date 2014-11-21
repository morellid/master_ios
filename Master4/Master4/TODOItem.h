//
//  TODOItem.h
//  Master4
//
//  Created by Davide Morelli on 21/11/14.
//  Copyright (c) 2014 com.biobeats. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface TODOItem : NSManagedObject

@property (nonatomic, retain) NSString * myDescription;

@end
