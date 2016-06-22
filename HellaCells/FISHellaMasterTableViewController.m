//
//  FISHellaMasterTableViewController.m
//  HellaCells
//
//  Created by Shea Furey-King on 6/21/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaMasterTableViewController.h"
#import "FISHellaDetailViewController.h"

@interface FISHellaMasterTableViewController ()

@end

@implementation FISHellaMasterTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.accessibilityIdentifier = @"Table"; //This is the accessibility ID
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

//Sets number of Sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

//Sets number of cells
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}


//This is where the cell is formatted
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"bigNumber"];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%lu",indexPath.row+1];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    FISHellaDetailViewController *detailVC = (FISHellaDetailViewController *)segue.destinationViewController;
    
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    
    detailVC.number = selectedIndexPath.row+1;
    
    
}


@end
