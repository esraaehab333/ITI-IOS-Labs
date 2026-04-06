//
//  ViewController.m
//  lab3_3(swipe)
//
//  Created by ZATER on 4/5/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UISwipeGestureRecognizer *leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(goToSecondScreen)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:leftSwipe];
    UISwipeGestureRecognizer *rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(goToThirdScreen)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:rightSwipe];
}
-(void)goToSecondScreen{
    SecondViewController *svc = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondVC"];
    /*svc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    svc.modalPresentationStyle = UIModalPresentationFullScreen;*/
    [self presentViewController:svc animated:YES completion:nil];
}
-(void)goToThirdScreen{
    ThirdViewController *tvc = [self.storyboard instantiateViewControllerWithIdentifier:@"ThirdVC"];
    /*tvc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    tvc.modalPresentationStyle = UIModalPresentationFullScreen;*/
    [self presentViewController:tvc animated:YES completion:nil];
}

@end
