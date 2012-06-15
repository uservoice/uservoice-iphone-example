//
//  RootViewController.m
//  UVDemo
//
//  Created by Scott Rutherford on 16/06/2011.
//  Copyright 2011 Uservoice. All rights reserved.
//

#import "RootViewController.h"
#import "UserVoice.h"
#import "UVConfig.h"
#import "DemoStyleSheet.h"

@implementation RootViewController

@synthesize uvConfig;

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // Uncomment this line to use a custom stylesheet
    // [UVStyleSheet setStyleSheet:[[[DemoStyleSheet alloc] init] autorelease]];
    
    // Uncomment this line if you want to be notified when UserVoice is dismissed
    // [UserVoice setDelegate:self];
    
    // Configure UserVoice without any user identification. The user wiill be able to
    // sign in or create an account from within UserVoice. You can generate your own
    // API key and secret from Settings -> Channels -> iOS Apps in the UserVoice admin UI.
    self.uvConfig = [UVConfig configWithSite:@"demo.uservoice.com"
                                      andKey:@"pZJocTBPbg5FN4bAwczDLQ"
                                   andSecret:@"Q7UKcxRYLlSJN4CxegUYI6t0uprdsSAGthRIDvYmI"];
    
    // Configure UserVoice with a user's name, email, and guid. Guid can be whatever you
    // want, but must be unique per user.
    // self.uvConfig = [UVConfig configWithSite:@"demo.uservoice.com"
    //                                   andKey:@"pZJocTBPbg5FN4bAwczDLQ"
    //                                andSecret:@"Q7UKcxRYLlSJN4CxegUYI6t0uprdsSAGthRIDvYmI"
    //                                 andEmail:@"test@example.com"
    //                           andDisplayName:@"Test User"
    //                                  andGUID:@"1234"];

    // Configure UserVoice with a UserVoice SSO token. See http://developer.uservoice.com/docs/single-sign-on-how-to
    // for instructions on generating a token.
    // self.uvConfig = [UVConfig configWithSite:@"demo.uservoice.com"
    //                                   andKey:@"pZJocTBPbg5FN4bAwczDLQ"
    //                                andSecret:@"Q7UKcxRYLlSJN4CxegUYI6t0uprdsSAGthRIDvYmI"
    //                              andSSOToken:@"XXXX"];
}

// Launch the standard UserVoice UI.
- (void)launchFeedback {
    [UserVoice presentUserVoiceInterfaceForParentViewController:self
                                                      andConfig:self.uvConfig];
}

// Launch UserVoice and go directly to the contact screen.
- (void)contactUs {
    [UserVoice presentUserVoiceContactUsFormForParentViewController:self
                                                          andConfig:self.uvConfig];
}

// Launch UserVoice and go directly to the forum.
- (void)viewForum {
    [UserVoice presentUserVoiceForumForParentViewController:self
                                                  andConfig:self.uvConfig];
}

// UserVoice supports any orientation, but currently will not rotate after launching.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)userVoiceWasDismissed {
    NSLog(@"UserVoice dismissed");
}

- (void)dealloc {
    self.uvConfig = nil;
    [super dealloc];
}

@end
