//
//  PFTableView.m
//  PFNavigationDropdownMenu
//
//  Created by Cee on 02/08/2015.
//  Copyright (c) 2015 Cee. All rights reserved.
//

#import "PFTableView.h"
#import "PFTableViewCell.h"

@interface PFTableView ()
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, assign) NSUInteger selectedIndexPath;
@end


@implementation PFTableView
- (instancetype)initWithFrame:(CGRect)frame items:(NSArray *)items configuration:(PFConfiguration *)configuration
{
    self = [super initWithFrame:frame style:UITableViewStylePlain];
    if (self) {
        self.items = items;
        self.selectedIndexPath = 0;
        self.configuration = configuration;
        
        // Setup table view
        self.delegate = self;
        self.dataSource = self;
        self.backgroundColor = [UIColor clearColor];
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    }
    return self;
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.configuration.cellHeight;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.configuration.cellHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PFTableViewCell *cell = [[PFTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                                   reuseIdentifier:@"Cell"
                                                     configuration:self.configuration];
    cell.textLabel.text = self.items[indexPath.row];
    if (indexPath.row == self.selectedIndexPath) {
        cell.checkmarkIcon.hidden = NO;
    } else {
        cell.checkmarkIcon.hidden = YES;
    }
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.selectedIndexPath = indexPath.row;
    self.selectRowAtIndexPathHandler(indexPath.row);
    [self reloadData];
    PFTableViewCell *cell = (PFTableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    cell.contentView.backgroundColor = self.configuration.cellSelectionColor;
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    PFTableViewCell *cell = (PFTableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    cell.checkmarkIcon.hidden = YES;
    cell.contentView.backgroundColor = self.configuration.cellBackgroundColor;
}

@end
