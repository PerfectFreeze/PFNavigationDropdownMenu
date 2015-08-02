//
//  PFTableCellContentView.m
//  PFNavigationDropdownMenu
//
//  Created by Cee on 02/08/2015.
//  Copyright (c) 2015 Cee. All rights reserved.
//

#import "PFTableCellContentView.h"

@implementation PFTableCellContentView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
    CGContextRef context = UIGraphicsGetCurrentContext();
    // Set separator color of dropdown menu based on barStyle
    if ([UINavigationBar appearance].barStyle == UIBarStyleDefault) {
        CGContextSetRGBStrokeColor(context, 0, 0, 0, 0.4);
    } else {
        CGContextSetRGBStrokeColor(context, 1, 1, 1, 0.3);
    }
    CGContextSetLineWidth(context, 1);
    CGContextMoveToPoint(context, 0, self.bounds.size.height);
    CGContextAddLineToPoint(context, self.bounds.size.width, self.bounds.size.height);
    CGContextStrokePath(context);
}

@end
