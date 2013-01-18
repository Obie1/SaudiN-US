//
//  Universities.m
//  SaudiN'US
//
//  Created by Obie Haiek on 1/13/13.
//  Copyright (c) 2013 Obie Haiek. All rights reserved.
//

#import "Universities.h"

@interface Universities ()
@end

@implementation Universities
@synthesize tableData;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    self.tableData =[[NSArray alloc]initWithObjects:@"Top 10 Universities",@"Approved By SACAM Top 10",@"Search University" ,nil];
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
   
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell   = nil;
    cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MyCell"];
    }
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}
@end
