//
//  AddStudentViewController.h
//  SaudiN'US
//
//  Created by Obie Haiek on 11/16/12.
//  Copyright (c) 2012 Obie Haiek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddStudentViewController : UIViewController <UITextFieldDelegate> 
@property (weak, nonatomic) IBOutlet UITextField *firstnameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastnameTextField;
@property (weak, nonatomic) IBOutlet UITextField *collegeTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *majorTextField;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
- (IBAction)addStudentButton:(id)sender;

@end
