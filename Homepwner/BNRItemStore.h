//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Anthony Dagati on 10/22/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject

// Class method, prefix with a +
@property (nonatomic, readonly, copy) NSArray *allItems;

+(instancetype)sharedStore;
-(BNRItem *)createItem;


@end
