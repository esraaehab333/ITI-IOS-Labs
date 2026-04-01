//
//  ViewController.m
//  lab2_1(navigationController)
//
//  Created by ZATER on 4/1/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

- (IBAction)navigationButton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)navigationButton:(id)sender {
    //SecondViewController *svc = [SecondViewController new];
    SecondViewController *svc = [self.storyboard   instantiateViewControllerWithIdentifier:@"secondVC"];
    svc.userName =_textField.text;
    svc.firstVC=self;
    [self.navigationController pushViewController:svc animated:YES];
}
-(void)clear{
    _textField.text=@"";
}
@end
