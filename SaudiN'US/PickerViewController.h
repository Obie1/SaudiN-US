//
//  PickerViewController.h
//  SaudiN'US
//
//  Created by Obie Haiek on 2/5/13.
//  Copyright (c) 2013 Obie Haiek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UIPickerView *CollegePicker;


@end
