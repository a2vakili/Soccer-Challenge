//
//  GroundNode.m
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-27.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "GroundNode.h"

@implementation GroundNode

+(instancetype)surfaceOfSize: (CGSize)size{
    GroundNode *ground;
    
    ground = [self spriteNodeWithColor:[UIColor whiteColor] size:size];
    ground.name = @"ground";
    ground.position = CGPointMake(size.width, size.height);
    
    return ground;
}

-(void)setSurfaceType: (SurfaceType)type{
    switch (type) {
        case SurfaceTypeGrassSurface:
            self.color = [ UIColor greenColor];
            break;
        case SurfaceTypeIceSurface:
            self.color = [UIColor whiteColor];
            break;
        case SurfaceTypeWoodSurface:
            self.color = [UIColor brownColor];
            break;
            
        default:
            self.color = [UIColor blackColor];
            break;
    }
}

@end
