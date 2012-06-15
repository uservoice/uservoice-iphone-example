//
//  RootViewController.h
//  UVDemo
//
//  Created by Scott Rutherford on 16/06/2011.
//  Copyright 2011 Uservoice. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UVDelegate.h"
#import "UVConfig.h"

@interface RootViewController : UIViewController<UVDelegate> {
    UVConfig *uvConfig;
}

@property (nonatomic, retain) UVConfig *uvConfig;

- (IBAction)launchFeedback;
- (IBAction)contactUs;
- (IBAction)viewForum;

@end
