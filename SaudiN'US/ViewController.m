//
//  ViewController.m
//  SaudiN'US
//
//  Created by Obie Haiek on 11/13/12.
//  Copyright (c) 2012 Obie Haiek. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "CollectionViewController.h"



@interface ViewController ()

@end

@implementation ViewController
-(IBAction)ReturnKeyButton:(id)sender{
    [sender resignFirstResponder];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField) {
        [textField resignFirstResponder];
        
    }
    return NO;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    if(textField == self.textFieldPassword||textField == self.textFielduserName)
    {
        
    }
    
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if(self.textFielduserName.text == @"" || self.textFieldPassword.text == @"")
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"You must Enter UserName and Password to Sign In" message:@"please Enter UserName and Password" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        [alert show];
        [self performSegueWithIdentifier:@"username" sender:self];
         _lblFail.text = @"WRONG INFO";
    }
    else{

    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)saveAccount:(id)sender {
}

- (IBAction)logInButton:(id)sender {
    if([self.textFielduserName.text isEqualToString:@""]||[self.textFieldPassword.text isEqualToString:@""])
    {
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"You must Enter UserName and Password to Sign In" message:@"please Enter UserName and Password" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        [alert show];
        [self performSegueWithIdentifier:@"username" sender:self];
        
    }
    
  
    else if([self authenticate:_textFielduserName.text withPassowrd:_textFieldPassword.text])
    {
        [self performSegueWithIdentifier:@"PASS" sender:self];
    }
    else
    {
        [self performSegueWithIdentifier:@"username" sender:self];
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"You Must Enter Correct UserName And Password" message:@"Please Enter UserName And Password" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        [alert show];
        _textFieldPassword.text = @"";
        _textFielduserName.text = @"";
        _lblFail.text = @"WRONG INFO";
    }
    
    
}
-(bool) authenticate:(NSString*) username withPassowrd:(NSString*) password
{
  
    if([username isEqualToString:@""]||[password isEqualToString:@""])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"alert" message:@"please Fill all the fields" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [alert show];
        return false;
    }
    NSString *strURL = [NSString stringWithFormat:@"http://localhost/Logged2.php?username=%@&password=%@",username, password];
    
    // to execute php code
    NSData *dataURL = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL]];
    
    // to receive the returend value
    NSString *strResult = [[NSString alloc] initWithData:dataURL encoding:NSUTF8StringEncoding];
    
    if ([strResult isEqualToString:@"1"])
    {
        
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"Logged In" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [alert show];
       

        return true;
    }else
    {
        // invalid information
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"alert" message:@"Invalide Information" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        return false;
        
    }
    
}
@end
