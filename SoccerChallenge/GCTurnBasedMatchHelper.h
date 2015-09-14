//
//  GCTurnedBasedMatchMaker.h
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-30.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GameKit/GameKit.h>
@protocol GCTurnBasedMatchHelperDelegate
- (void)enterNewGame:(GKTurnBasedMatch *)match;
- (void)layoutMatch:(GKTurnBasedMatch *)match;
- (void)takeTurn:(GKTurnBasedMatch *)match;
- (void)recieveEndGame:(GKTurnBasedMatch *)match;
- (void)sendNotice:(NSString *)notice
          forMatch:(GKTurnBasedMatch *)match;
@end


@interface GCTurnBasedMatchHelper : NSObject<GKTurnBasedMatchmakerViewControllerDelegate>{
    BOOL gameCenterAvailable;
    BOOL userAuthenticated;
    UIViewController *presentingViewController;
    id <GCTurnBasedMatchHelperDelegate> delegate;
}


@property (assign, readonly) BOOL gameCenterAvailable;
@property(retain) GKTurnBasedMatch *currentMatch;



// New method
- (void)findMatchWithMinPlayers:(int)minPlayers
                     maxPlayers:(int)maxPlayers
                 viewController:(UIViewController *)viewController;

+ (GCTurnBasedMatchHelper *)sharedInstance;
- (void)authenticateLocalUser;
- (void)authenticationChanged;
// there is two sections that we need to talk about and we have to know how long does it take for the following to be able to get the
@end
