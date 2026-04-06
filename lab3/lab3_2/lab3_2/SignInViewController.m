//
//  SignInViewController.m
//  lab3_2
//
//  Created by ZATER on 4/5/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "SignInViewController.h"
#import "HomeViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"";
    self.passwordTextField.secureTextEntry = YES;
}

- (IBAction)signInButton:(id)sender {
    NSString *enteredEmail = self.emailTextField.text;
    NSString *enteredPassword = self.passwordTextField.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *savedEmail = [defaults objectForKey:@"savedEmail"];
    NSString *savedPassword = [defaults objectForKey:@"savedPassword"];
    if([enteredEmail isEqualToString:savedEmail]&&[enteredPassword isEqualToString:savedPassword]){
        HomeViewController * hvc =[self.storyboard instantiateViewControllerWithIdentifier:@"HomeVC"];
        hvc.delegate = self;
        [self.navigationController pushViewController:hvc animated:true];
    }
    else{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Incorrect Data" message:@"Your email or password is incorrect. Please try again." preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
        [self presentViewController:alert animated:YES completion:nil];
    }
}

- (IBAction)registerButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
