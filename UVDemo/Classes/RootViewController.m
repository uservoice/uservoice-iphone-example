//
//  RootViewController.m
//  UVDemo
//
//  Created by Scott Rutherford on 16/06/2011.
//  Copyright 2011 Uservoice. All rights reserved.
//

#import "RootViewController.h"
#import "UserVoice.h"
#import "DemoStyleSheet.h"

@implementation RootViewController

/**
 * Launch UserVoice without a user.
 *
 * The user will be able to log in or create an account from within the UserVoice UI.
 *
 * Generate your own API key and secret under Settings -> Channels -> iOS Apps in the UserVoice admin UI.
 */
- (void)launchFeedback {
    // Uncomment this line to see an example of a custom stylesheet
//    [UVStyleSheet setStyleSheet:[[[DemoStyleSheet alloc] init] autorelease]];
    [UserVoice setDelegate:self];
    [UserVoice presentUserVoiceModalViewControllerForParent:self
													andSite:@"demo.uservoice.com"
													 andKey:@"pZJocTBPbg5FN4bAwczDLQ"
												  andSecret:@"Q7UKcxRYLlSJN4CxegUYI6t0uprdsSAGthRIDvYmI"];
}

/**
 * Launch UserVoice with an SSO token.
 *
 * Use this if you are using SSO to connect your users to UserVoice across multiple platforms.
 *
 * See http://developer.uservoice.com/docs/single-sign-on-how-to for further instructions.
 */
//- (void)launchFeedbackWithSso {
//    [UserVoice presentUserVoiceModalViewControllerForParent:self
//                                                    andSite:@"demo.uservoice.com"
//                                                     andKey:@"pZJocTBPbg5FN4bAwczDLQ"
//                                                  andSecret:@"Q7UKcxRYLlSJN4CxegUYI6t0uprdsSAGthRIDvYmI"
//                                                andSsoToken:@"GENERATED SSO TOKEN"];
//}
    
/**
 * Launch UserVoice with some user info.
 *
 * This will automatically find or create an account using the supplied info. This is a more convenient
 * option for standalone iOS apps.
 */
//- (void)launchFeedbackWithUserInfo {
//     [UserVoice presentUserVoiceModalViewControllerForParent:self
//                                                     andSite:@"demo.uservoice.com"
//                                                      andKey:@"pZJocTBPbg5FN4bAwczDLQ"
//                                                   andSecret:@"Q7UKcxRYLlSJN4CxegUYI6t0uprdsSAGthRIDvYmI"
//                                                    andEmail:@"USER EMAIL"
//                                              andDisplayName:@"USER NAME"
//                                                     andGUID:@"UNIQUE USER ID"];
//}

/**
 * UserVoice supports any orientation, but will not rotate after launching.
 */
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)userVoiceWasDismissed {
    NSLog(@"UserVoice dismissed");
}

@end
