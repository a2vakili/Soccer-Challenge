//
//  BallNode.h
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-27.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "SoccerTypes.h"



@interface BallNode : SKSpriteNode


@property(nonatomic,strong) UIImage *image;
@property(nonatomic) BallType type;

+(instancetype) ballOfType: (CGSize)size;
-(void)setBallType:(BallType)type;

@end
