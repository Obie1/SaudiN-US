//
//  AddStudentViewController.m
//  SaudiN'US
//
//  Created by Obie Haiek on 11/16/12.
//  Copyright (c) 2012 Obie Haiek. All rights reserved.
//

#import "AddStudentViewController.h"

@interface AddStudentViewController ()

@end

@implementation AddStudentViewController

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
    // Do any additional setup after loading the view from its nib.
    
    [[self firstnameTextField] setDelegate:self];
    [[self lastnameTextField] setDelegate:self];
    [[self collegeTextField] setDelegate:self];
    [[self passwordTextField] setDelegate:self];
    [[self usernameTextField] setDelegate:self];
    [[self emailTextField] setDelegate:self];
    [[self majorTextField] setDelegate:self];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addStudentButton:(id)sender {
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}
@end
