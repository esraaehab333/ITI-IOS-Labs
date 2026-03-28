//
//  ViewController.m
//  lab1_1(hello world)
//
//  Created by ZATER on 3/28/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.text.text = @"";
}

- (IBAction)buttonToChangeText:(id)sender {
    self.text.text =@"Hello World";
}
@end
