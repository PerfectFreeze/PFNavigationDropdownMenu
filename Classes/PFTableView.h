//
//  PFTableView.h
//  PFNavigationDropdownMenu
//
//  Created by Cee on 02/08/2015.
//  Copyright (c) 2015 Cee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PFConfiguration.h"

@interface PFTableView : UITableView <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) PFConfiguration *configuration;
@property (nonatomic, copy) void(^selectRowAtIndexPathHandler)(NSUInteger indexPath);

- (instancetype)initWithFrame:(CGRect)frame items:(NSArray *)items configuration:(PFConfiguration *)configuration;
@end
