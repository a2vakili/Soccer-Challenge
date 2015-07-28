//
//  BallNode.m
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-27.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "BallNode.h"



@implementation BallNode

+(instancetype) ballOfType: (CGSize)size{
    BallNode *ball;
    ball = [self spriteNodeWithImageNamed:@"basketball"];
    ball.position = CGPointMake(size.width, size.height);
    return ball;
    
}


-(void)setBallType:(BallType)type{
  
    switch (type) {
        case BallTypeBowlingBall:
            self.image = [UIImage imageNamed:@"bowlingball"];
            break;
        case BallTypePingPongBall:
            self.image = [UIImage imageNamed:@"pingpong"];
            break;
        case BallTypeSoccerBall:
            self.image = [UIImage imageNamed:@"soccer_ball"];
            break;
        default:
            self.image= [UIImage imageNamed:@"basketball"];
            break;
    }
    
    
    SKTexture *texture = [SKTexture textureWithImage:self.image];
    self.texture = texture;
}


    



@end
