//
//  BallNode.h
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-27.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

typedef NS_ENUM(NSUInteger, ballType){
    pingpongBall = 0,
    soccerBall = 1,
    basketBall = 2,
    bowlingBall = 3
};

@interface BallNode : SKSpriteNode



@property(nonatomic) ballType type;

+(instancetype) ballOfType: (ballType)type;

@end
