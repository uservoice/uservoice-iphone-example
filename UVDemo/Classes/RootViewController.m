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

- (UVConfig *)uvConfig {
    UVConfig *config = [UVConfig configWithSite:@"demo.uservoice.com" andKey:@"pZJocTBPbg5FN4bAwczDLQ" andSecret:@"Q7UKcxRYLlSJN4CxegUYI6t0uprdsSAGthRIDvYmI"];
    // config.topicId = 4656;
    // config.customFields = @{@"Type" : @"Support Request", @"Platform" : @"Mobile"};
    // config.showContactUs = NO;
    // config.showForum = NO;
    // config.showPostIdea = NO;
    // config.showKnowledgeBase = NO;
    // [UserVoice setDelegate:self];
    // [UVStyleSheet setStyleSheet:[[DemoStyleSheet alloc] init]];
    return config;
}

- (void)launchFeedback {
    [UserVoice presentUserVoiceInterfaceForParentViewController:self andConfig:[self uvConfig]];
}

- (void)contactUs {
    [UserVoice presentUserVoiceContactUsFormForParentViewController:self andConfig:[self uvConfig]];
}

- (void)viewForum {
    [UserVoice presentUserVoiceForumForParentViewController:self andConfig:[self uvConfig]];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)userVoiceWasDismissed {
    NSLog(@"UserVoice dismissed");
}

@end
