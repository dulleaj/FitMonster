//
//  StepsViewController.m
//  FitMonster
//
//  Created by Andrew Dulle on 7/13/16.
//  Copyright © 2016 Andrew Dulle. All rights reserved.
//

#import "StepsViewController.h"
#import "HealthKitHelper.h"

@interface StepsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *monsterImageView;
@property (strong, nonatomic) IBOutlet UIProgressView *userProgressViewBar;
@property (weak, nonatomic) IBOutlet UILabel *labelForProgressBar;
@property HealthKitHelper* user;

@end

@implementation StepsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.user = [[HealthKitHelper alloc] init];
    [self.user userAdventureStatus];
    
    self.userProgressViewBar = [[UIProgressView alloc] init];
    //float userProgressFloat = self.user.stepsTaken/100000.0;
    float userProgressFloat = .7;
    self.userProgressViewBar.progress = userProgressFloat;//PROGRESS WON'T SHOW

    self.labelForProgressBar.text = [NSString stringWithFormat:@"Steps Taken: %d", self.user.stepsTaken];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
