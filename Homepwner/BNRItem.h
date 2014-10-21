//
//  BNRItem.h
//  RandomItems
//
//  Created by Anthony Dagati on 10/12/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialName;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

+(instancetype)randomItem;

// Add two new initializers
// Designated initializer for BNRItem
-(instancetype)initWithItemName:(NSString *)name valueinDollars:(int)value serialName:(NSString *)sNumber;

-(instancetype)initWithItemName:(NSString *)name;

-(void)setContainedItem:(BNRItem *)item;
-(BNRItem *)containedItem;

-(void)setContainer:(BNRItem *)item;
-(BNRItem *)container;


-(instancetype)initWithItemName:(NSString *)name serialName:(NSString *)sNumber;


@end
