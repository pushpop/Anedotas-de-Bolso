//
//  modalAppDelegate.h
//  modal
//
//  Created by Push on 11/05/07.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class modalViewController;

@interface modalAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet modalViewController *viewController;

@end
