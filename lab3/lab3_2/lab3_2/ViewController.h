//
//  ViewController.h
//  lab3_2
//
//  Created by ZATER on 4/5/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearText.h"

@interface ViewController : UIViewController<ClearText>
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)signUpButton:(id)sender;
- (IBAction)loginButton:(id)sender;

@end

