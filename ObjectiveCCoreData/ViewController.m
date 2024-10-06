//
//  ViewController.m
//  ObjectiveCCoreData
//
//  Created by Angelos Staboulis on 5/10/24.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _databaseManager = [[DatabaseManager alloc] init];
}


- (IBAction)btnFind:(id)sender {
    _entity = [self.databaseManager findRecord:[_txtFirstName text]];
    [_txtLastName setText:[_entity valueForKey:@"lastname"]];
    [_txtFirstName setText:[_entity valueForKey:@"firstname"]];
    [_txtAddress setText:[_entity valueForKey:@"address"]];
    [_txtPhone setText:[_entity valueForKey:@"phone"]];

}

- (IBAction)btnUpdate:(id)sender {
    [self.databaseManager update:[_txtLastName text] firstname:[_txtFirstName text] address:[_txtAddress text] phone:[_txtPhone text]];
}

- (IBAction)btnDelete:(id)sender {
    [self.databaseManager deleteRecord];
}
- (IBAction)btnAddRecord:(id)sender {
    [self.databaseManager addRecord:[_txtLastName text] firstname:[_txtFirstName text] address:[_txtAddress text] phone:[_txtPhone text]];
}
@end
