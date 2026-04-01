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
    UIBarButtonItem *rightBtn =[[UIBarButtonItem alloc]
                                initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(clear)];
    self.navigationItem.rightBarButtonItem= rightBtn;
}
-(void)clear{
    printf("clear");
    [_firstVC clear];
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
