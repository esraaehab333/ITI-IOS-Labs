//
//  ViewController.h
//  lab5_1
//
//  Created by ZATER on 4/5/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property NSMutableData *myData;
- (IBAction)doSyncButton:(id)sender;
- (IBAction)doAsyncButton:(id)sender;

@end

