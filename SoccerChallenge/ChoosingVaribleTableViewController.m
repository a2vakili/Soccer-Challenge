//
//  ChoosingVaribleTableViewController.m
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-30.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "ChoosingVaribleTableViewController.h"
#import "ModelCalculations.h"
#import "GameTableViewController.h"

@implementation ChoosingVaribleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    
    if (indexPath.row == 0) {
        self.tableView.userInteractionEnabled = NO;
    }
    
    [self performSegueWithIdentifier:@"setUpChallenge" sender:nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // Return the number of rows in the section.
    return 6;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *index = [self.tableView indexPathForSelectedRow];
    
    ModelCalculations *object = [[ModelCalculations alloc]init];

    if (index.row == 1) {
        object.mass = nil;
    }
    if (index.row == 2){
        object.distance = nil;
    }
    if (index.row == 3){
        object.frictionalCoefficient = nil;
    }
    if (index.row == 4) {
        object.time = nil;
    }
    if (index.row == 5) {
        object.airResistanceForce = nil;
    }
    
    
    GameTableViewController *desinationController = [segue destinationViewController];
    [desinationController setModel:object];
    
    

}

@end
