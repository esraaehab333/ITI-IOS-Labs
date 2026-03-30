//
//  ViewController.m
//  lab1_5(validation)
//
//  Created by ZATER on 3/28/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFiled;
@property (weak, nonatomic) IBOutlet UILabel *textCheker;
- (IBAction)textCheckerButton:(id)sender;
- (IBAction)numberChekerButton:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _textCheker.text=@"";
    _textFiled.keyboardType = UIKeyboardTypeDefault; // to write texts or numbers
}


- (IBAction)numberChekerButton:(id)sender {
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    NSNumber *n = [f numberFromString:_textFiled.text];
    if(n!=nil){
        _textCheker.text = @"User Input is NUMBER !!";
    }
    else{
        _textCheker.text = @"User Input is NOT NUMBER !!";
    }
}
- (IBAction)textCheckerButton:(id)sender {
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    NSNumber *n = [f numberFromString:_textFiled.text];
    if(n==nil){
        _textCheker.text = @"User Input is TEXT !!";
    }
    else{
        _textCheker.text = @"User Input is NOT TEXT !!";
    }
}
@end
