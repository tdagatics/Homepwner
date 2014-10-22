//
//  BNRItemsViewControllerTableViewController.m
//  Homepwner
//
//  Created by Anthony Dagati on 10/21/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import "BNRItemsViewControllerTableViewController.h"
#import "BNRItemStore.h"
#import "BNRItem.h"

@interface BNRItemsViewControllerTableViewController ()

@end

@implementation BNRItemsViewControllerTableViewController

-(instancetype)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        for (int i = 0; i < 5; i++) {
            [[BNRItemStore sharedStore] createItem];
        }
    }
    
    return self;
}

-(instancetype)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[BNRItemStore sharedStore] allItems] count];
}
@end
