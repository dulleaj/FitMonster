//
//  HealthKitHelper.m
//  FitMonster
//
//  Created by Andrew Dulle on 7/13/16.
//  Copyright © 2016 Andrew Dulle. All rights reserved.
//

#import "HealthKitHelper.h"

@implementation HealthKitHelper

- (void)userAdventureStatus{
    
    if (self.hasUserStartedAdventure != YES){
        
        //Sets that the user has started adventure for future method calls
        self.hasUserStartedAdventure = YES;
        
        //Setting start date to current date
        self.startDate = [[NSDate alloc] init];
        self.startDate = [NSDate date];
        
        //Declaring format for saving date
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"dd/MM/yyyy"];
        
        //Setting start date string to start date, that way I can save it in firebase as a string
        self.startDateString = [dateFormatter stringFromDate:self.startDate];
        NSLog(@"%@", self.startDateString);//*****CHANGE THIS TO SAVING THE DATE
        
        //Initializing pedometer
        self.pedo = [[CMPedometer alloc]init];
        
        //Call my method to get user step count
        [self getUserSteps];
                
    } else {
     
        //*****LOAD START DATE FROM FIREBASE
        
        //Using date formatter to set the start date using the saved string (startDateString)
        self.startDate = [[NSDate alloc] init];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        self.startDate = [dateFormatter dateFromString:self.startDateString];
        
        //Call my method to get user step count
        [self getUserSteps];
    }
}

- (void)getUserSteps {
    
    //Setting todaysDate to today's actual date
    self.todaysDate = [[NSDate alloc] init];
    self.todaysDate = [NSDate date];
    
    //Running a query that uses the start date and current date to pull the number of steps?
    [self.pedo queryPedometerDataFromDate:self.startDate toDate:self.todaysDate withHandler:^(CMPedometerData *pedometerData, NSError *error) {
        if (error)
        {
            NSLog(@"error: %@", error);
    
        } else {
            self.stepsTaken = [pedometerData.numberOfSteps intValue];
        }
    }];
}

//How will I save bool, and alloc/init for time?

@end
