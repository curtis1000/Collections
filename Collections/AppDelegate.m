//
//  AppDelegate.m
//  Collections
//
//  Created by Curtis Branum on 12/25/13.
//  Copyright (c) 2013 Curtis Branum. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    // https://developer.apple.com/library/ios/documentation/cocoa/conceptual/Collections/Collections.html
    
    ////////////////////////////////////////
    // NSArray - ordered, constant
    ////////////////////////////////////////
    
    NSArray *myArray = @[@"Hi There", @"I am an", @"UNMUTABLE Array", @"I can't be changed"];
    
    // iterate over the array
    for (id object in myArray) {
        NSLog(@"%@", object);
    }
    
    // get a specific indexed object
    NSLog(@"%@", myArray[3]);
    
    // get length of array
    int length = [myArray count];
    NSLog(@"there are %d objects in the array", length);
    
    ////////////////////////////////////////////////////////////
    // NSMutableArray - ordered, can add/replace/remove objects
    ////////////////////////////////////////////////////////////
    
    NSMutableArray *myMutableArray = [NSMutableArray new];
    
    // add objects as needed
    [myMutableArray addObject:@"I can add/edit/remove things as needed"];
    [myMutableArray addObject:@"delete me"];
    [myMutableArray addObject:@"This is the last item"];
    
    // remove an object
    [myMutableArray removeObjectAtIndex:1];
    
    // replace an object
    [myMutableArray replaceObjectAtIndex:1 withObject:@"This the last item, it's been replaced!"];
    
    // iterate over the array
    for (id object in myMutableArray) {
        NSLog(@"%@", object);
    }
    
    ///////////////////////////////////////////
    // NSDictionary - key/value list, constant
    ///////////////////////////////////////////
    
    NSDictionary *myDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"John", @"firstname",
                          @"Doe",  @"lastname",
                          @"30",   @"age",
                          nil];
    
    // iterate over the dictionary
    for (id key in myDictionary) {
        NSLog(@"key=%@ value=%@", key, [myDictionary objectForKey:key]);
    }
    
    ////////////////////////////////////////////////////////////////////////
    // NSMutableDictionary - key/value list, can add/replace/remove objects
    ////////////////////////////////////////////////////////////////////////
    
    NSMutableDictionary *myMutableDictionary = [NSMutableDictionary new];
    
    // add objects
    [myMutableDictionary setObject:@"3:48pm" forKey:@"currentTime"];
    [myMutableDictionary setObject:@"70 degrees" forKey:@"currentTemp"];
    
    // replace object
    [myMutableDictionary setObject:@"4:00pm" forKey:@"currentTime"];
    
    // remove object
    [myMutableDictionary removeObjectForKey:@"currentTemp"];
    
    // iterate over the mutable dictionary
    for (id key in myMutableDictionary) {
        NSLog(@"key=%@ value=%@", key, [myMutableDictionary objectForKey:key]);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////
    // NSSet - fastest access when we don't need ordering or dictionary lookups, constant
    //////////////////////////////////////////////////////////////////////////////////////
    
    //NSSet *mySet = [NSSet setWithObjects:@"Curt", @"Tim", @"Drew", @"Jesse", nil];
    
    
    // todo: work out NSSet, NSMutableSet, NSCountedSet
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
