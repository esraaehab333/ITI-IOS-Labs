//
//  SignInViewController.h
//  lab3_2
//
//  Created by ZATER on 4/5/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearText.h"
NS_ASSUME_NONNULL_BEGIN

@interface SignInViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)signInButton:(id)sender;
- (IBAction)registerButton:(id)sender;
@property (nonatomic,weak) id<ClearText> delegate;
@end

NS_ASSUME_NONNULL_END
