//
//  ViewController.m
//  lab1_3(TextField with Label and button)
//
//  Created by ZATER on 3/28/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)pressButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *textArea;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _textArea.text=@"";
}


- (IBAction)pressButton:(id)sender {
    NSString *enterdText = [_textField text];
    [_textArea setText:enterdText];
}
@end
