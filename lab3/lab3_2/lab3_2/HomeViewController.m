//
//  HomeViewController.m
//  lab3_2
//
//  Created by ZATER on 4/5/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
    self.emailLabel.text = [defaults objectForKey:@"savedEmail"]?:@"Unknowe";
    self.passwordLabel.text =[defaults objectForKey:@"savedPassword"]?: @"Unknown";
    UIBarButtonItem *doneBtn = [[UIBarButtonItem alloc]
                                initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(donePressed)];
    self.navigationItem.rightBarButtonItem = doneBtn;
}
-(void)donePressed{
    [self.delegate clear];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
