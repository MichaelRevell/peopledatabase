//
//  Person.h
//  PeopleDatabase
//
//  Created by Michael Revell on 10/3/13.
//  Copyright (c) 2013 Michael Revell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *firstName;
    NSString *lastName;
    int age;
}

-(void)enterInfo;
-(void)printInfo;

@end
