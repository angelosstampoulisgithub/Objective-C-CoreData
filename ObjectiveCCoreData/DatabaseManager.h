//
//  DatabaseManager.h
//  ObjectiveCCoreData
//
//  Created by Angelos Staboulis on 6/10/24.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "CoreData/CoreData.h"
NS_ASSUME_NONNULL_BEGIN

@interface DatabaseManager : NSObject
@property AppDelegate *appDelegate;
@property NSManagedObjectContext *context;
@property NSFetchRequest *fetchRequest;
@property NSArray<NSEntityDescription *> *fetchedObjects;
@property NSManagedObject *addres;
-(void) addRecord:(NSString *) lastname firstname:(NSString*) firstname address:(NSString*) address phone:(NSString*) phone;
- (NSEntityDescription *)findRecord:(NSString *) firstname;
-(void) update:(NSString *) lastname firstname:(NSString*) firstname address:(NSString*) address phone:(NSString*) phone;
-(void) deleteRecord;
@end

NS_ASSUME_NONNULL_END
