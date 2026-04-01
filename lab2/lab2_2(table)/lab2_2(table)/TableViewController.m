//
//  TableViewController.m
//  lab2_2(table)
//
//  Created by ZATER on 4/1/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import "TableViewController.h"
#import "DetailsViewController.h"

@interface TableViewController ()
@property NSMutableArray *colleaguesFemale;
@property NSMutableArray *colleaguesMale;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _colleaguesFemale=[NSMutableArray arrayWithObjects:
                       @{@"name":@"Mona", @"phone":@"0123456789",@"age":@"24",@"email":@"mona@gmail.com", @"address":@"Mansura"},
                      @{@"name":@"Esraa", @"phone":@"0123456789",@"age":@"24",@"email":@"esraa@gmail.com", @"address":@"Mansura"},
                       @{@"name":@"Fatema", @"phone":@"0123456789",@"age":@"24",@"email":@"fatema@gmail.com", @"address":@"Mansura"},
                       @{@"name":@"Hend", @"phone":@"0123456789",@"age":@"24",@"email":@"hend@gmail.com", @"address":@"Mansura"},nil];
    _colleaguesMale =[NSMutableArray arrayWithObjects:
                       @{@"name":@"Amir", @"phone":@"0123456789",@"age":@"24",@"email":@"amir@gmail.com", @"address":@"Mansura"},
                       @{@"name":@"Mohamed", @"phone":@"0123456789",@"age":@"24",@"email":@"mohamed@gmail.com", @"address":@"Mansura"},
                       @{@"name":@"Ahmed", @"phone":@"0123456789",@"age":@"24",@"email":@"ahmed@gmail.com", @"address":@"Mansura"},nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return [_colleaguesFemale count];
            break;
        case 1:
            return [_colleaguesMale count];
            break;
        default:
            return 0;
            break;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    NSDictionary * colleague;
    switch (indexPath.section) {
        case 0:
            colleague = _colleaguesFemale[indexPath.row];
            break;
        case 1:
            colleague = _colleaguesMale[indexPath.row];
            break;
        default:
            break;
    }
    cell.textLabel.text = colleague[@"name"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *colleague;
    switch (indexPath.section) {
        case 0:
            colleague = _colleaguesFemale[indexPath.row];
            break;
        case 1:
            colleague = _colleaguesMale[indexPath.row];
            break;
        default:
            break;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    DetailsViewController *detailsVC = [self.storyboard instantiateViewControllerWithIdentifier:@"detailsVC"];
    detailsVC.colleague=colleague;
    [self.navigationController pushViewController:detailsVC animated:YES];
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
