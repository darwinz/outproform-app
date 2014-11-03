//
//  SignupViewController.m
//  OutProform
//
//  Created by Brandon Johnson on 11/2/14.
//  Copyright (c) 2014 OutProform. All rights reserved.
//

#import "SignupViewController.h"
#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface SignupViewController ()

@end

@implementation SignupViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if ([UIScreen mainScreen].bounds.size.height == 568) {
        self.backgroundImageView.image = [UIImage imageNamed:@"SignupBackground"];
    }
}

- (IBAction)signup:(id)sender {
    NSString *username = [self.usernameField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *email = [self.emailField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *jersey = [self.jerseyField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *position = [self.positionField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *height = [self.heightField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *weight = [self.weightField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    if ([username length] == 0 || [email length] == 0 || [jersey length] == 0 || [height length] == 0 || [weight length] == 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops!"
                                                            message:@"Make sure you fill in all required fields!"
                                                           delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
    }
    else {
        PFObject *newUser = [PFObject objectWithClassName:@"NewUser"];
        
        newUser[@"username"] = username;
        newUser[@"email"] = email;
        newUser[@"jersey"] = jersey;
        newUser[@"position"] = position;
        newUser[@"height"] = height;
        newUser[@"weight"] = weight;
        [newUser saveInBackground];
    }
}

- (IBAction)dismiss:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end





