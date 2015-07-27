//
//  PusheenNode.m
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-27.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "PusheenNode.h"

@implementation PusheenNode

+(instancetype) pusheenCharacter{
    
  PusheenNode *pusheen;
    pusheen = [self spriteNodeWithImageNamed:@"pusheen"];
    
    return pusheen;
}

@end
