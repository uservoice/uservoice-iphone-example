
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

- (UVConfig *)uvConfig {
    UVConfig *config = [UVConfig configWithSite:@"demo.uservoice.com" andKey:@"pZJocTBPbg5FN4bAwczDLQ" andSecret:@"Q7UKcxRYLlSJN4CxegUYI6t0uprdsSAGthRIDvYmI"];
//    config.topicId = 4656;
//    config.customFields = [NSDictionary dictionaryWithObjectsAndKeys:@"Support Request", @"Type", @"Mobile", @"Platform", nil];
//    config.showContactUs = NO;
//    config.showForum = NO;
//    config.showPostIdea = NO;
//    config.showKnowledgeBase = NO;
    return config;
}

/**
 * Launch UserVoice without a user. The user will be able to log in or create an account from within the UserVoice UI.
 *
 * See the other factory methods on UVConfig for SSO and email/name/guid options.
 *
 * Generate your own API key and secret under Settings -> Channels -> iOS Apps in the UserVoice admin UI.
 */
- (void)launchFeedback {
//    Class uservoice = NSClassFromString(@"UserVoice");
//    if (uservoice != nil && [uservoice respondsToSelector:@selector(setExternalId:forScope:)]) {
//        [uservoice performSelector:@selector(setExternalId:forScope:) withObject:@"123" withObject:@"crittercism"];
//    }
    
//    [UserVoice setDelegate:self];
//    [UVStyleSheet setStyleSheet:[[DemoStyleSheet alloc] init]];
    [UserVoice presentUserVoiceInterfaceForParentViewController:self andConfig:[self uvConfig]];
}

/**
 * Launch the contact form directly. Does not require a user.
 */
- (void)contactUs {
//    [UserVoice setDelegate:self];
//    [UVStyleSheet setStyleSheet:[[DemoStyleSheet alloc] init]];
    [UserVoice presentUserVoiceContactUsFormForParentViewController:self andConfig:[self uvConfig]];
}

/**
 * Launch the new suggestion form directly. Will require the user to log in if a user is not passed to the config.
 */
- (void)viewForum {
//    [UserVoice setDelegate:self];
//    [UVStyleSheet setStyleSheet:[[DemoStyleSheet alloc] init]];
    [UserVoice presentUserVoiceForumForParentViewController:self andConfig:[self uvConfig]];
}

- (void)postIdea {
    [UserVoice presentUserVoiceNewIdeaFormForParentViewController:self andConfig:[self uvConfig]];
}

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
