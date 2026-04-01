//
//  SecondViewController.m
//  lab2_1(navigationController)
//
//  Created by ZATER on 4/1/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _helloNameText.text = [@"Hello " stringByAppendingString:_userName];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
