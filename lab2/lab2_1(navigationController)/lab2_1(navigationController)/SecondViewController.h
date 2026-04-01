//
//  SecondViewController.h
//  lab2_1(navigationController)
//
//  Created by ZATER on 4/1/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearText.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *helloNameText;
@property NSString *userName;
@property id<ClearText>firstVC;
@end

NS_ASSUME_NONNULL_END
