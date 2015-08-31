//
//  JustEmojisInterfaceController.m
//  HelloAppleWatch
//
//  Created by Joe Lucero on 8/31/15.
//  Copyright (c) 2015 Joe Lucero. All rights reserved.
//

#import "JustEmojisInterfaceController.h"

@interface JustEmojisInterfaceController ()
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *justEmojisLabel;

@end

@implementation JustEmojisInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    [self.justEmojisLabel setText:context];
    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



