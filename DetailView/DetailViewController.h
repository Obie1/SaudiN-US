//
//  DetailViewController.h
//  DetailView
//
//  Created by Obie Haiek on 2/5/13.
//  Copyright (c) 2013 Obie Haiek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
