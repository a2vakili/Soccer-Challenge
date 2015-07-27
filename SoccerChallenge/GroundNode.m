//
//  GroundNode.m
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-27.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "GroundNode.h"

@implementation GroundNode

+(instancetype)surfaceOfType:(surfaceType)type withSize: (CGSize)size{
    GroundNode *ground;
    
    if (type == grassSurface) {
        ground = [self spriteNodeWithColor:[UIColor greenColor] size:size];
    }
    else if (type == iceSurface){
        ground = [self spriteNodeWithColor:[UIColor whiteColor] size: size];
    }
    
    else
        ground = [self spriteNodeWithColor:[UIColor brownColor] size:size];
    
    ground.name = @"ground";
    ground.position = CGPointMake(size.width, size.height);
    
    return ground;
}

@end
