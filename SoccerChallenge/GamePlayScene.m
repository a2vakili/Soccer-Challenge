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
#import "SoccerTypes.h"

@interface GamePlayScene ()
@property(nonatomic,strong) SKSpriteNode *player;
@property(nonatomic,strong) GroundNode *ground;

@end

@implementation GamePlayScene


- (instancetype)initWithSize:(CGSize)size
{
    self = [super initWithSize:size];
    if (self) {
        
        SKSpriteNode *goalNode = [SKSpriteNode spriteNodeWithImageNamed:@"goal"];
        
        CGPoint goalPosition = CGPointMake(self.size.width-50, 50);
        
        goalNode.position = goalPosition;
        goalNode.size = CGSizeMake(50, 50);
        [self addChild:goalNode];
        
        self.player = [SKSpriteNode spriteNodeWithImageNamed:@"pusheen"];
        self.player.position = CGPointMake(0, 50);
        self.player.size = CGSizeMake(30, 30);
        
        [self addChild:self.player];
        
        self.ground = [GroundNode surfaceOfType:grassSurface withSize:CGSizeMake(self.frame.size.width + 150, 50)];
        self.ground.position = CGPointMake(10, 50);
        
        [self addChild:self.ground];
        
       
    }
    return self;
}


-(void)setDistance:(NSInteger)distance {
    
    NSInteger scale = (distance / self.frame.size.width) * self.frame.size.width * 2.32;
    self.player.position = CGPointMake(scale, 50);
    self.player.size = CGSizeMake(30, 30);
    
}

-(void)setGroundType:(SurfaceType)surface {
    if (surface ==  ) {
        // replace current ground with a grass ground
    
    } else {
        // replace current ground with ???
    }
    
    
    

}

//-(void)setGround:(GroundNode *)ground{
//    self.ground.position = CGPointMake(10, 50);
//}



@end
