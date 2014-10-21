//
//  BNRItem.m
//  RandomItems
//
//  Created by Anthony Dagati on 10/12/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

-(NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", self.itemName, self.serialName, self.valueInDollars, self.dateCreated];
    return descriptionString;
}

// Implementing the designated initializer
-(instancetype)initWithItemName:(NSString *)name valueinDollars:(int)value serialName:(NSString *)sNumber
{
    // Call the super class's designated initializer
    self = [super init];
    
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        _itemName = name;
        _serialName = sNumber;
        _valueInDollars = value;
        // Set _dateCreated to the current date and time
        _dateCreated = [[NSDate alloc] init];
    }
    
    // Return the address of the newly initiated object
    return self;
}

-(instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name valueinDollars:0 serialName:@""];
}

-(instancetype)initWithItemName:(NSString *)name serialName:(NSString *)sNumber
{
    return [self initWithItemName:name valueinDollars:0 serialName:sNumber];
}


-(instancetype)init
{
    return [self initWithItemName:@"Item"];
}

+(instancetype)randomItem
{
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", randomAdjectiveList[adjectiveIndex], randomNounList[nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c", '0' + arc4random() % 10, '0' + arc4random() % 26, '0' + arc4random() % 10, '0' + arc4random() % 26, '0' + arc4random() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName valueinDollars:randomValue serialName:randomSerialNumber];
    
    return newItem;
}

-(void)setContainedItem:(BNRItem *)containedItem {
    _containedItem = containedItem;
    self.containedItem.container = self;  w
}


-(void)dealloc
{
    NSLog(@"Destroyed item: %@", self);
}

@end