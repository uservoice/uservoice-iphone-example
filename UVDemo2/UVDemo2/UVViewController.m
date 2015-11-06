//
//  UVViewController.m
//  UVDemo2
//
//  Created by Austin Taylor on 9/30/13.
//  Copyright (c) 2013 UserVoice. All rights reserved.
//

#import "UVViewController.h"
#import "UserVoice.h"

@implementation UVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UVConfig *config = [UVConfig configWithSite:@"uservoice.uservoice.com"];

//    config.forumId = 9999999;
    // Set this up once when your application launches
//    UVConfig *config = [UVConfig configWithSite:@"xomapps.uservoice.com" andKey:@"3slKZWSQq5xfwKQDRKbA" andSecret:@"UyoEDvKnEiPpIApA8l8VEbcfRRIgKAwmrgbpzQaZhuU"];
//    config.forumId = 179112;
//    [config setSsoToken:@"DIaCvpUhCjfUzByCa2YsDP+J7Qk1sViyGKpumIp9Ud19XCYI4LibxfsA9arRDDCCnchoiohnqnF4Iy0wq2+JLfDh5+PK67oHKlLVnioN0+YnbbIUl5/+j3oSl390en3wiGDw3lMn5sYaH5/a00MD3h3iypAe22YYwUKQOE6LXK2nx2eElf7HiC0eG0dB1MrlFHsVrvaz+PtgMpSZ9xlViTSSu0McKwb1q4/jTalaLXM=\\"];
    [UserVoice setDelegate:self];
    [UVStyleSheet instance].preferredStatusBarStyle = UIBarStyleDefault;
    
    [UserVoice initialize:config];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


- (IBAction)launchUserVoice:(id)sender {
    [UserVoice presentUserVoiceInterfaceForParentViewController:self];
}

- (IBAction)launchForum:(id)sender {
    [UserVoice presentUserVoiceForumForParentViewController:self];
}

- (IBAction)launchIdeaForm:(id)sender {
    [UserVoice presentUserVoiceNewIdeaFormForParentViewController:self];
}

- (IBAction)launchTicketForm:(id)sender {
    [UserVoice presentUserVoiceContactUsFormForParentViewController:self];
}

- (void)userVoiceWasDismissed {
    NSLog(@"here");
}


@end
