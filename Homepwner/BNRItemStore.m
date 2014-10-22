//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Anthony Dagati on 10/22/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@interface BNRItemStore ()

@property (nonatomic) NSMutableArray *privateItems;

@end

@implementation BNRItemStore

+(instancetype)sharedStore
{
    static BNRItemStore *sharedStore;
    
    // Do I need to create a shared store?
    if (!sharedStore) {
        sharedStore = [[self alloc] initWithPrivate];
    }
    return sharedStore;
}

// If a programmer calls [[BNRItemStore alloc] init], throw an error
-(instancetype)init
{
    [NSException raise:@"Singleton" format:@"Use+[BNR ItemStore sharedStore]"];
    return nil;
}

//Private initializer
-(instancetype)initWithPrivate
{
    self = [super init];
    
    return self;
}

-(instancetype)initPrivate
{
    self = [super init];
    if (self) {
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSArray *)allItems
{
    return [self.privateItems copy];
}

-(BNRItem *)createItem
{
    BNRItem *item = [BNRItem randomItem];
    [self.privateItems addObject:item];
    return item;
}

@end
