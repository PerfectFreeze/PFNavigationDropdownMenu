//
//  PFConfiguration.m
//  PFNavigationDropdownMenu
//
//  Created by Cee on 02/08/2015.
//  Copyright (c) 2015 Cee. All rights reserved.
//

#import "PFConfiguration.h"

@implementation PFConfiguration
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setDefaultValue];
    }
    return self;
}

- (void)setDefaultValue
{
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSURL *url = [bundle URLForResource:@"PFNavigationDropdownMenu" withExtension:@"bundle"];
    NSBundle *imageBundle = [NSBundle bundleWithURL:url];
    NSString *checkMarkImagePath = [imageBundle pathForResource:@"checkmark_icon" ofType:@"png"];
    NSString *arrowImagePath = [imageBundle pathForResource:@"arrow_down_icon" ofType:@"png"];
    
    self.cellHeight = 50;
    self.cellBackgroundColor = [UIColor whiteColor];
    self.cellTextLabelColor = [UIColor darkGrayColor];
    self.cellTextLabelFont = [UIFont fontWithName:@"HelveticaNeue-Bold" size:17];
    self.cellSelectionColor = [UIColor lightGrayColor];
    self.checkMarkImage = [UIImage imageWithContentsOfFile:checkMarkImagePath];
    self.animationDuration = 0.5;
    self.arrowImage = [UIImage imageWithContentsOfFile:arrowImagePath];
    self.arrowPadding = 15;
    self.maskBackgroundColor = [UIColor blackColor];
    self.maskBackgroundOpacity = 0.3;
}
@end
