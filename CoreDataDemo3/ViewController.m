//
//  ViewController.m
//  CoreDataDemo3
//
//  Created by 宋晓光 on 23/01/2017.
//  Copyright © 2017 Light. All rights reserved.
//

#import "AppDelegate.h"
#import "SportSession+CoreDataProperties.h"
#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, strong) NSPersistentContainer *container;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.container = ((AppDelegate *)[UIApplication sharedApplication].delegate)
                       .persistentContainer;
}

- (IBAction)addSportSession:(id)sender {
  SportSession *sportSession = [NSEntityDescription
      insertNewObjectForEntityForName:@"SportSession"
               inManagedObjectContext:self.container.viewContext];
  sportSession.account = @"sxgfxm";
}

- (IBAction)fetchSportSession:(id)sender {
  NSLog(@"fetch");
  NSFetchRequest *fetchRequest =
      [NSFetchRequest fetchRequestWithEntityName:@"SportSession"];
  NSArray<SportSession *> *array =
      [self.container.viewContext executeFetchRequest:fetchRequest error:nil];
  for (SportSession *session in array) {
    NSLog(@"%@", session.account);
  }
}

- (IBAction)updateSportSession:(id)sender {
  NSLog(@"update");
  NSFetchRequest *fetchRequest =
      [NSFetchRequest fetchRequestWithEntityName:@"SportSession"];
  NSPredicate *predicate =
      [NSPredicate predicateWithFormat:@"account == %@", @"sxgfxm"];
  fetchRequest.predicate = predicate;
  NSArray<SportSession *> *array =
      [self.container.viewContext executeFetchRequest:fetchRequest error:nil];
  for (SportSession *session in array) {
    session.account = @"xxx";
  }
}

- (IBAction)deleteSportSession:(id)sender {
  NSLog(@"reset");
  NSFetchRequest *fetchRequest =
      [NSFetchRequest fetchRequestWithEntityName:@"SportSession"];
  NSArray<SportSession *> *array =
      [self.container.viewContext executeFetchRequest:fetchRequest error:nil];
  for (SportSession *session in array) {
    [self.container.viewContext deleteObject:session];
  }
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
