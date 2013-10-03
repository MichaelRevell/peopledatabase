//
//  Person.m
//  PeopleDatabase
//
//  Created by Michael Revell on 10/3/13.
//  Copyright (c) 2013 Michael Revell. All rights reserved.
//

#import "Person.h"


@implementation Person

-(void)enterInfo {
    NSLog(@"What is the firstname?");
    char cstring[40];
    scanf("%s", cstring);
    
    firstName = [NSString stringWithCString:cstring encoding:1];
    
    NSLog(@"What is %@'s lastname?", firstName);
    scanf("%s", cstring);
    
    lastName = [NSString stringWithCString:cstring encoding:1];
    
    NSLog(@"What is %@ %@'s age?", firstName, lastName);
    scanf("%i", &age);
}

-(void)printInfo {
    NSLog(@"%@ %@ is %i years old", firstName, lastName, age);
}

@end
