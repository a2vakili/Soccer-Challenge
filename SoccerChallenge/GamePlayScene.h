//
//  GamePlayScene.h
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-27.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface GamePlayScene : SKScene

// properties for mass, friction, ball etc.

@property(nonatomic) NSInteger mass;




//-(void)setGround:(GroundNode *)ground;
-(void)setDistance:(NSInteger)distance;

@end
