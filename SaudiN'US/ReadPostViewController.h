//
//  ReadPostViewController.h
//  SaudiN'US
//
//  Created by Obie Haiek on 1/17/13.
//  Copyright (c) 2013 Obie Haiek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailReadPostViewController.h"
#define kGETUrl @"http://localhost/readpostjson.php"

@interface ReadPostViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *json;
    
}

@end
