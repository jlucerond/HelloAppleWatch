//
//  InterfaceController.m
//  HelloAppleWatch WatchKit Extension
//
//  Created by Joe Lucero on 8/31/15.
//  Copyright (c) 2015 Joe Lucero. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *myLabel;
@property (strong, nonatomic) NSArray *people;
@property (strong, nonatomic) NSArray *nature;
@property (strong, nonatomic) NSArray *objects;
@property (strong, nonatomic) NSArray *places;
@property (strong, nonatomic) NSArray *symbols;

@property (strong, nonatomic) NSString *myString;

@end


@implementation InterfaceController

- (IBAction)newFortunePressed {
    [self pushControllerWithName:@"justEmojis" context:self.myString];
    
    [self generateNewString];

}

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)generateNewString {
    NSString *peopleIndex = self.people[arc4random_uniform((int)self.people.count)];
    NSString *natureIndex = self.nature[arc4random_uniform((int)self.nature.count)];
    NSString *objectsIndex = self.objects[arc4random_uniform((int)self.objects.count)];
    NSString *placesIndex = self.places[arc4random_uniform((int)self.places.count)];
    NSString *symbolsIndex = self.symbols[arc4random_uniform((int)self.symbols.count)];
    
    self.myString = [NSString stringWithFormat:@"%@%@%@%@%@", peopleIndex, natureIndex, objectsIndex, placesIndex, symbolsIndex];
    
    [self.myLabel setText:self.myString];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];

    self.people = [[NSArray alloc] initWithObjects:@"😀",@"😂",@"😕",@"😳",@"💑",@"💁", nil];
    self.nature = [[NSArray alloc] initWithObjects:@"🐮",@"🐰",@"🐘",@"🐷",@"🐶",@"🐋", nil];
    self.objects = [[NSArray alloc] initWithObjects:@"💰",@"⏳",@"👓",@"💊",@"📆",@"📝", nil];
    self.places = [[NSArray alloc] initWithObjects:@"🚙",@"✈️",@"🚀",@"⛵️",@"🗿",@"🏡", nil];
    self.symbols = [[NSArray alloc] initWithObjects:@"🅰",@"🔞",@"🏧",@"🚼",@"♻️",@"💭", nil];
    
    [self generateNewString];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



