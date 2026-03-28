//
//  ViewController.h
//  lab1_1(hello world)
//
//  Created by ZATER on 3/28/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *text;
- (IBAction)buttonToChangeText:(id)sender;

@end

