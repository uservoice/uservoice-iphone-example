//
//  RootViewController.h
//  UVDemo
//
//  Created by Scott Rutherford on 16/06/2011.
//  Copyright 2011 Uservoice. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UVDelegate.h"

@interface RootViewController : UIViewController<UVDelegate> {

}

- (IBAction)launchFeedback;
- (IBAction)contactUs;
- (IBAction)viewForum;
- (IBAction)postIdea;

@end
