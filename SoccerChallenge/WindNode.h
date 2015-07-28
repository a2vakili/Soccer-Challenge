//
//  WindNode.h
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-27.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "SoccerTypes.h"


@interface WindNode : SKSpriteNode

@property(nonatomic,strong) UIImage *windImage;

-(void)setWindType: (WindType)type;
+(instancetype)windNode:(CGSize)size;

@end
