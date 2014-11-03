//
//  SignupViewController.h
//  OutProform
//
//  Created by Brandon Johnson on 11/2/14.
//  Copyright (c) 2014 OutProform. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignupViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *usernameField;
@property (strong, nonatomic) IBOutlet UITextField *emailField;
@property (strong, nonatomic) IBOutlet UITextField *jerseyField;
@property (strong, nonatomic) IBOutlet UITextField *positionField;
@property (strong, nonatomic) IBOutlet UITextField *heightField;
@property (strong, nonatomic) IBOutlet UITextField *weightField;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;

- (IBAction)signup:(id)sender;
- (IBAction)dismiss:(id)sender;

@end