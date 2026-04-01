//
//  DetailsViewController.m
//  lab2_2(table)
//
//  Created by ZATER on 4/1/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = _colleague[@"name"];
    _nameLabel.text=_colleague[@"name"];
    _phoneLabel.text = _colleague[@"phone"];
    _emailLabel.text = _colleague[@"email"];
    _ageLabel.text = _colleague[@"age"];
    _addressLabel.text = _colleague[@"address"];
}

@end
