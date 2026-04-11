//
//  ViewController.h
//  lab5_2
//
//  Created by ZATER on 4/11/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate , UITableViewDataSource,NSURLConnectionDelegate,NSURLConnectionDataDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *products;
@property NSMutableData *responseData;

@end

