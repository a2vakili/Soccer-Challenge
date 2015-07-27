//
//  BallNode.m
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-27.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "BallNode.h"

@implementation BallNode

+(instancetype) ballOfType: (ballType)type{
    BallNode *ball;
    
    if (type == pingpongBall) {
        ball = [self spriteNodeWithImageNamed:@"pingpongball"];
    }
    else if (type == soccerBall){
        ball = [self spriteNodeWithImageNamed:@"soccer_ball"];
    }
    else if (type == basketBall){
        ball = [self spriteNodeWithImageNamed:@"basketball"];
    }
    else
        ball = [self spriteNodeWithImageNamed:@"bowlingball"];
    
    return ball;
    
}


@end
