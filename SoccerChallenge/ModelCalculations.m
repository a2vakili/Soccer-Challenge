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

-(double)calculateTime{
    double acceleration;
   ;
    acceleration = (-[self frictionalForce] - self.airResistanceForce)/self.mass;
    double time = self.time;
    time = sqrt((2 * self.distance)/ acceleration);
    
    return time;
}

-(double)calculateMass{
    double frictionalAcceleration = self.frictionalCoefficient * gravity;
    double mass = self.mass;
    mass = -self.airResistanceForce / ([self acceleration] + frictionalAcceleration);
    
    return mass;
}

-(double)calculateDistance{
    double acceleration;
    acceleration = -[self frictionalForce] - self.airResistanceForce;
    double distance = self.distance;
    double time = self.time;
    distance = 0.5 * acceleration * pow(time, 2.0);
    return distance;
    
}
-(double)calculateairResistanceForce{
    double airResistanceForce = self.airResistanceForce;
    airResistanceForce = (-[self acceleration] * self.mass) - [self frictionalForce];
    return airResistanceForce;
    
}

-(double)calculateCoefficientOfFriction{
    double coefficientOfFriction = self.frictionalCoefficient;
    coefficientOfFriction = ((-self.mass * [self acceleration]) - self.airResistanceForce)/ self.mass * gravity;
    return coefficientOfFriction;
}



-(double)frictionalForce{
    double frictionForce = self.mass * gravity * self.frictionalCoefficient;
    return frictionForce;
}

-(double)acceleration{
    double acceleration;
    acceleration = (2 * self.distance) / pow(self.time, 2.0);
    return acceleration;
}
@end
