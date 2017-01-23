//
//  AppDelegate.h
//  CoreDataDemo3
//
//  Created by 宋晓光 on 23/01/2017.
//  Copyright © 2017 Light. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

