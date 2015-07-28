//
//  GamePlayScene.h
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-27.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "SoccerTypes.h"

@interface GamePlayScene : SKScene

// properties for mass, friction, ball etc.

@property(nonatomic) NSInteger mass;



-(void)setGroundType:(SurfaceType)surface;

-(void)setDistance:(NSInteger)distance;

-(void)setBallType:(BallType)ball;

-(void)setWindType:(WindType)wind;

@end
