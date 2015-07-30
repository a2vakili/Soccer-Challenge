//
//  GCTurnedBasedMatchMaker.h
//  SoccerChallenge
//
//  Created by Arsalan Vakili on 2015-07-30.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GameKit/GameKit.h>



@interface GCTurnBasedMatchHelper : NSObject<GKTurnBasedMatchmakerViewControllerDelegate>{
    BOOL gameCenterAvailable;
    BOOL userAuthenticated;
    UIViewController *presentingViewController;
}


@property (assign, readonly) BOOL gameCenterAvailable;



// New method
- (void)findMatchWithMinPlayers:(int)minPlayers
                     maxPlayers:(int)maxPlayers
                 viewController:(UIViewController *)viewController;

+ (GCTurnBasedMatchHelper *)sharedInstance;
- (void)authenticateLocalUser;

@end
