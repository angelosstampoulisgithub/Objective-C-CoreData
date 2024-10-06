//
//  AppDelegate.h
//  ObjectiveCCoreData
//
//  Created by Angelos Staboulis on 5/10/24.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

