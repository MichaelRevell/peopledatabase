//
//  main.m
//  PeopleDatabase
//
//  Created by Michael Revell on 10/2/13.
//  Copyright (c) 2013 Michael Revell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        char response;
        NSMutableArray *people = [[NSMutableArray alloc] init];
        
        do {
            Person *newPerson = [[Person alloc] init];
            
            [newPerson enterInfo];
            [people addObject:newPerson];
            
            NSLog(@"Do you want to enter another name? (y/n)");
            scanf("\n%c", &response);
        } while(response == 'y');
        
        NSLog(@"Number of people in the database: %li", [people count]);
        for (Person *onePerson in people) {
            [onePerson printInfo];
        }
    }
    return 0;
}

