//
//  HealthKitHelper.h
//  FitMonster
//
//  Created by Andrew Dulle on 7/13/16.
//  Copyright © 2016 Andrew Dulle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreMotion/CoreMotion.h> //Do I even need this?
#import <CoreMotion/CMPedometer.h>

@interface HealthKitHelper : NSObject

@property BOOL hasUserStartedAdventure;
@property NSDate* startDate;
@property NSString* startDateString;
@property NSDate* todaysDate;
@property CMPedometer* pedo;
@property int stepsTaken;


- (void)userAdventureStatus;

@end
