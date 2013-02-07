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



@interface ViewController (){
    @private
    BOOL save_account;
}

@end

@implementation ViewController
@synthesize textFielduserName, textFieldPassword;
-(IBAction)ReturnKeyButton:(id)sender{
    [sender resignFirstResponder];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    if(save_account)
    {
        //self.textFielduserName.text =
        
        if([self authenticate:textFielduserName.text withPassowrd:textFieldPassword.text])
        {
            ismainViewController.userName = textFielduserName;
            [self performSegueWithIdentifier:@"Pass" sender:self];
            
        }
    }
   
    
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
    if([self.textFielduserName.text isEqualToString:@""] || [self.textFieldPassword.text isEqualToString:@""])
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

- (IBAction)SaveAccount:(id)sender {
    UISwitch *myswitch = sender;
    save_account = myswitch;

}


- (IBAction)logInButton:(id)sender {
    if([self.textFielduserName.text isEqualToString:@""]||[self.textFieldPassword.text isEqualToString:@""])
    {
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"You must Enter UserName and Password to Sign In" message:@"please Enter UserName and Password" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        [alert show];
        [self performSegueWithIdentifier:@"username" sender:self];
        
    }
    
  
    else if([self authenticate:textFielduserName.text withPassowrd:textFieldPassword.text])
    {
        NSString *User = textFielduserName.text;
        //NSString *Password = _textFielduserName.text;
        ismainViewController.userName = textFielduserName;
        [self performSegueWithIdentifier:@"PASS" sender:self];
        
        //ismainViewController.userName  = User;
        
    }
    else
    {
        [self performSegueWithIdentifier:@"username" sender:self];
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"You Must Enter Correct UserName And Password" message:@"Please Enter UserName And Password" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        [alert show];
        textFieldPassword.text = @"";
        textFielduserName.text = @"";
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
    NSString *strURL = [NSString stringWithFormat:@"http://172.24.199.126/Logged2.php?username=%@&password=%@",username, password];
    
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
