//
//  ModelCalculations.h
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-29.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ModelCalculations : NSObject


@property(nonatomic,strong) NSNumber *time;


@property(nonatomic,strong) NSNumber *airResistanceForce;
@property(nonatomic,strong) NSNumber *frictionalCoefficient;
@property(nonatomic,strong) NSNumber *distance;
@property(nonatomic,strong) NSNumber *mass;

-(double)calculateTime;
-(double)calculateMass;
-(double)calculateDistance;
-(double)calculateairResistanceForce;
-(double)calculateCoefficientOfFriction;




@end
