//
//  SoccerTypes.h
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-27.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#ifndef SoccerChallenge_SoccerTypes_h
#define SoccerChallenge_SoccerTypes_h

// define enums etc.

typedef NS_ENUM(NSUInteger, SurfaceType){
    SurfaceTypeWoodSurface = 0,
    SurfaceTypeGrassSurface = 1,
    SurfaceTypeIceSurface = 2,
    
};

typedef NS_ENUM(NSUInteger, BallType){
    BallTypePingPongBall = 0,
    BallTypeSoccerBall = 1,
    BallTypeBasketBall = 2,
    BallTypeBowlingBall = 3
};

typedef NS_ENUM(NSUInteger, WindType){
    WindTypeStrongWind = 0,
    WindTypeMediumWind = 1,
    WindTypeLightWind = 2
};




#endif
