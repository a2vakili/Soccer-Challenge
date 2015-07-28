//
//  GameKitHelper.h
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-28.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GameKit/GameKit.h>

@interface GameKitHelper : NSObject

@property(nonatomic,readonly) UIViewController *authenticationViewController;
@property(nonatomic,readonly) NSError *lastError;


@end
