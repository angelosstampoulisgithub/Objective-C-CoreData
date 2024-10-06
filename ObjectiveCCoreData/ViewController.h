//
//  ViewController.h
//  ObjectiveCCoreData
//
//  Created by Angelos Staboulis on 5/10/24.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "CoreData/CoreData.h"
#import "DatabaseManager.h"
@interface ViewController : UIViewController
- (IBAction)btnAddRecord:(id)sender;

- (IBAction)btnDelete:(id)sender;
- (IBAction)btnUpdate:(id)sender;
- (IBAction)btnFind:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *txtLastName;

@property (weak, nonatomic) IBOutlet UITextField *txtFirstName;
@property (weak, nonatomic) IBOutlet UITextField *txtAddress;

@property (weak, nonatomic) IBOutlet UITextField *txtPhone; 
@property DatabaseManager *databaseManager;
@property NSEntityDescription *entity;
@end

