//
//  GameTableViewController.m
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-27.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "GameTableViewController.h"
#import "GamePlayScene.h"
#import "SoccerTypes.h"
#import "SolveChallengeViewController.h"

@interface GameTableViewController ()
@property (weak, nonatomic) IBOutlet SKView *gamePlayScene;

@property (weak, nonatomic) IBOutlet UISlider *distanceSlider;
@property(nonatomic,strong) GamePlayScene *scene;
@property (weak, nonatomic) IBOutlet UILabel *timeDisplaylabel;
@property (weak, nonatomic) IBOutlet UISlider *timeSlider;
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;
@property(nonatomic) BOOL hidden;

@end

@implementation GameTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    SKView * skView = (SKView *)self.gamePlayScene;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    /* Sprite Kit applies additional optimizations to improve rendering performance */
    skView.ignoresSiblingOrder = YES;
    
    // Create and configure the scene.
    self.scene= [GamePlayScene sceneWithSize:skView.bounds.size];
    self.scene.scaleMode = SKSceneScaleModeAspectFill;
    // Present the scene.
    [self.scene setGroundType:SurfaceTypeIceSurface];
    [skView presentScene:self.scene];
    
    
    
    
    
    
}
- (IBAction)sliderAction:(id)sender {
    
    [self.scene setDistance:self.distanceSlider.value];
    
    double value = self.distanceSlider.value;
    self.distanceLabel.text = [NSString stringWithFormat:@"%0.1f meters",value];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return 6;
}

- (IBAction)startChallenge:(id)sender {
    
    SolveChallengeViewController *challenge = [[SolveChallengeViewController alloc]init];
    //challenge.varible1.text =
}




- (IBAction)surfaceSegmentedControl:(id)sender {
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
   if (selectedSegment == 0) {
       [self.scene setGroundType:SurfaceTypeIceSurface];
    }
   else if (selectedSegment == 1){
       [self.scene setGroundType:SurfaceTypeGrassSurface];
   }
   else {
        [self.scene setGroundType:SurfaceTypeWoodSurface];
   }
}

- (IBAction)ballSegmentedControl:(id)sender {
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    if (selectedSegment == 0) {
        [self.scene setBallType:BallTypeBasketBall];
    }
    else if(selectedSegment == 1){
        [self.scene setBallType:BallTypePingPongBall];
    }
    else if(selectedSegment == 2){
        [self.scene setBallType:BallTypeSoccerBall];
    }
    else {
        [self.scene setBallType:BallTypeBowlingBall];
    }
}

- (IBAction)timeSlider:(id)sender {
    
    double value = self.timeSlider.value;
    
    self.timeDisplaylabel.text = [NSString stringWithFormat:@"%0.1f seconds",value];
}
- (IBAction)windSegmentedControl:(id)sender {
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0) {
        [self.scene setWindType:WindTypeStrongWind];
    }
    else if(selectedSegment == 1){
        [self.scene setWindType:WindTypeMediumWind];
    }
    else{
        [self.scene setWindType:WindTypeLightWind];
        
    }
   
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.model.distance == nil && indexPath.row == 1) {
        return 0;
    }
    if (self.model.frictionalCoefficient == nil && indexPath.row == 2){
        return 0;
    }
    if (self.model.mass == nil && indexPath.row == 3){
        return 0;
    }
    if (self.model.time == nil && indexPath.row == 4){
        return 0;
    }
    if (self.model.airResistanceForce == nil && indexPath.row ==5){
        return 0;
    }
    return [super tableView:tableView heightForRowAtIndexPath:indexPath];
    
}




/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
