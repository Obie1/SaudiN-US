//
//  CollectionViewController.m
//  SaudiN'US
//
//  Created by Obie Haiek on 1/2/13.
//  Copyright (c) 2013 Obie Haiek. All rights reserved.
//

#import "CollectionViewController.h"
#import "CollectionViewCell.h"
#import "Universities.h"

@interface CollectionViewController ()
{
    NSArray *arrayOfImages;
}

@end

@implementation CollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    arrayOfImages = [[NSArray alloc]initWithObjects:@"1.png",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg", nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [arrayOfImages count];
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    CollectionViewCell *cell = (CollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
   // int imageNumber = 0;
    //int imageNumber1 = 2;
   // cell.imageView.image = [UIImage imageNamed: @"imageicon0.jpg"];
    
    [[cell imageView]setImage:[UIImage imageNamed:[arrayOfImages objectAtIndex:indexPath.item]]];
    
   
    
    
    return cell;
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"Detail"])
        
    {
        CollectionViewCell *cell = (CollectionViewCell *)sender;
        NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
        Universities *idvc = (Universities *)[segue destinationViewController];
        idvc.tableData =[NSArray arrayWithObjects:@"Top 10 Univ",@"Top Univ. According to Sacam",@"Most Saudi Student", nil];
        
    }
}
@end
