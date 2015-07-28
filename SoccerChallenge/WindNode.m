//
//  WindNode.m
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-27.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "WindNode.h"

@implementation WindNode

+(instancetype)windNode:(CGSize)size{
    WindNode *wind;
    wind = [self spriteNodeWithImageNamed:@"strongwind"];
    wind.position = CGPointMake(size.width, size.height);
    wind.name = @"wind";

    return wind;
}

-(void)setWindType: (WindType)type{
    switch (type) {
        case WindTypeLightWind:
            self.windImage = [UIImage imageNamed:@"lightwind"];
            break;
        case WindTypeMediumWind:
            self.windImage = [UIImage imageNamed:@"mediumwind"];
            break;
        default:
            self.windImage = [UIImage imageNamed:@"strongwind"];
            break;
    }
    SKTexture *texture = [SKTexture textureWithImage:self.windImage];
    self.texture = texture;
}



@end
