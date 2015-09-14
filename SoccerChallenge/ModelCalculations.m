//
//  ModelCalculations.m
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-29.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "ModelCalculations.h"
#import "SoccerTypes.h"

@interface ModelCalculations ()
-(double)frictionalForce;
-(double)acceleration;

@end

@implementation ModelCalculations

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.time = @(0);
        self.mass = @(1);
        self.frictionalCoefficient = @(0.1);
        self.airResistanceForce = @(80);
        self.distance = @(0);
        
    }
    return self;
}

-(double)calculateTime{
    double acceleration;
   ;
    acceleration = (-[self frictionalForce] - [self airResistanceDoubleValue])/[self massDoubleValue];
    double time = [self.time doubleValue];
    time = sqrt((2 * [self distanceDoubleValue])/ acceleration);
    
    return time;
}

-(double)calculateMass{
    double frictionalAcceleration = [self FrictionalCoefficientDoubleValue] * gravity;
    double mass = [self.mass doubleValue];
    mass = -[self.airResistanceForce doubleValue] / ([self acceleration] + frictionalAcceleration);
    
    return mass;
}

-(double)calculateDistance{
    double acceleration;
    acceleration = -[self frictionalForce] - [self airResistanceDoubleValue];
    double distance = [self distanceDoubleValue];
    distance = 0.5 * acceleration * pow([self timeDoubleValue], 2.0);
    return distance;
    
}
-(double)calculateairResistanceForce{
    double airResistanceForce = [self airResistanceDoubleValue];
    airResistanceForce = (-[self acceleration] * [self massDoubleValue]) - [self frictionalForce];
    return airResistanceForce;
    
}

-(double)calculateCoefficientOfFriction{
    double coefficientOfFriction = [self FrictionalCoefficientDoubleValue];
    coefficientOfFriction = ((-[self massDoubleValue] * [self acceleration]) - [self airResistanceDoubleValue])/ [self massDoubleValue] * gravity;
    return coefficientOfFriction;
}



-(double)frictionalForce{
    double frictionForce = [self.mass doubleValue] * gravity * [self.frictionalCoefficient doubleValue];
    return frictionForce;
}

-(double)acceleration{
    double acceleration;
    acceleration = (2 * [self.distance doubleValue]) / pow([self.time doubleValue], 2.0);
    return acceleration;
}

-(double)airResistanceDoubleValue{
    double airResistance = [self.airResistanceForce doubleValue];
    return airResistance;
}

-(double)distanceDoubleValue{
    double distance = [self.distance doubleValue];
    return distance;
}

-(double)massDoubleValue{
    double mass = [self.mass doubleValue];
    return mass;
}
-(double)FrictionalCoefficientDoubleValue{
    double coefficientOfFriction = [self.frictionalCoefficient doubleValue];
    return coefficientOfFriction;
}

-(double)timeDoubleValue{
    double time = [self.time doubleValue];
    return time;
}
@end
