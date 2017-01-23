//
//  SportSession+CoreDataProperties.h
//  CoreDataDemo3
//
//  Created by 宋晓光 on 23/01/2017.
//  Copyright © 2017 Light. All rights reserved.
//

#import "SportSession+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface SportSession (CoreDataProperties)

+ (NSFetchRequest<SportSession *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSDate *start_time;
@property (nullable, nonatomic, copy) NSDate *end_time;
@property (nullable, nonatomic, copy) NSString *account;

@end

NS_ASSUME_NONNULL_END
