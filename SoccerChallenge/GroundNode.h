//
//  GroundNode.h
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-27.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "SoccerTypes.h"


@interface GroundNode : SKSpriteNode

@property(nonatomic) SurfaceType type;

+(instancetype)surfaceOfType:(SurfaceType)type withSize: (CGSize)size;



@end
