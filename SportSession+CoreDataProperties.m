//
//  SportSession+CoreDataProperties.m
//  CoreDataDemo3
//
//  Created by 宋晓光 on 23/01/2017.
//  Copyright © 2017 Light. All rights reserved.
//

#import "SportSession+CoreDataProperties.h"

@implementation SportSession (CoreDataProperties)

+ (NSFetchRequest<SportSession *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"SportSession"];
}

@dynamic start_time;
@dynamic end_time;
@dynamic account;

@end
