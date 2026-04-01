//
//  ViewController.m
//  lab1_6(calculator)
//
//  Created by ZATER on 3/30/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *number1Field;

@property (weak, nonatomic) IBOutlet UITextField *number2Field;
@property (weak, nonatomic) IBOutlet UILabel *result;
- (IBAction)addButton:(id)sender;
- (IBAction)subButton:(id)sender;
- (IBAction)divButton:(id)sender;
- (IBAction)mulButton:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _number1Field.keyboardType = UIKeyboardTypeDecimalPad;
    _number2Field.keyboardType = UIKeyboardTypeDecimalPad;
    _result.text=@"0.00";
}
- (IBAction)addButton:(id)sender {
    NSString *text1 = self.number1Field.text;
    NSString *text2 = self.number2Field.text;
    if(![self isValidatorNumber:text1] || ![self isValidatorNumber:text2]){
        _result.text=@"invailed input";
        return;
    }
    double number1 = [text1 doubleValue];
    double number2 = [text2 doubleValue];
    double result = number1+number2;
    NSString *stringValue = [NSString stringWithFormat:@"%.2f",result];
    _result.text = stringValue;
}
- (IBAction)subButton:(id)sender {
    NSString *text1 = self.number1Field.text;
    NSString *text2 = self.number2Field.text;
    if(![self isValidatorNumber:text1] || ![self isValidatorNumber:text2]){
        _result.text=@"invailed input";
        return;
    }
    double number1 = [text1 doubleValue];
    double number2 = [text2 doubleValue];
    double result = number1-number2;
    NSString *stringValue = [NSString stringWithFormat:@"%.2f",result];
    _result.text = stringValue;
}
- (IBAction)divButton:(id)sender {
    NSString *text1 = self.number1Field.text;
    NSString *text2 = self.number2Field.text;
    if(![self isValidatorNumber:text1] || ![self isValidatorNumber:text2]){
        _result.text=@"invailed input";
        return;
    }
    double number1 = [text1 doubleValue];
    double number2 = [text2 doubleValue];
    double result = number1/number2;
    NSString *stringValue = [NSString stringWithFormat:@"%.2f",result];
    _result.text = stringValue;
}
- (IBAction)mulButton:(id)sender {
    NSString *text1 = self.number1Field.text;
    NSString *text2 = self.number2Field.text;
    if(![self isValidatorNumber:text1] || ![self isValidatorNumber:text2]){
        _result.text=@"invailed input";
        return;
    }
    double number1 = [text1 doubleValue];
    double number2 = [text2 doubleValue];
    double result = number1*number2;
    NSString *stringValue = [NSString stringWithFormat:@"%.2f",result];
    _result.text = stringValue;
}
-(BOOL)isValidatorNumber:(NSString *)text{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
    formatter.numberStyle = NSNumberFormatterDecimalStyle;
    NSNumber *number =[formatter numberFromString:text];
    return number !=nil;
}
@end
