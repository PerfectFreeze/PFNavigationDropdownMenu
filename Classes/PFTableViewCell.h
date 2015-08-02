//
//  PFTableViewCell.h
//  PFNavigationDropdownMenu
//
//  Created by Cee on 02/08/2015.
//  Copyright (c) 2015 Cee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PFConfiguration.h"

@interface PFTableViewCell : UITableViewCell
@property (nonatomic, strong) UIImageView *checkmarkIcon;
@property (nonatomic, assign) CGRect cellContentFrame;
@property (nonatomic, strong) PFConfiguration *configuration;

- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier
                configuration:(PFConfiguration *)configuration;
@end
