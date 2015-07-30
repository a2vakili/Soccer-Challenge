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

// gravity

static const int gravity = 9.8;

// ball masses
static const int basketballMass = 1.5;
static const int soccerMass = 1.0;
static const int pingpongMass = 0.1;
static const int bowlingMass = 3.0;

// friction of ground

static const int woodFrictionCoefficient = 0.6;
static const int grassFrictionCoefficient = 0.3;
static const int iceFrictionCoefficient = 0.1;

// windstrength

static const int strongWind = -80;
static const int mediumWind = 40;
static const int lightWind = -20;

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
