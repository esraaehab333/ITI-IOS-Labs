//
//  ViewController.m
//  lab5_1
//
//  Created by ZATER on 4/5/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _myData=[NSMutableData new];
}


- (IBAction)doSyncButton:(id)sender {
    NSString *str = @"https://www.facebook.com";
    NSURL *url =[NSURL URLWithString:str];
    NSStringEncoding encoding;
    NSString *result =[[NSString alloc] initWithContentsOfURL:url usedEncoding:&encoding error:nil];
    _textView.text = result;
}
- (IBAction)doAsyncButton:(id)sender {
    NSString *str = @"https://www.facebook.com";
    NSURL *url =[NSURL URLWithString:str];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLConnection *con =[[NSURLConnection alloc] initWithRequest:request delegate:self];
    [con start];
}
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [_myData appendData:data];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString *str =[[NSString alloc] initWithData:_myData encoding:NSUTF8StringEncoding];
     _textView.text = str;
    
}
@end
