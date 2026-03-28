//
//  ViewController.m
//  lab1_4(show list of name with next and back)
//
//  Created by ZATER on 3/28/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)backButton:(id)sender;
- (IBAction)nextButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property(strong,atomic)NSArray *listOfNames;
@property int currentIndex;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _listOfNames=@[@"Esraa",@"Mona",@"Hend",@"Tasneem",@"Yomna",@"Aalaa",@"Fatema"];
    _currentIndex=0;
    _nameLabel.text=_listOfNames[_currentIndex];
    
}


- (IBAction)backButton:(id)sender {
    _currentIndex++;
    if(_currentIndex>=[_listOfNames count]){
        _currentIndex=0;
    }
    _nameLabel.text= _listOfNames[_currentIndex];
}

- (IBAction)nextButton:(id)sender {
    _currentIndex--;
    if(_currentIndex<0){
        _currentIndex=(int)[_listOfNames count] -1;
    }
    _nameLabel.text= _listOfNames[_currentIndex];
}
@end
