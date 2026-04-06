//
//  SecondViewController.m
//  lab3_1(tabbed and navigation controller)
//
//  Created by ZATER on 4/5/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title =@"Second Screen";
    self.tabBarItem.title=@"Second Screen";
}
- (IBAction)goToThirdScreen:(id)sender {
    ThirdViewController *tvc = [self.storyboard instantiateViewControllerWithIdentifier:@"ThirdVC"];
    [self.navigationController pushViewController:tvc animated:YES];
}
@end
