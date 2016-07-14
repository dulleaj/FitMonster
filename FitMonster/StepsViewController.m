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
@property (weak, nonatomic) IBOutlet UIProgressView *userProgressBar;
@property (weak, nonatomic) IBOutlet UILabel *labelForProgressBar;

@end

@implementation StepsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
