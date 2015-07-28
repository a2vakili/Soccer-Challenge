//
//  GamePlayScene.m
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-27.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "GamePlayScene.h"
#import "PusheenNode.h"
#import "GroundNode.h"
#import "BallNode.h"
#import "WindNode.h"


@interface GamePlayScene ()
@property(nonatomic,strong) SKSpriteNode *player;
@property(nonatomic,strong) GroundNode *ground;
@property(nonatomic) CGSize sizeOfGround;
@property(nonatomic,strong) BallNode *ball;
@property(nonatomic,strong) WindNode *wind;


@end

@implementation GamePlayScene


- (instancetype)initWithSize:(CGSize)size
{
    self = [super initWithSize:size];
    if (self) {
        
        SKSpriteNode *goalNode = [SKSpriteNode spriteNodeWithImageNamed:@"goalImage"];
        
        CGPoint goalPosition = CGPointMake(18, 50);
        
        goalNode.position = goalPosition;
        goalNode.size = CGSizeMake(30, 50);
        [self addChild:goalNode];
        
        self.player = [SKSpriteNode spriteNodeWithImageNamed:@"pusheen"];
        self.player.position = CGPointMake(50, 50);
        self.player.size = CGSizeMake(30, 30);
        
        [self addChild:self.player];
        
        self.sizeOfGround = CGSizeMake( 600, 50);
        
        self.ground = [GroundNode surfaceOfSize:self.sizeOfGround];
        self.ground.position = CGPointMake(10, 50);
        
        [self addChild:self.ground];
        
        self.ball = [BallNode ballOfType:CGSizeMake(280, 50)];
        self.ball.size = CGSizeMake(20, 20);
        
        [self addChild:self.ball];
        
        self.wind = [WindNode windNode:CGSizeMake(140, 140)];
        self.wind.size = CGSizeMake(140, 40);
        
        [self addChild:self.wind];
        
       
    }
    return self;
}


-(void)setDistance:(NSInteger)distance {
    
    NSInteger scale = (distance * 2.32);
    self.player.position = CGPointMake(50 + scale, 50);
    self.player.size = CGSizeMake(30, 30);
    
}

-(void)setGroundType:(SurfaceType)surface {
    [self.ground setSurfaceType:surface];
}

-(void)setBallType:(BallType)ball{
    [self.ball setBallType:ball];
}

-(void)setWindType:(WindType)wind{
    [self.wind setWindType:wind];
}

@end
