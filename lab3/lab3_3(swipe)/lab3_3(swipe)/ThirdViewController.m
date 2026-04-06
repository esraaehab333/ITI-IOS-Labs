//
//  ThirdViewController.m
//  lab3_3(swipe)
//
//  Created by ZATER on 4/5/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "ThirdViewController.h"
#import "SecondViewController.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    UISwipeGestureRecognizer *rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(goToFirstScreen)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:rightSwipe];
}
-(void)goToFirstScreen{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
