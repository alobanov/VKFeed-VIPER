//
//  WallFeedViewController.m
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11/01/2016.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import "WallFeedViewController.h"

#import "WallFeedViewOutput.h"
#import "WallFeedAssembly.h"

#import "WallFeedAssembly.h"

@interface WallFeedViewController () <UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation WallFeedViewController

#pragma mark - Life cycle -

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [WallFeedAssembly assembly:self];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.output didTriggerViewReadyEvent];
}

#pragma mark - WallFeedViewInput -

- (void)setupInitialState
{
    self.title = @"V.I.P.E.R.";
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self.output.datasource;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 44.0;
}

- (void)showError:(NSError *)error
{
    NSLog(@"Error: %@", error);
}

- (void)reloadTableView
{
    [self.tableView reloadData];
}

#pragma mark - UITableViewDelegate -

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    WallModel *model = [self.output.datasource.items objectAtIndex:indexPath.row];
    NSLog(@"Text %@", model.text);
}

@end