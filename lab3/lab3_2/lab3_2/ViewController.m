//
//  ViewController.m
//  lab3_2
//
//  Created by ZATER on 4/5/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "ViewController.h"
#import "SignInViewController.h"
#import "HomeViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"View Controller";
    self.passwordTextField.secureTextEntry = YES;
}
- (IBAction)signUpButton:(id)sender {
    NSString *email = self.emailTextField.text;
    NSString *password = self.passwordTextField.text;
    if(email.length ==0 || password.length ==0){
        [self showAlertWithTitle:@"Error" message:@"Please enter email and password"];
        return;
    }
    NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
    [defaults setObject:email forKey:@"savedEmail"];
    [defaults setObject:password forKey:@"savedPassword"];
    [defaults synchronize];
    HomeViewController * hvc =[self.storyboard instantiateViewControllerWithIdentifier:@"HomeVC"];
    hvc.delegate = self;
    [self.navigationController pushViewController:hvc animated:true];
}

- (IBAction)loginButton:(id)sender {
    SignInViewController * svc =[self.storyboard instantiateViewControllerWithIdentifier:@"SignInVC"];
    svc.delegate= self;
    [self.navigationController pushViewController:svc animated:true];
}
-(void)clear{
    _emailTextField.text=@"";
    _passwordTextField.text=@"";
}
-(void)showAlertWithTitle:(NSString *)title message:(NSString *)message{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alert animated:YES completion:nil];
}
@end
