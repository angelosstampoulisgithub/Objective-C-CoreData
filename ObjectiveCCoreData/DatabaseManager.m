//
//  DatabaseManager.m
//  ObjectiveCCoreData
//
//  Created by Angelos Staboulis on 6/10/24.
//

#import "DatabaseManager.h"

@implementation DatabaseManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _appDelegate = (AppDelegate*) [UIApplication sharedApplication].delegate;
        _context = _appDelegate.persistentContainer.viewContext;
        _fetchRequest = [[NSFetchRequest alloc] init];
        _addres = [NSEntityDescription insertNewObjectForEntityForName:@"Address" inManagedObjectContext:_context];
    }
    return self;
}
- (void)addRecord:(NSString *)lastname firstname:(NSString *)firstname address:(NSString *)address phone:(NSString *)phone{
    [_addres setValue:lastname forKey:@"lastname"];
    [_addres setValue:firstname forKey:@"firstname"];
    [_addres setValue:address forKey:@"address"];
    [_addres setValue:phone forKey:@"phone"];

    NSError *error = nil;
    if (![_context save:&error]) {
        NSLog(@"Saving Failed");
    }else{
        NSLog(@"Save Record Successfull!!");
    }
}
- (NSEntityDescription *)findRecord:(NSString *) firstname{
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Address" inManagedObjectContext:_context];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(firstname == %@)",firstname];
    [_fetchRequest setPredicate:predicate];
    [_fetchRequest setEntity:entity];
    NSError *error = nil;
    _fetchedObjects = [_context executeFetchRequest:_fetchRequest error:&error];
    NSEntityDescription  *description = [_fetchedObjects firstObject];
    return description;
}
-(void) update:(NSString *)lastname firstname:(NSString *)firstname address:(NSString *)address phone:(NSString *)phone{
    NSEntityDescription  *description = [_fetchedObjects firstObject];
    [description setValue:lastname forKey:@"lastname"];
    [description setValue:firstname forKey:@"firstname"];
    [description setValue:address forKey:@"address"];
    [description setValue:phone forKey:@"phone"];
    NSError *error = nil;
    if (![_context save:&error]) {
        NSLog(@"Updated Failed");
    }else{
        NSLog(@"Updated Record Successfull!!");
    }
}
- (void)deleteRecord{
    for (NSManagedObject *managedObject in _fetchedObjects) {
        [_context deleteObject:managedObject];
    }
    NSError *error = nil;
    if (![_context save:&error]) {
        NSLog(@"Delete Record Failed");
    }else{
        NSLog(@"Delete Record Successfull!!");
    }
}
@end
